package com.tencent.wecarspeech.clientsdk.impl;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.wecarspeech.clientsdk.BuildConfig;
import com.tencent.wecarspeech.clientsdk.dispatcher.IClientDispatcher;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.exceptions.InvalidAppIdException;
import com.tencent.wecarspeech.clientsdk.impl.ClientStateObserver;
import com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient;
import com.tencent.wecarspeech.clientsdk.interfaces.OnClientReadyCallback;
import com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinkCallback;
import com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinker;
import com.tencent.wecarspeech.clientsdk.model.VrMetaData;
import com.tencent.wecarspeech.clientsdk.utils.AppUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.ILogger;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.vframework.IClientVerifyResult;
import com.tencent.wecarspeech.vframework.ISpeechService;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class SpeechClientMgr {
    private static final String APPID_META_KEY = "TAI_SPEECH_APPID";
    private static final int SYSTEM_EVENT_DISPATCH_RETRY_TIMES = 20;
    private static final String TAG = "SpeechClientMgr";
    private static volatile SpeechClientMgr mInstance;
    private ClientStateObserver mClientStateObserver;
    private Application mContext;
    private Handler mHandlerBinder;
    private List<OnClientReadyCallback> mInitCallbackList;
    private String mKeySign;
    private String mPkgName;
    private volatile ISpeechService mSpeechService;
    private volatile boolean mIsIPCLinked = false;
    private ClientStateObserver.OnFrontStateListener stateListener = new ClientStateObserver.OnFrontStateListener() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.4
        @Override // com.tencent.wecarspeech.clientsdk.impl.ClientStateObserver.OnFrontStateListener
        public void onStateChanged(boolean z) {
            LogUtils.d(SpeechClientMgr.TAG, "onStateChanged isInFront = " + z);
            Iterator it = SpeechClientMgr.this.mClientMap.entrySet().iterator();
            while (it.hasNext()) {
                SpeechClient speechClient = (SpeechClient) ((Map.Entry) it.next()).getValue();
                if (speechClient.isIsObserveState()) {
                    if (z) {
                        speechClient.setState(1L);
                    } else {
                        speechClient.clearState(1L);
                    }
                }
            }
        }
    };
    private Map<String, ISpeechClient> mClientMap = new ConcurrentHashMap();
    private IPCLinker mIPCLinker = new IPCLinkerImpl();
    private List<Runnable> mSystemEventList = new CopyOnWriteArrayList();
    private HandlerThread mHandlerThread = new HandlerThread("binder_interface");

    @Keep
    public String getClientSdkVersion() {
        return BuildConfig.VERSION_NAME;
    }

    private SpeechClientMgr() {
        this.mHandlerThread.start();
        this.mHandlerBinder = new Handler(this.mHandlerThread.getLooper());
        this.mInitCallbackList = new CopyOnWriteArrayList();
    }

    @Keep
    public static SpeechClientMgr getInstance() {
        if (mInstance == null) {
            synchronized (SpeechClientMgr.class) {
                if (mInstance == null) {
                    mInstance = new SpeechClientMgr();
                }
            }
        }
        return mInstance;
    }

    @Keep
    public void init(Application application, OnClientReadyCallback onClientReadyCallback) {
        LogUtils.initXlog();
        if (application == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("context cannot be null"));
            return;
        }
        this.mContext = application;
        this.mKeySign = TextUtils.isEmpty(this.mKeySign) ? AppUtils.getSHA1Signature(this.mContext) : this.mKeySign;
        this.mPkgName = TextUtils.isEmpty(this.mPkgName) ? AppUtils.getPackageName(this.mContext) : this.mPkgName;
        LogUtils.d(TAG, "init mPkgName: " + this.mPkgName + " mKeySign:" + this.mKeySign);
        if (this.mClientStateObserver == null) {
            registerComeAliveReceiver(onClientReadyCallback);
            this.mClientStateObserver = new ClientStateObserver(this.mContext);
        }
        if (this.mIsIPCLinked && onClientReadyCallback != null) {
            onClientReadyCallback.onClientReady();
        } else if (this.mInitCallbackList.isEmpty()) {
            addClientInitCallback(onClientReadyCallback);
            initInner(onClientReadyCallback);
        } else {
            addClientInitCallback(onClientReadyCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addClientInitCallback(OnClientReadyCallback onClientReadyCallback) {
        if (onClientReadyCallback == null || this.mInitCallbackList.contains(onClientReadyCallback)) {
            return;
        }
        this.mInitCallbackList.add(onClientReadyCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initInner(final OnClientReadyCallback onClientReadyCallback) {
        if (this.mIsIPCLinked) {
            return;
        }
        this.mIPCLinker.linkRemoteService(this.mContext, new IPCLinkCallback() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.1
            @Override // com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinkCallback
            public void onLinkSuccess(final ISpeechService iSpeechService) {
                SpeechClientMgr.this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtils.d(SpeechClientMgr.TAG, "onLinkSuccess");
                        SpeechClientMgr.this.mSpeechService = iSpeechService;
                        SpeechClientMgr.this.mIsIPCLinked = true;
                        Iterator it = SpeechClientMgr.this.mInitCallbackList.iterator();
                        while (it.hasNext()) {
                            ((OnClientReadyCallback) it.next()).onClientReady();
                        }
                        SpeechClientMgr.this.mInitCallbackList.clear();
                        if (SpeechClientMgr.this.mClientStateObserver != null) {
                            SpeechClientMgr.this.mClientStateObserver.startObserve(SpeechClientMgr.this.stateListener);
                        }
                        SpeechClientMgr.this.onClientConnect(iSpeechService);
                    }
                });
            }

            @Override // com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinkCallback
            public void onLinkFailed(final int i, final String str) {
                SpeechClientMgr.this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtils.d(SpeechClientMgr.TAG, "onLinkFailed errCode = " + i + " msg = " + str);
                        SpeechClientMgr.this.mIsIPCLinked = false;
                        SpeechClientMgr.this.mSpeechService = null;
                        if (onClientReadyCallback != null) {
                            onClientReadyCallback.onInitFailed(i, str);
                        }
                    }
                });
            }

            @Override // com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinkCallback
            public void onLinkDisconnected() {
                SpeechClientMgr.this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtils.d(SpeechClientMgr.TAG, "onLinkDisconnected");
                        SpeechClientMgr.this.mIsIPCLinked = false;
                        SpeechClientMgr.this.mSpeechService = null;
                        SpeechClientMgr.this.onClientDisconnect();
                        if (onClientReadyCallback != null) {
                            onClientReadyCallback.onClientDisconnect();
                        }
                    }
                });
            }
        });
    }

    @Keep
    public ISpeechClient registerClient(Application application, @NonNull String str, String str2) {
        return registerClient(application, str, str2, null, true);
    }

    @Keep
    public ISpeechClient registerClient(Application application, @NonNull String str, String str2, String str3) {
        return registerClient(application, str, str2, str3, true);
    }

    @Keep
    public ISpeechClient registerClient(Application application, @NonNull String str, String str2, String str3, boolean z) {
        return registerClient(application, str, str2, str3, 0L, z);
    }

    @Keep
    public ISpeechClient registerClient(Application application, @NonNull String str, String str2, String str3, long j, boolean z) {
        if (application == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("context cannot be null !"));
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("appId cannot be empty"));
            return null;
        }
        if (!isMainThread()) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("registerClient can only be called on main thread"));
            return null;
        }
        LogUtils.d(TAG, "SpeechClientMgr registerClient: " + str + "  appname: " + str2 + "  alias: " + str3 + "  isObserState: " + z + "  this: " + this);
        if (!this.mClientMap.containsKey(str)) {
            this.mClientMap.put(str, new SpeechClient(application, this.mHandlerBinder, str, str2, str3, j, z));
        } else {
            LogUtils.e(TAG, "SpeechClient already exists " + str);
        }
        final SpeechClient speechClient = (SpeechClient) this.mClientMap.get(str);
        if (this.mSpeechService != null) {
            this.mHandlerBinder.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.2
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeechClientMgr.this.mSpeechService == null || SpeechClientMgr.this.verifyClient(speechClient)) {
                        return;
                    }
                    throw new InvalidAppIdException("appId " + speechClient.getAppId() + " appName = " + speechClient.getAppName() + " appAlias = " + speechClient.getAlias() + " is invalid");
                }
            });
            if (speechClient != null) {
                speechClient.onClientConnect(this.mSpeechService);
            }
        }
        return speechClient;
    }

    @Keep
    public ISpeechClient getClient(String str) {
        LogUtils.d(TAG, "in getClient:" + str);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("appId cannot be empty");
        }
        if (this.mClientMap.get(str) == null) {
            LogUtils.d(TAG, "client is null!:" + str);
            Iterator<Map.Entry<String, ISpeechClient>> it = this.mClientMap.entrySet().iterator();
            while (it.hasNext()) {
                LogUtils.d(TAG, "get exist client!:" + ((SpeechClient) it.next().getValue()).getAppId());
            }
        }
        return this.mClientMap.get(str);
    }

    private ISpeechClient getDefaultClient() {
        Iterator<Map.Entry<String, ISpeechClient>> it = this.mClientMap.entrySet().iterator();
        if (it.hasNext()) {
            return it.next().getValue();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClientConnect(ISpeechService iSpeechService) {
        Iterator<Map.Entry<String, ISpeechClient>> it = this.mClientMap.entrySet().iterator();
        while (it.hasNext()) {
            SpeechClient speechClient = (SpeechClient) it.next().getValue();
            speechClient.setSpeechService(iSpeechService);
            if (!verifyClient(speechClient)) {
                throw new InvalidAppIdException("appId " + speechClient.getAppId() + " appName = " + speechClient.getAppName() + " appAlias = " + speechClient.getAlias() + " is invalid");
            }
            speechClient.onClientConnect(iSpeechService);
        }
        Iterator<Runnable> it2 = this.mSystemEventList.iterator();
        while (it2.hasNext()) {
            it2.next().run();
        }
        this.mSystemEventList.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean verifyClient(final SpeechClient speechClient) {
        if (this.mSpeechService == null) {
            return true;
        }
        String appId = speechClient.getAppId();
        String alias = speechClient.getAlias();
        try {
            VrMetaData vrMetaData = speechClient.getVrMetaData();
            if (vrMetaData != null && vrMetaData.getVersionCode() >= 300) {
                LogUtils.d(TAG, "setVerifyCallback");
                this.mSpeechService.setVerifyCallback(appId, this.mPkgName, this.mKeySign, alias, new IClientVerifyResult.Stub() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.3
                    @Override // com.tencent.wecarspeech.vframework.IClientVerifyResult
                    public void onVerifyResult(boolean z) throws RemoteException {
                        LogUtils.d(SpeechClientMgr.TAG, "onVerifyResult: " + z);
                        if (z) {
                            return;
                        }
                        throw new InvalidAppIdException("appId " + speechClient.getAppId() + " appName = " + speechClient.getAppName() + " appAlias = " + speechClient.getAlias() + " is invalid");
                    }
                });
            }
            boolean verifyAppId = this.mSpeechService.verifyAppId(appId, this.mPkgName, this.mKeySign, alias);
            if (verifyAppId) {
                return verifyAppId;
            }
            String str = APPID_META_KEY;
            if (!TextUtils.isEmpty(alias)) {
                str = APPID_META_KEY + "_" + alias;
            }
            String metaDataValue = AppUtils.getMetaDataValue(this.mContext, str);
            return (TextUtils.isEmpty(metaDataValue) || TextUtils.equals(metaDataValue, appId)) ? verifyAppId : this.mSpeechService.verifyAppId(metaDataValue, this.mPkgName, this.mKeySign, alias);
        } catch (RemoteException e) {
            e.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClientDisconnect() {
        Iterator<Map.Entry<String, ISpeechClient>> it = this.mClientMap.entrySet().iterator();
        while (it.hasNext()) {
            ((SpeechClient) it.next().getValue()).onClientDisconnect();
        }
    }

    private boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public void dispatchSystemSkill(final String str, final long j, final String str2, final String str3, final String str4, final int i, final int i2) {
        LogUtils.d(TAG, "dispatchSystemSkill mIsIPCLinked = " + this.mIsIPCLinked);
        ISpeechClient client = getClient(str);
        if (client == null) {
            LogUtils.e(TAG, "dispatchSystemSkill client is null,invalid appId :" + str + ";use default client");
            client = getDefaultClient();
        }
        if (client == null) {
            LogUtils.e(TAG, "dispatchSystemSkill default client is null");
            if (i2 < 20) {
                this.mHandlerBinder.postDelayed(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.5
                    @Override // java.lang.Runnable
                    public void run() {
                        SpeechClientMgr.this.dispatchSystemSkill(str, j, str2, str3, str4, i, i2 + 1);
                    }
                }, 500L);
                return;
            }
            return;
        }
        final IClientDispatcher dispatcher = ((SpeechClient) client).getDispatcher();
        if (j == -1) {
            dispatcher.dispatchDebugSkill(j, str2, str3, str4, i);
        } else if (this.mIsIPCLinked) {
            dispatcher.dispatchSystemSkill(j, str2, str3, str4, i);
            setTaskDispatched(j);
        } else {
            this.mSystemEventList.add(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.6
                @Override // java.lang.Runnable
                public void run() {
                    dispatcher.dispatchSystemSkill(j, str2, str3, str4, i);
                    SpeechClientMgr.this.setTaskDispatched(j);
                }
            });
        }
    }

    public void dispatchSystemWakeup(String str, final long j, final String str2, final String str3, final int i) {
        LogUtils.d(TAG, "dispatchSystemWakeup mIsIPCLinked = " + this.mIsIPCLinked);
        ISpeechClient client = getClient(str);
        if (client == null) {
            LogUtils.e(TAG, "dispatchSystemWakeup client is null,invalid appId :" + str + ";use default client");
            client = getDefaultClient();
        }
        if (client == null) {
            LogUtils.e(TAG, "dispatchSystemWakeup default client is null");
            return;
        }
        final IClientDispatcher dispatcher = ((SpeechClient) client).getDispatcher();
        if (this.mIsIPCLinked) {
            dispatcher.dispatchSystemWakeup(j, str2, str3, i);
            setTaskDispatched(j);
        } else {
            this.mSystemEventList.add(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.7
                @Override // java.lang.Runnable
                public void run() {
                    dispatcher.dispatchSystemWakeup(j, str2, str3, i);
                    SpeechClientMgr.this.setTaskDispatched(j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTaskDispatched(long j) {
        if (this.mSpeechService != null) {
            try {
                this.mSpeechService.setTaskDispatched(j);
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                return;
            }
        }
        LogUtils.e(TAG, "setTaskDispatched err mSpeechService == null");
    }

    @Keep
    public void setUseCustomRecorder(boolean z) throws RemoteException {
        LogUtils.d(TAG, "setUseCustomRecorder isCustomRecorder = " + z);
        this.mSpeechService.setUseCustomRecorder(z);
    }

    @Keep
    public void appendRecordData(byte[] bArr) throws RemoteException {
        appendRecordData(Base64.encodeToString(bArr, 0));
    }

    @Keep
    public void appendRecordData(String str) throws RemoteException {
        LogUtils.d(TAG, "appendRecordData data = " + str);
        this.mSpeechService.appendRecordData(str);
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

    private void registerComeAliveReceiver(final OnClientReadyCallback onClientReadyCallback) {
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                LogUtils.d(SpeechClientMgr.TAG, "registerComeAliveReceiver wecarspeech onReceive " + SpeechClientMgr.this.getOneClientName());
                SpeechClientMgr.this.addClientInitCallback(onClientReadyCallback);
                SpeechClientMgr.this.initInner(onClientReadyCallback);
            }
        }, new IntentFilter("WECARSPEECH_COME_ALIVE"), "com.tencent.wecarspeech.vframework.WECARSPEECH_COME_ALIVE", null);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                LogUtils.d(SpeechClientMgr.TAG, "registerComeAliveReceiver wecar onReceive " + SpeechClientMgr.this.getOneClientName());
                SpeechClientMgr.this.addClientInitCallback(onClientReadyCallback);
                SpeechClientMgr.this.initInner(onClientReadyCallback);
            }
        }, new IntentFilter("WECARSPEECH_COME_ALIVE"), "com.tencent.wecar.vframework.WECARSPEECH_COME_ALIVE", null);
    }

    @Keep
    public String getTryAudio(@NonNull String str, @NonNull String str2, @Nullable String str3, boolean z) {
        if (this.mSpeechService != null) {
            try {
                return this.mSpeechService.getTryAudio(str, str2, str3, z);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "getTryAudio err " + e.getMessage());
                return null;
            }
        }
        LogUtils.e(TAG, "getTryAudio err mSpeechService == null");
        return null;
    }

    @Keep
    public String getTryAudioByTouch(String str, String str2, String str3, String str4) {
        if (this.mSpeechService != null) {
            try {
                return this.mSpeechService.getTryAudioByTouch(str, str2, str3, str4);
            } catch (RemoteException e) {
                LogUtils.e(TAG, "getTryAudio err " + e.getMessage());
                return null;
            }
        }
        LogUtils.e(TAG, "getTryAudio err mSpeechService == null");
        return null;
    }

    @Keep
    public void decTryAudioWeight(@NonNull String str, @NonNull String str2, boolean z, String str3) {
        if (this.mSpeechService != null) {
            try {
                this.mSpeechService.decTryAudioWeight(str, str2, z, str3);
                return;
            } catch (RemoteException e) {
                LogUtils.e(TAG, "decTryAudioWeight err " + e.getMessage());
                return;
            }
        }
        LogUtils.e(TAG, "decTryAudioWeight err mSpeechService == null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getOneClientName() {
        return this.mClientMap.isEmpty() ? "" : this.mClientMap.values().iterator().next().getAppId();
    }

    @Keep
    public boolean getIPCLinkStatus() {
        return this.mIsIPCLinked;
    }

    public void setIsThrowException(boolean z) {
        ExceptionCtrlManager.getInstance().setIsThrowException(z);
        LogUtils.d(TAG, "setIsThrowException = " + z);
    }
}
