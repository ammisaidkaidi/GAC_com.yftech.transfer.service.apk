package com.tencent.wecar.tts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.tencent.taes.framework.remote.IBindSubService;
import com.tencent.taes.remote.api.impl.tts.TtsRemoteApi;
import com.tencent.taes.remote.api.tts.ITtsApi;
import com.tencent.wecar.tts.client.cloudresmanager.ClientCloudManager;
import com.tencent.wecar.tts.client.cloudresmanager.CloudSettingManager;
import com.tencent.wecar.tts.client.cloudresmanager.IClientCloudManager;
import com.tencent.wecar.tts.client.login.ILogin;
import com.tencent.wecar.tts.client.login.TtsLogin;
import com.tencent.wecar.tts.client.net.INetWork;
import com.tencent.wecar.tts.client.net.TtsNetWork;
import com.tencent.wecar.tts.larklite.utils.ThreadUtils;
import com.tencent.wecar.tts.log.ILog;
import com.tencent.wecar.tts.log.TtsLog;
import com.tencent.wecar.tts.server.TtsService;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class TtsManager {
    public static final String DEFAULT_TTS_APK_PACKAGE_NAME = "com.tencent.wecar.tts.app";
    public static final String DEFAULT_WECARSPEECH_APK_PACKAGE_NAME = "com.tencent.wecarspeech";
    private static final String TAG = "TtsManager";
    private static final String TTS_SERVICE_ACTION = "com.tencent.taes.sdk.tts.ACTION";
    private boolean mIsServiceConnected;
    private final ServiceConnection mServiceConnection;
    private String[] mTaesRouterPkgs;
    private final TtsRemoteApi mTtsRemoteApi;
    private boolean mUseApk;
    private boolean mUseInnerTts;
    private boolean mUseSystemTts;
    private boolean mUseTaesTts;
    private boolean mUseWecarSpeech;
    private WeakReference<Context> mWeakReference;

    private TtsManager() {
        this.mTaesRouterPkgs = new String[]{"com.tencent.taes", "com.tencent.wecar", "com.tencent.wecarnavi", "com.tencent.wecarflow", "com.tencent.wecarmas"};
        this.mTtsRemoteApi = new TtsRemoteApi();
        this.mServiceConnection = new ServiceConnection() { // from class: com.tencent.wecar.tts.TtsManager.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IBinder iBinder2;
                TtsLog.d(TtsManager.TAG, "onServiceConnected: " + componentName);
                TtsManager.this.mIsServiceConnected = true;
                if (!TtsManager.this.mUseTaesTts) {
                    TtsManager.this.mTtsRemoteApi.binderConnect(iBinder);
                    return;
                }
                try {
                    Map serviceBinders = IBindSubService.Stub.asInterface(iBinder).getServiceBinders();
                    if (serviceBinders == null || (iBinder2 = (IBinder) serviceBinders.get("com.tencent.taes.remote.api.tts.ITtsService$Stub")) == null) {
                        return;
                    }
                    TtsManager.this.mTtsRemoteApi.binderConnect(iBinder2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                TtsLog.d(TtsManager.TAG, "onServiceDisconnected: " + componentName);
                TtsManager.this.mTtsRemoteApi.binderDisConnect();
                TtsManager.this.connect();
            }
        };
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class Singleton {
        private static final TtsManager INSTANCE = new TtsManager();

        private Singleton() {
        }
    }

    public static TtsManager getInstance() {
        return Singleton.INSTANCE;
    }

    public static void injectLog(ILog iLog) {
        TtsLog.setLog(iLog);
    }

    public static void injectLogin(ILogin iLogin) {
        TtsLogin.setLogin(iLogin);
    }

    public static void injectNetWork(INetWork iNetWork) {
        TtsNetWork.setNetWork(iNetWork);
    }

    public static void injectCloudResManager(IClientCloudManager iClientCloudManager) {
        ClientCloudManager.setCloudManager(iClientCloudManager);
    }

    public boolean init(@NonNull Context context) {
        boolean booleanValue = ((Boolean) ClientCloudManager.getCloudConfig("useApk", Boolean.TYPE, false)).booleanValue();
        boolean booleanValue2 = ((Boolean) ClientCloudManager.getCloudConfig("useSystemTts", Boolean.TYPE, false)).booleanValue();
        TtsLog.i(TAG, "Tts init cloudconfig useapk : " + booleanValue + ", useSystemTts:" + booleanValue2);
        return init(context, booleanValue, booleanValue2);
    }

    public boolean init(@NonNull Context context, boolean z, boolean z2) {
        if (this.mTtsRemoteApi.isInited()) {
            return true;
        }
        this.mWeakReference = new WeakReference<>(context);
        this.mUseApk = z;
        this.mUseSystemTts = z2;
        return connect();
    }

    public ITtsApi getRemoteApi() {
        return this.mTtsRemoteApi;
    }

    public void destroy() {
        if (this.mWeakReference == null || this.mWeakReference.get() == null) {
            return;
        }
        this.mWeakReference.get().unbindService(this.mServiceConnection);
    }

    private Intent getMatchIntent(Context context) {
        Intent intent = new Intent(TTS_SERVICE_ACTION);
        intent.addFlags(32);
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentServices(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ResolveInfo next = it.next();
            if (next.serviceInfo.packageName.equals(DEFAULT_TTS_APK_PACKAGE_NAME)) {
                intent.setPackage(DEFAULT_TTS_APK_PACKAGE_NAME);
                this.mUseApk = true;
                this.mUseWecarSpeech = false;
                break;
            }
            if (next.serviceInfo.packageName.equals("com.tencent.wecarspeech")) {
                intent.setPackage("com.tencent.wecarspeech");
                this.mUseWecarSpeech = true;
            }
        }
        TtsLog.i(TAG, "Tts Service Package Name : " + intent.getPackage());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean connect() {
        Intent intent;
        boolean bindService;
        ApplicationInfo applicationInfo;
        if (this.mWeakReference == null || this.mWeakReference.get() == null) {
            return false;
        }
        Context context = this.mWeakReference.get();
        Intent intent2 = new Intent();
        getMatchIntent(context);
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable th) {
            th = th;
        }
        if (this.mUseApk) {
            intent2.setClassName(DEFAULT_TTS_APK_PACKAGE_NAME, "com.tencent.wecar.tts.server.TtsService");
        } else if (applicationInfo.metaData != null && applicationInfo.metaData.getString(TTS_SERVICE_ACTION) != null) {
            this.mUseInnerTts = true;
            intent2.setClass(context, TtsService.class);
            CloudSettingManager.getInstance().init(context);
            TtsLog.d(TAG, "use tts sdk service:");
        } else if (this.mUseWecarSpeech) {
            intent2.setClassName("com.tencent.wecarspeech", "com.tencent.wecar.tts.server.TtsService");
        } else {
            TtsLog.d(TAG, "Connect TAES TTS");
            TAESSubServiceRouterStrategy tAESSubServiceRouterStrategy = new TAESSubServiceRouterStrategy();
            tAESSubServiceRouterStrategy.scanAndSortService(context, "com.tencent.taes.tts.ACTION", Arrays.asList(this.mTaesRouterPkgs));
            ServiceItemInfo hostServiceInfo = tAESSubServiceRouterStrategy.getHostServiceInfo();
            TtsLog.d(TAG, "Connect TAES TTS serviceItemInfo:" + hostServiceInfo);
            if (hostServiceInfo == null) {
                return false;
            }
            intent = hostServiceInfo.intent;
            try {
                this.mUseTaesTts = true;
            } catch (Throwable th2) {
                intent2 = intent;
                th = th2;
                th.printStackTrace();
                intent = intent2;
                TtsLog.d(TAG, "Connect intent:" + intent);
                intent.putExtra("useSystemTts", this.mUseSystemTts);
                bindService = context.bindService(intent, this.mServiceConnection, 1);
                if (bindService) {
                }
                return bindService;
            }
            TtsLog.d(TAG, "Connect intent:" + intent);
            intent.putExtra("useSystemTts", this.mUseSystemTts);
            bindService = context.bindService(intent, this.mServiceConnection, 1);
            if (bindService) {
                ThreadUtils.runOnWorkerThreadDelayed(() -> {
                    if (this.mIsServiceConnected) {
                        return;
                    }
                    connect();
                    TtsLog.d(TAG, "TtsService reconnecting...");
                }, 5000L);
            } else {
                TtsLog.e(TAG, "TtsService connecting fail...");
            }
            return bindService;
        }
        intent = intent2;
        TtsLog.d(TAG, "Connect intent:" + intent);
        intent.putExtra("useSystemTts", this.mUseSystemTts);
        bindService = context.bindService(intent, this.mServiceConnection, 1);
        if (bindService) {
        }
        return bindService;
    }

    public boolean getUseApk() {
        return this.mUseApk;
    }

    public void uploadTtsSpeakerSettings() {
        if (this.mUseInnerTts) {
            CloudSettingManager.getInstance().uploadTtsSpeakerSettings();
        }
    }
}
