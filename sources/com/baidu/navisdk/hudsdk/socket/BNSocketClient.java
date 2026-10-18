package com.baidu.navisdk.hudsdk.socket;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.baidu.lbsapi.auth.navisdkhud.LBSAuthManagerListener;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.baidu.navisdk.hudsdk.BNRemoteMessage;
import com.baidu.navisdk.hudsdk.HUDModuleManager;
import com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback;
import com.baidu.navisdk.hudsdk.util.LogUtil;
import com.baidu.navisdk.hudsdk.util.SDKAuthManager;
import com.tencent.taiutils.TimeUtils;
import com.tencent.wecarbase.config.SDKConfig;

/* loaded from: /home/user/work/dex/classes.dex */
public class BNSocketClient {
    private String mAppName;
    private String mAppVer;
    private LBSAuthManagerListener mAuthListener;
    private Runnable mCheckAuthRunnable;
    private HUDSDkEventCallback.OnConnectCallback mConnectCallback;
    private Handler mConnectMgrHandler;
    private HandlerThread mConnectMgrThread;
    private Context mContext;
    private Runnable mHeartAliveRunnable;
    private boolean mIsConnected;
    private boolean mIsLBSAuthSuccess;
    private boolean mIsReConnecting;
    private int mIsRetryConnectNum;
    private SocketReadThread mReader;
    private boolean mSDKIsInit;
    private int mServerType;
    private BNRemoteClientSocket mSocket;
    private SocketWriteHandler mWriter;

    private BNSocketClient() {
        this.mIsRetryConnectNum = 0;
        this.mCheckAuthRunnable = new Runnable() { // from class: com.baidu.navisdk.hudsdk.socket.BNSocketClient.1
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.e(BNRemoteConstants.MODULE_TAG, "BNRemoteVistor Check Auth Timer RUNNING, not receive auth response CLOSED,CONTINUE CONNECT");
                if (BNSocketClient.this.mConnectMgrHandler != null) {
                    BNSocketClient.this.mConnectMgrHandler.sendMessage(BNSocketClient.this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_CONTINUE_CONNECT));
                }
            }
        };
        this.mHeartAliveRunnable = new Runnable() { // from class: com.baidu.navisdk.hudsdk.socket.BNSocketClient.2
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.e(BNRemoteConstants.MODULE_TAG, "BNRemoteVistor Heart Alive Timer RUNNING, Send PING Packet");
                if (BNSocketClient.this.mWriter == null || BNSocketClient.this.mConnectMgrHandler == null) {
                    return;
                }
                BNSocketClient.this.mWriter.sendMessage(BNSocketClient.this.mWriter.obtainMessage(10));
                BNSocketClient.this.mConnectMgrHandler.postDelayed(this, 20000L);
            }
        };
        this.mConnectCallback = null;
        this.mSocket = new BNRemoteClientSocket();
        this.mServerType = 0;
        this.mSDKIsInit = false;
        this.mIsLBSAuthSuccess = false;
    }

    /* synthetic */ BNSocketClient(BNSocketClient bNSocketClient) {
        this();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class LayzerHolder {
        private static final BNSocketClient mInstance = new BNSocketClient(null);

        private LayzerHolder() {
        }
    }

    public static BNSocketClient getInstance() {
        return LayzerHolder.mInstance;
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [com.baidu.navisdk.hudsdk.socket.BNSocketClient$5] */
    public void init(Context context, String str, String str2, int i, HUDSDkEventCallback.OnRGInfoEventCallback onRGInfoEventCallback, HUDSDkEventCallback.OnConnectCallback onConnectCallback) {
        if (this.mSDKIsInit) {
            return;
        }
        this.mSDKIsInit = true;
        this.mContext = context;
        this.mAppName = str;
        this.mAppVer = str2;
        this.mServerType = i;
        this.mConnectCallback = onConnectCallback;
        HUDModuleManager.setContext(context);
        this.mAuthListener = new LBSAuthManagerListener() { // from class: com.baidu.navisdk.hudsdk.socket.BNSocketClient.3
            @Override // com.baidu.lbsapi.auth.navisdkhud.LBSAuthManagerListener
            public void onAuthResult(int i2, String str3) {
                if (BNSocketClient.this.mConnectCallback != null) {
                    BNSocketClient.this.mConnectCallback.onEndLBSAuth(i2, str3);
                    if (i2 != 0) {
                        BNSocketClient.this.mConnectCallback.onClose(HUDSDkEventCallback.OnConnectCallback.CLOSE_LBS_AUTH_FALIED, "lbs auth FAILED");
                        BNSocketClient.this.unInit();
                        LogUtil.e(SDKConfig.FROM_AUTH, "LBS Auth FAILED, reason = " + str3);
                        LogUtil.f(SDKConfig.FROM_AUTH, "LBS Auth FAILED, reason = " + str3);
                        return;
                    }
                    BNSocketClient.this.mIsLBSAuthSuccess = true;
                    LogUtil.e(SDKConfig.FROM_AUTH, "LBS Auth SUCCESS, reason = " + str3);
                }
            }
        };
        this.mConnectMgrThread = new HandlerThread("connect");
        this.mConnectMgrThread.start();
        this.mConnectMgrHandler = new Handler(this.mConnectMgrThread.getLooper()) { // from class: com.baidu.navisdk.hudsdk.socket.BNSocketClient.4
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message == null) {
                    return;
                }
                int i2 = message.what;
                if (i2 == 5555) {
                    BNSocketClient.this.onNetworkChanged();
                    return;
                }
                switch (i2) {
                    case SocketConstant.SOCKET_MSG_CONNECT /* 20480 */:
                        BNSocketClient.this.initConnect();
                        return;
                    case SocketConstant.SOCKET_MSG_RECONECT /* 20481 */:
                        BNSocketClient.this.reConnect(((Integer) message.obj).intValue());
                        return;
                    case SocketConstant.SOCKET_MSG_CONTINUE_CONNECT /* 20482 */:
                        LogUtil.e(BNRemoteConstants.MODULE_TAG, "Connect Manager Thread Receive MSG_CONTINUE_CONNECT");
                        BNSocketClient.this.connectForAuthFailed();
                        return;
                    case SocketConstant.SOCKET_MSG_READ /* 20483 */:
                        BNSocketClient.this.onReceiveData(message.arg1, message.obj);
                        return;
                    case SocketConstant.SOCKET_MSG_SEND /* 20484 */:
                        BNSocketClient.this.onSendData(((Integer) message.obj).intValue());
                        return;
                    case SocketConstant.SOCKET_MSG_PONG /* 20485 */:
                        BNSocketClient.this.onPong();
                        return;
                    case SocketConstant.SOCKET_MSG_AUTH_RESPONSE /* 20486 */:
                        BNSocketClient.this.onAuthResponse(message);
                        return;
                    case SocketConstant.SOCKET_MSG_CLOSE /* 20487 */:
                        BNSocketClient.this.onClose();
                        return;
                    default:
                        return;
                }
            }
        };
        SocketDataParser.getInstance().init(onRGInfoEventCallback, this.mConnectMgrHandler);
        NetworkStatusListener.registerMessageHandler(this.mConnectMgrHandler);
        new Thread("HUD Auth Thread") { // from class: com.baidu.navisdk.hudsdk.socket.BNSocketClient.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (BNSocketClient.this.mConnectCallback != null) {
                    BNSocketClient.this.mConnectCallback.onStartLBSAuth();
                }
                SDKAuthManager.getInstance().authenticate(BNSocketClient.this.mAuthListener);
            }
        }.start();
    }

    public void unInit() {
        this.mContext = null;
        this.mAppName = null;
        this.mAppVer = null;
        this.mServerType = 0;
        this.mConnectCallback = null;
        this.mIsConnected = false;
        this.mIsReConnecting = false;
        if (this.mConnectMgrThread != null) {
            this.mConnectMgrThread.getLooper().quit();
            this.mConnectMgrThread.quit();
        }
        this.mConnectMgrThread = null;
        this.mConnectMgrHandler = null;
        this.mSocket.setServerIPAddr("");
        SocketDataParser.getInstance().unInit();
        this.mSDKIsInit = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSendData(int i) {
        if (i == 1) {
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_RECONECT, 1));
            }
        } else if (i == 2) {
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_RECONECT, 2));
            }
        } else if (i == 1024) {
            close(HUDSDkEventCallback.OnConnectCallback.CLOSE_PROTOCOL_ERROR, "protocol error");
        } else if (i == 0) {
            LogUtil.e(BNRemoteConstants.MODULE_TAG, "BNRemoteVistor..........onSend()....SOCKET_SEND_SUCCESS");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReceiveData(int i, Object obj) {
        if (i == 17) {
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_RECONECT, 17));
            }
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "read timeout!!! " + obj.toString());
            return;
        }
        if (i == 19) {
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_RECONECT, 19));
            }
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "read error!!! " + obj.toString());
            return;
        }
        if (i == 1024) {
            close(HUDSDkEventCallback.OnConnectCallback.CLOSE_PROTOCOL_ERROR, "protocol error");
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "protocol error!!! " + obj.toString());
            return;
        }
        if (i == 1025) {
            close(HUDSDkEventCallback.OnConnectCallback.CLOSE_PROTOCOL_ERROR, "data is too long!!!");
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "data is too long!!!  " + obj.toString());
            return;
        }
        if (i == 18) {
            close(402, "server error");
            LogUtil.e(BNRemoteConstants.MODULE_TAG, "server error");
        } else if (i == 16) {
            SocketDataParser.getInstance().parseBinaryData((byte[]) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPong() {
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "onPong()");
        LogUtil.f(BNRemoteConstants.MODULE_TAG, "onPong()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClose() {
        close(HUDSDkEventCallback.OnConnectCallback.CLOSE_NORMAL, "server exit");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAuthResponse(Message message) {
        this.mConnectMgrHandler.removeCallbacks(this.mCheckAuthRunnable);
        this.mSocket.resetPortPoolIndex();
        if (message.arg1 == 32) {
            sendPing();
            if (this.mConnectCallback != null) {
                this.mConnectCallback.onAuth((BNRemoteMessage.BNRGAuthSuccess) message.obj);
                return;
            }
            return;
        }
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "auth FAILED");
        LogUtil.f(BNRemoteConstants.MODULE_TAG, "auth FAILED");
        close(401, "auth failed");
    }

    @Deprecated
    public void open(String str) {
        if (!this.mIsLBSAuthSuccess) {
            if (this.mConnectCallback != null) {
                this.mConnectCallback.onClose(HUDSDkEventCallback.OnConnectCallback.CLOSE_WAIT_LBS_AUTH_RESULT, "lbs auth is not finished");
            }
        } else {
            this.mSocket.setServerIPAddr(str);
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_CONNECT));
            }
        }
    }

    public void open() {
        if (!this.mIsLBSAuthSuccess) {
            if (this.mConnectCallback != null) {
                this.mConnectCallback.onClose(HUDSDkEventCallback.OnConnectCallback.CLOSE_WAIT_LBS_AUTH_RESULT, "lbs auth is not finished");
            }
        } else if (this.mConnectMgrHandler != null) {
            this.mConnectMgrHandler.sendMessage(this.mConnectMgrHandler.obtainMessage(SocketConstant.SOCKET_MSG_CONNECT));
        }
    }

    public void setServerIPAddr(String str) {
        this.mSocket.setServerIPAddr(str);
    }

    public boolean isConnect() {
        return this.mSocket.isConnected();
    }

    private int connect() {
        int open;
        if (this.mIsConnected) {
            return 0;
        }
        if (this.mContext == null || this.mAppName == null || this.mAppVer == null) {
            return 1;
        }
        if (this.mServerType == 0) {
            open = this.mSocket.open(2);
            if (open != 0) {
                open = this.mSocket.open(1);
            }
        } else {
            open = this.mSocket.open(this.mServerType);
        }
        if (open == 0 && this.mSocket.isConnected()) {
            SocketDataParser.getInstance().start();
            createReader();
            createWriter();
            sendAuth(this.mAppName, this.mAppVer);
            if (this.mConnectMgrHandler != null) {
                this.mConnectMgrHandler.postDelayed(this.mCheckAuthRunnable, TimeUtils.MINUTE_MILLIS);
            }
            this.mIsConnected = true;
        }
        return open;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNetworkChanged() {
        if ("".equalsIgnoreCase(this.mSocket.getServerIPAddr())) {
            return;
        }
        if (NetworkUtils.isWifiConnected(this.mContext)) {
            if (this.mSocket.isConnected()) {
                return;
            }
            close();
            initConnect();
            return;
        }
        close(HUDSDkEventCallback.OnConnectCallback.CLOSE_NETWORK_NOT_OPEN, "wifi is not connected");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initConnect() {
        String serverIPAddr = this.mSocket.getServerIPAddr();
        if (!NetworkUtils.isNetworkAvailable(this.mContext) && !"".equalsIgnoreCase(serverIPAddr) && !"127.0.0.1".equalsIgnoreCase(serverIPAddr)) {
            close(HUDSDkEventCallback.OnConnectCallback.CLOSE_NETWORK_NOT_OPEN, "wifi is not connected");
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "wifi is not connected");
        } else if (connect() != 0) {
            close(402, "server is not open");
        } else {
            this.mConnectCallback.onConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectForAuthFailed() {
        close();
        if (connect() != 0) {
            close(402, "server is not open");
        } else {
            this.mConnectCallback.onConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reConnect(int i) {
        if (this.mIsReConnecting) {
            return;
        }
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "reConnect() START");
        LogUtil.f(BNRemoteConstants.MODULE_TAG, "reConnect() START");
        this.mIsReConnecting = true;
        this.mSocket.resetPortPoolIndex();
        close();
        this.mIsRetryConnectNum = 0;
        while (true) {
            if (this.mIsRetryConnectNum >= 3) {
                break;
            }
            if (connect() == 0) {
                this.mConnectCallback.onReConnected();
                this.mIsRetryConnectNum = 0;
                break;
            }
            this.mIsRetryConnectNum++;
        }
        if (this.mIsRetryConnectNum >= 3) {
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "reConnect FAILED!");
            if (i == 17) {
                close(HUDSDkEventCallback.OnConnectCallback.CLOSE_SEND_TIMEOUT, "read timeout");
            } else if (i == 1) {
                close(HUDSDkEventCallback.OnConnectCallback.CLOSE_READ_TIMEOUT, "send timeout");
            } else if (i == 2) {
                close(HUDSDkEventCallback.OnConnectCallback.CLOSE_SOCKET_ERROR, "send error");
            } else if (i == 19) {
                close(HUDSDkEventCallback.OnConnectCallback.CLOSE_SOCKET_ERROR, "read error");
            } else {
                close(402, "server error");
            }
        } else {
            this.mConnectCallback.onConnected();
            LogUtil.f(BNRemoteConstants.MODULE_TAG, "reConnect SUCCESS!");
        }
        this.mIsReConnecting = false;
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "reConnect() END");
        LogUtil.f(BNRemoteConstants.MODULE_TAG, "reConnect() END");
    }

    public void close(int i, String str) {
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "close reasonMsg = " + str);
        LogUtil.f(BNRemoteConstants.MODULE_TAG, "close reasonMsg = " + str);
        this.mSocket.resetPortPoolIndex();
        close();
        if (this.mConnectCallback != null) {
            this.mConnectCallback.onClose(i, str);
        }
        this.mSocket.setServerIPAddr("");
    }

    private void close() {
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "close()");
        if (this.mReader != null) {
            this.mReader.quit();
            this.mReader = null;
        }
        if (this.mWriter != null) {
            this.mWriter.quit();
            this.mWriter = null;
        }
        this.mSocket.close();
        this.mIsConnected = false;
        this.mIsReConnecting = false;
        if (this.mConnectMgrHandler != null) {
            this.mConnectMgrHandler.removeCallbacks(this.mCheckAuthRunnable);
            this.mConnectMgrHandler.removeCallbacks(this.mHeartAliveRunnable);
        }
        SocketDataParser.getInstance().stop();
    }

    private void createReader() {
        this.mReader = new SocketReadThread(this.mSocket, this.mConnectMgrHandler);
        this.mReader.start();
    }

    private void createWriter() {
        HandlerThread handlerThread = new HandlerThread("writer");
        handlerThread.start();
        this.mWriter = new SocketWriteHandler(handlerThread.getLooper(), this.mSocket, this.mConnectMgrHandler);
    }

    private void sendAuth(String str, String str2) {
        if (this.mWriter != null) {
            Bundle bundle = new Bundle();
            bundle.putString(BNRemoteConstants.ParamKey.KEY_AUTH_APP_VERSION, str2);
            bundle.putString("packageName", str);
            bundle.putString(BNRemoteConstants.ParamKey.KEY_AUTH_HUD_SDK_VERSION, BNRemoteConstants.HUD_SDK_CLIENT_VERSION);
            this.mWriter.sendMessage(this.mWriter.obtainMessage(11, bundle));
        }
    }

    private void sendPing() {
        if (this.mConnectMgrHandler == null || this.mHeartAliveRunnable == null) {
            return;
        }
        this.mConnectMgrHandler.removeCallbacks(this.mHeartAliveRunnable);
        this.mConnectMgrHandler.post(this.mHeartAliveRunnable);
    }
}
