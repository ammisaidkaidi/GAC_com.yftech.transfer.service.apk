package com.tencent.car.wechatsdk.impl;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Keep;
import com.tencent.car.export.miniprogramm.WXMiniProgrammDesc;
import com.tencent.car.sdk.IWeChatService;
import com.tencent.car.wechatsdk.BuildConfig;
import com.tencent.car.wechatsdk.exceptions.SDKNotInitException;
import com.tencent.car.wechatsdk.exceptions.ServiceNotAvailableException;
import com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi;
import com.tencent.car.wechatsdk.interfaces.IServerConnectListener;
import com.tencent.car.wechatsdk.interfaces.OnDisplayStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatMessageListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatNotDisturbStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatPanelStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatSemiAutoLoginStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatUIStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatUnreadMsgStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatVoipListener;
import com.tencent.car.wechatsdk.ipcservice.IPCLinkCallback;
import com.tencent.car.wechatsdk.ipcservice.IPCLinker;
import com.tencent.car.wechatsdk.utils.AppUtils;
import com.tencent.car.wechatsdk.utils.log.ILogger;
import com.tencent.car.wechatsdk.utils.log.LogUtils;
import com.tencent.taiutils.SystemUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class WeChatMgr {
    private static final String COME_ALIVE_ACTION = "WECHAT_CAR_COME_ALIVE";
    private static final String TAG = "WeChatMgr";
    private static volatile WeChatMgr mInstance;
    private Application mContext;
    private RemoteService mRemoteService;
    private volatile IWeChatService mWeChatService;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private IPCLinker mIPCLinker = new IPCLinkerImpl();
    private List<IServerConnectListener> mServerObserverList = new CopyOnWriteArrayList();
    private IInfoDispatchApi mInfoDispatcher = new InfoDispatcher();

    @Keep
    public String getWeChatSdkVersion() {
        return BuildConfig.VERSION_NAME;
    }

    private WeChatMgr() {
    }

    @Keep
    public static WeChatMgr getInstance() {
        if (mInstance == null) {
            synchronized (WeChatMgr.class) {
                if (mInstance == null) {
                    mInstance = new WeChatMgr();
                }
            }
        }
        return mInstance;
    }

    @Keep
    public synchronized void init(Application application) {
        LogUtils.initXlog();
        LogUtils.d(TAG, "init");
        if (this.mContext != null) {
            LogUtils.d(TAG, "init already");
        } else {
            if (application == null) {
                throw new IllegalArgumentException("context cannot be null");
            }
            this.mContext = application;
            registerComeAliveReceiver();
            initInner();
        }
    }

    @Keep
    public void registerServerConnectListener(IServerConnectListener iServerConnectListener) {
        LogUtils.d(TAG, "registerServerConnectListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        if (this.mIPCLinker.getConnectedState()) {
            iServerConnectListener.onConnected();
        }
        if (iServerConnectListener == null || this.mServerObserverList.contains(iServerConnectListener)) {
            return;
        }
        this.mServerObserverList.add(iServerConnectListener);
    }

    @Keep
    public void unregisterServerConnectListener(IServerConnectListener iServerConnectListener) {
        LogUtils.d(TAG, "unregisterServerConnectListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        if (iServerConnectListener != null) {
            this.mServerObserverList.remove(iServerConnectListener);
        }
    }

    @Keep
    public void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        LogUtils.d(TAG, "registerWeChatMessageListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatMessageListener(onWeChatMessageListener);
    }

    @Keep
    public void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        LogUtils.d(TAG, "unregisterWeChatMessageListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatMessageListener(onWeChatMessageListener);
    }

    @Keep
    public void registerWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener) {
        LogUtils.d(TAG, "registerWeChatVoipListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatVoipListener(onWeChatVoipListener);
    }

    @Keep
    public void unregisterWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener) {
        LogUtils.d(TAG, "unregisterWeChatVoipListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatVoipListener(onWeChatVoipListener);
    }

    @Keep
    public void registerWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener) {
        LogUtils.d(TAG, "registerWeChatUIStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatUIStateListener(onWeChatUIStateListener);
    }

    @Keep
    public void unregisterWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener) {
        LogUtils.d(TAG, "unregisterWeChatUIStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatUIStateListener(onWeChatUIStateListener);
    }

    public int getWeChatUIState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatUIState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initInner() {
        if (this.mWeChatService == null) {
            this.mIPCLinker.linkRemoteService(this.mContext, new IPCLinkCallback() { // from class: com.tencent.car.wechatsdk.impl.WeChatMgr.1
                @Override // com.tencent.car.wechatsdk.ipcservice.IPCLinkCallback
                public void onLinkSuccess(IWeChatService iWeChatService) {
                    LogUtils.d(WeChatMgr.TAG, "onLinkSuccess");
                    WeChatMgr.this.mWeChatService = iWeChatService;
                    WeChatMgr.this.mRemoteService = new RemoteService(WeChatMgr.this.mWeChatService, WeChatMgr.this.mInfoDispatcher);
                    WeChatMgr.this.mRemoteService.start();
                    Iterator it = WeChatMgr.this.mServerObserverList.iterator();
                    while (it.hasNext()) {
                        ((IServerConnectListener) it.next()).onConnected();
                    }
                }

                @Override // com.tencent.car.wechatsdk.ipcservice.IPCLinkCallback
                public void onLinkFailed(int i, String str) {
                    LogUtils.d(WeChatMgr.TAG, "onLinkFailed errCode = " + i + " msg = " + str);
                    WeChatMgr.this.mWeChatService = null;
                    Iterator it = WeChatMgr.this.mServerObserverList.iterator();
                    while (it.hasNext()) {
                        ((IServerConnectListener) it.next()).onConnectFailed(i, str);
                    }
                }

                @Override // com.tencent.car.wechatsdk.ipcservice.IPCLinkCallback
                public void onLinkDisconnected() {
                    LogUtils.d(WeChatMgr.TAG, "onLinkDisconnected");
                    WeChatMgr.this.mWeChatService = null;
                    Iterator it = WeChatMgr.this.mServerObserverList.iterator();
                    while (it.hasNext()) {
                        ((IServerConnectListener) it.next()).onDisconnected();
                    }
                }
            });
        }
    }

    @Keep
    public void setLogger(ILogger iLogger) {
        LogUtils.setLogger(iLogger);
    }

    @Keep
    public void setOpenLog(boolean z) {
        LogUtils.setOpenLog(z);
    }

    @Keep
    public void setDebug(boolean z) {
        LogUtils.setDebug(z);
    }

    @Keep
    public boolean isWeChatServiceAvailable() {
        return this.mWeChatService != null;
    }

    @Keep
    public boolean getWeChatLoginState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatLoginState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public int getWeChatVoipState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatVoipState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    private void registerComeAliveReceiver() {
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.tencent.car.wechatsdk.impl.WeChatMgr.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                LogUtils.d(WeChatMgr.TAG, "onReceive");
                WeChatMgr.this.initInner();
            }
        }, new IntentFilter(COME_ALIVE_ACTION));
    }

    private boolean isSdkInit() {
        return this.mContext != null;
    }

    @Keep
    public void launchWeChat() {
        LogUtils.d(TAG, "launchWeChat");
        if (getWeChatSemiAutoLoginState()) {
            AppUtils.launchWeChat(this.mContext);
        }
    }

    @Keep
    public void setPanel(boolean z) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.setPanel(z);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void setSemiAutoLogin(boolean z) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.setSemiAutoLogin(z);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void registerWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener) {
        LogUtils.d(TAG, "registerWeChatPanelStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatPanelStateListener(onWeChatPanelStateListener);
    }

    @Keep
    public void unregisterWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener) {
        LogUtils.d(TAG, "unregisterWeChatPanelStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatPanelStateListener(onWeChatPanelStateListener);
    }

    @Keep
    public void registerWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener) {
        LogUtils.d(TAG, "registerWeChatSemiAutoLoginStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatSemiAutoLoginStateListener(onWeChatSemiAutoLoginStateListener);
    }

    @Keep
    public void unregisterWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener) {
        LogUtils.d(TAG, "unregisterWeChatSemiAutoLoginStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatSemiAutoLoginStateListener(onWeChatSemiAutoLoginStateListener);
    }

    public boolean getWeChatPanelState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatPanelState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    public boolean getWeChatSemiAutoLoginState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatSemiAutoLoginState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void setWeChatNotDisturbState(int i) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.setWeChatNotDisturbState(i);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    public int getWeChatNotDisturbState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatNotDisturbState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void registerWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener) {
        LogUtils.d(TAG, "registerWeChatNotDisturbStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatNotDisturbStateListener(onWeChatNotDisturbStateListener);
    }

    @Keep
    public void unregisterWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener) {
        LogUtils.d(TAG, "unregisterWeChatNotDisturbStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatNotDisturbStateListener(onWeChatNotDisturbStateListener);
    }

    public void logoutWeChat() {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.logoutWeChat();
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void carEventLaunchWeChat() {
        try {
            LogUtils.d(TAG, "outsideLaunchWeChat：" + getWeChatLoginState());
            if (getWeChatLoginState()) {
                return;
            }
            AppUtils.launchWeChat(this.mContext);
        } catch (ServiceNotAvailableException e) {
            LogUtils.d(TAG, "outsideLaunchWeChat：e" + e.getMessage());
            AppUtils.launchWeChat(this.mContext);
        }
    }

    @Keep
    public void invokeWithText(String str, int i, String str2) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.invokeWithText(str, i, str2);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void invokeWithWakeupWord(String str, int i, String str2) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.invokeWithWakeupWord(str, i, str2);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void registerWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener) {
        LogUtils.d(TAG, "registerWeChatUnReadMsgStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.registerWeChatUnreadMsgStateListener(onWeChatUnreadMsgStateListener);
    }

    @Keep
    public void unregisterWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener) {
        LogUtils.d(TAG, "unregisterWeChatSemiAutoLoginStateListener");
        if (!isSdkInit()) {
            throw new SDKNotInitException("sdk must init first");
        }
        this.mInfoDispatcher.unregisterWeChatUnreadMsgStateListener(onWeChatUnreadMsgStateListener);
    }

    public int getWeChatUnreadMsgState() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getWeChatUnreadMsgState();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void openWeChatFunctionPage(int i) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.openWeChatFunctionPage(i);
            return;
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    @Keep
    public void setExtDisplayState(boolean z, OnDisplayStateListener onDisplayStateListener) {
        if (isWeChatServiceAvailable()) {
            this.mRemoteService.SetDisplayStateListener(onDisplayStateListener);
            this.mRemoteService.setPanel(z);
        } else {
            onDisplayStateListener.SetState(false);
            throw new ServiceNotAvailableException("wechat service not available");
        }
    }

    public boolean getDashboardConfig() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getDashboardConfig();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    public boolean getNotDisturbConfig() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getNotDisturbConfig();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    public boolean getUserGuideConfig() {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.getUserGuideConfig();
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }

    public boolean isHostAppInstalled(Context context) {
        boolean checkApkExist = AppUtils.checkApkExist(context, SystemUtils.WEXIN_PACKAGE_NAME);
        LogUtils.d(TAG, "isHostAppInstalled: isInstallWeChat =" + checkApkExist);
        if (checkApkExist) {
            return true;
        }
        LogUtils.d(TAG, "检测到您没有安装微信，您将无法使用WeChat SDK得能力。");
        return false;
    }

    public void openWeChat(Context context) {
        AppUtils.launchWeChat(context);
    }

    public int launchMiniProgramm(WXMiniProgrammDesc wXMiniProgrammDesc) {
        if (isWeChatServiceAvailable()) {
            return this.mRemoteService.launchMiniProgramm(wXMiniProgrammDesc);
        }
        throw new ServiceNotAvailableException("wechat service not available");
    }
}
