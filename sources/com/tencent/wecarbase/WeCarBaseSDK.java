package com.tencent.wecarbase;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowManager;
import com.tencent.taifeedback.upload.sdk.utils.FileUtils;
import com.tencent.wecarbase.client.AccountManager;
import com.tencent.wecarbase.client.CloudManager;
import com.tencent.wecarbase.client.GuiPolicyManager;
import com.tencent.wecarbase.client.SimpleEventListener;
import com.tencent.wecarbase.client.TaiAccountEntry;
import com.tencent.wecarbase.client.TaiFeedBackEntry;
import com.tencent.wecarbase.client.VuiPolicyManager;
import com.tencent.wecarbase.client.WebCenterManager;
import com.tencent.wecarbase.common.AppInfoUploader;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.EventDispatcher;
import com.tencent.wecarbase.common.SDKController;
import com.tencent.wecarbase.common.VersionProvider;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.messagecenter.EventReceiver;
import com.tencent.wecarbase.model.SerializableMap;
import com.tencent.wecarbase.taibaseui.popupview.PopupViewManager;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.ClickUtils;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarBaseSDK {
    private static final String NOT_INIT_ERROR = "you should init WeCarBaseSDK first";
    private static final String TAG = "WeCarBaseSDK.Client";
    private static final WeCarBaseSDK ourInstance = new WeCarBaseSDK();
    private AppInstallReceiver mAppInstallReceiver;
    private SDKConfig mConfig;
    private Context mContext;
    private WindowManager mWindowManager;
    private boolean mainAppProcess;
    private boolean mInitialized = false;
    private AppInfoUploader mAppUploader = AppInfoUploader.getInstance();
    private BroadcastReceiver mResetReceiver = new BroadcastReceiver() { // from class: com.tencent.wecarbase.WeCarBaseSDK.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str;
            Exception e;
            boolean z;
            String packageName;
            try {
                String action = intent.getAction();
                LogUtils.d(WeCarBaseSDK.TAG, "receive action " + action);
                if (SDKConfig.ACTION_SDK_RESET.equals(action)) {
                    try {
                        str = intent.getStringExtra(SDKConfig.EXTRA_BROADCAST_SENDER);
                    } catch (Exception e2) {
                        str = null;
                        e = e2;
                    }
                    try {
                        z = intent.getBooleanExtra(SDKConfig.EXTRA_INCLUDE_SELF, false);
                    } catch (Exception e3) {
                        e = e3;
                        LogUtils.e(WeCarBaseSDK.TAG, "onReceive error " + e);
                        z = false;
                        packageName = context.getPackageName();
                        LogUtils.d(WeCarBaseSDK.TAG, "receive pkg = " + packageName + ", sender = " + str);
                        if (!TextUtils.isEmpty(packageName)) {
                        }
                        WeCarBaseSDK.getInstance().resetSDK();
                        return;
                    }
                    packageName = context.getPackageName();
                    LogUtils.d(WeCarBaseSDK.TAG, "receive pkg = " + packageName + ", sender = " + str);
                    if (!TextUtils.isEmpty(packageName) || !packageName.equals(str)) {
                        WeCarBaseSDK.getInstance().resetSDK();
                        return;
                    } else {
                        if (z) {
                            WeCarBaseSDK.getInstance().resetSDK();
                            return;
                        }
                        return;
                    }
                }
                if ("android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                    LogUtils.stopLogToFile();
                    LogUtils.resetFileWrite();
                }
            } catch (Exception e4) {
                LogUtils.e(WeCarBaseSDK.TAG, "onReceive end error " + e4);
            }
        }
    };
    private EventDispatcher mEventDispatcher = EventDispatcher.getInstance();
    private EventReceiver mEventReceiver = EventReceiver.getInstance();

    public static String getVersion() {
        return "3.1.0.474";
    }

    public static WeCarBaseSDK getInstance() {
        return ourInstance;
    }

    private WeCarBaseSDK() {
    }

    public void showFeedBackCenter(Context context, String str, ArrayList<String> arrayList, String str2, int i, Map<String, String> map) {
        if (ClickUtils.isSingleClick()) {
            if (context == null) {
                context = getInstance().getContext();
            }
            Context context2 = context;
            LogUtils.d(TAG, "showFeedBackCenter");
            FileUtils.getInstance().deleteSubFiles(FileUtils.getInstance().getStorePath(context2));
            TaiFeedBackEntry.startFeedBackCenterActivity(context2, str, Constants.FEED_BACK_CENTER_ACTION, arrayList, str2, i, map);
        }
    }

    public void showFeedBackCenter(Context context, String str, ArrayList<String> arrayList, String str2, int i) {
        showFeedBackCenter(context, str, arrayList, str2, i, null);
    }

    public synchronized void init(Context context) {
        init(context, new SDKConfig.Builder().build());
    }

    public synchronized void init(Context context, SDKConfig sDKConfig) {
        this.mainAppProcess = PackageUtils.isMainAppProcess(context);
        initInner(context, sDKConfig);
    }

    private void regInstallReceiver() {
        if (this.mAppInstallReceiver == null) {
            this.mAppInstallReceiver = new AppInstallReceiver();
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this.mAppInstallReceiver, intentFilter);
    }

    private void unregInstallReceiver() {
        this.mContext.unregisterReceiver(this.mAppInstallReceiver);
    }

    private synchronized void initInner(Context context, SDKConfig sDKConfig) {
        LogUtils.setLogEnable(sDKConfig.isShowLog());
        LogUtils.d(TAG, "WeCarSDK init, mInitialized=" + this.mInitialized + ", mainAppProcess=" + this.mainAppProcess + ", cfg=" + sDKConfig);
        if (!this.mInitialized) {
            LogUtils.ff(TAG, "initInner Tai Client SDK is:" + context.getPackageName() + "--VersionName is:" + PackageUtils.getVersionName(context, context.getPackageName()) + " --SDK Version is:3.1.0.474, cfg=" + sDKConfig);
            sDKConfig.forceSetServiceConfig(new ClientServiceConfig());
            this.mContext = context.getApplicationContext();
            ContextHolder.setContext(this.mContext);
            this.mConfig = sDKConfig;
            AppResourcesUtils.init(this.mContext);
            ConfigHolder.getInstance().setSDKConfig(this.mConfig);
            this.mEventDispatcher.init(getContext());
            this.mInitialized = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(SDKConfig.ACTION_SDK_RESET);
            intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
            context.registerReceiver(this.mResetReceiver, intentFilter);
            regInstallReceiver();
            this.mEventReceiver.init(getContext());
            startSDK();
            initOthers();
        }
    }

    private void initOthers() {
        TAIThreadPoolProxyFactory.getIOPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.WeCarBaseSDK.2
            @Override // java.lang.Runnable
            public void run() {
                if (WeCarBaseSDK.this.mContext != null) {
                    try {
                        if (WeCarBaseSDK.this.mainAppProcess) {
                            PopupViewManager.getInstance().init(WeCarBaseSDK.this.mContext);
                        }
                        WeCarBaseSDK.this.mAppUploader.init(WeCarBaseSDK.this.mContext, false);
                        WeCarBaseSDK.this.mAppUploader.uploadAppInfo(false);
                        SDKController.getInstance().init(WeCarBaseSDK.this.mContext);
                    } catch (Exception e) {
                        LogUtils.e(WeCarBaseSDK.TAG, "initOthers error:" + e.getLocalizedMessage());
                    }
                }
            }
        });
    }

    private void unInitOthers() {
        this.mAppUploader.unInit();
        SDKController.getInstance().unInit();
    }

    public void unInit() {
        if (this.mContext != null) {
            EventReceiver.getInstance().unInit();
            if (this.mResetReceiver != null) {
                this.mContext.unregisterReceiver(this.mResetReceiver);
            }
            if (this.mAppInstallReceiver != null) {
                unregInstallReceiver();
            }
        }
        cleanUpSDK(this.mContext);
        unInitOthers();
    }

    public void startWeChatBindActivity(String str) {
        TaiAccountEntry.startWeChatBindActivity(str);
    }

    public void startWeChatBindActivity(Context context, String str) {
        TaiAccountEntry.startWeChatBindActivity(context, str);
    }

    public void startWeChatBindActivity(Context context, String str, Map<String, String> map) {
        TaiAccountEntry.startWeChatBindActivity(context, str, map);
    }

    public void closeWeChatBindActivity(String str) {
        AccountManager.getInstance().closeAccountUI(str);
    }

    public synchronized void registerEventListener(SimpleEventListener simpleEventListener) {
        if (!this.mInitialized) {
            LogUtils.ff(TAG, "error not init registerEventListener maybe received nothing!");
        }
        this.mEventReceiver.registerSimpleEventListener(simpleEventListener);
    }

    public synchronized void unregisterEventListener(SimpleEventListener simpleEventListener) {
        if (!this.mInitialized) {
            LogUtils.ff(TAG, "unregisterEventListeneryou should init WeCarBaseSDK first");
        }
        this.mEventReceiver.unregisterSimpleEventListener(simpleEventListener);
    }

    public void addDeviceIds(Map<String, String> map) {
        addDeviceIdInner(map);
        Intent intent = new Intent(SDKConfig.ACTION_UPDATE_DEVICE_IDS);
        SerializableMap serializableMap = new SerializableMap();
        serializableMap.setMap(map);
        intent.putExtra(SDKConfig.EXTRA_DEVICE_IDS, serializableMap);
        intent.setPackage(this.mContext.getPackageName());
        this.mContext.sendBroadcast(intent);
    }

    private void addDeviceIdInner(Map<String, String> map) {
        LogUtils.d(TAG, "addDeviceIdInner, " + this.mInitialized + ", ids = " + map);
        if (!this.mInitialized) {
            throw new RuntimeException(NOT_INIT_ERROR);
        }
        this.mConfig.addDeviceIds(map);
    }

    public void setAPPChannel(String str) {
        setAPPChannelInner(str);
        Intent intent = new Intent(SDKConfig.ACTION_UPDATE_CHANNEL);
        intent.putExtra(SDKConfig.EXTRA_CHANNEL, str);
        intent.setPackage(this.mContext.getPackageName());
        this.mContext.sendBroadcast(intent);
    }

    private void setAPPChannelInner(String str) {
        LogUtils.d(TAG, "setChannelInner, channel = " + str + ", mInitialized = " + this.mInitialized);
        if (!this.mInitialized) {
            throw new RuntimeException(NOT_INIT_ERROR);
        }
        String localAPPChannel = this.mConfig.getLocalAPPChannel();
        if (TextUtils.equals(str, localAPPChannel)) {
            LogUtils.d(TAG, "setChannelInner, oldChannel is equal to newChannel, oldChannel = " + localAPPChannel + ", newChannel = " + str);
            return;
        }
        this.mConfig.setChannel(str);
        if (isHost() && PackageUtils.isWeCarBaseProcess(getContext())) {
            Intent intent = new Intent(SDKConfig.ACTION_FORCE_VALIDATE);
            intent.setPackage(this.mContext.getPackageName());
            this.mContext.sendBroadcast(intent);
        }
    }

    public synchronized boolean hasInitialized() {
        return this.mInitialized;
    }

    private void cleanUpSDK(Context context) {
        LogUtils.e(TAG, "cleanUpSDK");
        WebCenterManager.getInstance().destroy();
        GuiPolicyManager.getInstance().destroy();
        VuiPolicyManager.getInstance().destroy();
        AccountManager.getInstance().destroy();
        CloudManager.getInstance().destroy();
    }

    private void startSDK() {
        LogUtils.e(TAG, "startSDK");
        AccountManager.getInstance().init(getContext());
        CloudManager.getInstance().init(getContext());
        WebCenterManager.getInstance().reInitIfNeed(getContext());
        GuiPolicyManager.getInstance().reInitIfNeed(getContext());
        VuiPolicyManager.getInstance().reInitIfNeed(getContext());
        PackageUtils.isMainAppProcess(getContext());
        this.mAppUploader.init(getContext(), false);
        this.mAppUploader.uploadAppInfo(false);
        SDKController.getInstance().init(getContext());
    }

    public void quitWecarbaseProcess(boolean z) {
        LogUtils.fe(TAG, "quitWecarbaseProcess clearAccount=" + z);
        Intent intent = new Intent(SDKConfig.ACTION_QUIT_WECARBASE_PROCESS);
        intent.putExtra(SDKConfig.EXTRA_CLEAR_ACCOUNT, z);
        this.mContext.sendBroadcast(intent);
    }

    public void switchFeedBackShowMode(int i) {
        LogUtils.d(TAG, "switchFeedBackShowMode:" + i);
        Intent intent = new Intent("com.tencent.wecarbase.action.change_style");
        intent.setPackage(getConfig().getServiceConfig().getHostPackage());
        intent.putExtra("pkgName", this.mContext.getPackageName());
        intent.putExtra("showMode", i);
        this.mContext.sendBroadcast(intent);
    }

    public void resetSDK() {
        this.mainAppProcess = PackageUtils.isMainAppProcess(getContext());
        cleanUpSDK(getContext());
        startSDK();
    }

    public Context getContext() {
        if (this.mContext == null) {
            return null;
        }
        return this.mContext;
    }

    public String getChannelInAPP(String str) {
        String str2 = null;
        try {
            Bundle call = getContext().getContentResolver().call(VersionProvider.getUriForPackage(str), VersionProvider.METHOD_GET_PRODUCT_CHANNEL, (String) null, (Bundle) null);
            LogUtils.d(TAG, "result = " + call);
            if (call != null) {
                String string = call.getString(VersionProvider.KEY_PRODUCT_CHANNEL);
                LogUtils.d(TAG, "channel = " + string);
                str2 = string;
            }
        } catch (Exception unused) {
        }
        LogUtils.d(TAG, "getChannelInAPP " + str + " return " + str2);
        return str2;
    }

    public Map<String, String> getDeviceIdsInAPP(String str) {
        Serializable serializable;
        Map<String, String> map = null;
        try {
            Bundle call = getContext().getContentResolver().call(VersionProvider.getUriForPackage(str), VersionProvider.METHOD_GET_DEVICE_IDS, (String) null, (Bundle) null);
            if (call != null && (serializable = call.getSerializable(VersionProvider.KEY_DEVICE_IDS)) != null && (serializable instanceof SerializableMap)) {
                map = ((SerializableMap) serializable).getMap();
            }
        } catch (Exception unused) {
        }
        LogUtils.d(TAG, "getDeviceIdsInAPP " + str + " return " + map);
        return map;
    }

    public void setKeepAliveFlag(boolean z) {
        SDKConfig.setKeepAliveFlag(z);
    }

    public boolean isHost() {
        return this.mContext.getPackageName().equals(getInstance().getConfig().getServiceConfig().getHostPackage());
    }

    public SDKConfig getConfig() {
        return this.mConfig;
    }
}
