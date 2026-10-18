package com.tencent.taes.framework.server;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TaesConstants;
import com.tencent.taes.framework.auth.IClientVerifyResult;
import com.tencent.taes.framework.bean.ModuleHostInfo;
import com.tencent.taes.framework.interfaces.ICompManager;
import com.tencent.taes.framework.interfaces.IRouterStrategy;
import com.tencent.taes.framework.listener.LoadListener;
import com.tencent.taes.framework.parser.ComponentConfigInfo;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.framework.remote.IServiceManagerService;
import com.tencent.taes.framework.server.router.SMSRouterStrategy;
import com.tencent.taes.framework.server.router.SingleAppRouterStrategy;
import com.tencent.taes.framework.server.router.SubServiceRouterStrategy;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import com.tencent.taes.util.PackageUtils;
import com.yftech.transfer.service.CarAppList;
import java.lang.reflect.Constructor;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /home/user/work/dex/classes.dex */
public class ServerCompsManager extends BaseClient implements ICompManager {
    private static final String TAG = "ServerCompsManager";
    private AtomicBoolean isInited;
    private String mAppAlias;
    private String mAppId;
    private Map<String, Object> mCacheAPIs;
    private Map<String, ComponentConfigInfo> mCacheLoadComps;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private Map<String, ComponentConfigInfo> mLoadedComps;
    private Pair<List<ComponentConfigInfo>, ICompManager.Listener> mPendingLoadList;
    private String[] mRemoteSmsPkgs;
    private IRouterStrategy mRouterStrategy;
    private IServiceManagerService mServiceManagerService;

    public ServerCompsManager(Context context) {
        super(context);
        this.mCacheLoadComps = new ConcurrentHashMap();
        this.mLoadedComps = new ConcurrentHashMap();
        this.mCacheAPIs = new ConcurrentHashMap();
        this.isInited = new AtomicBoolean(false);
        this.mHandlerThread = new HandlerThread("SM_Work_Thread");
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public void init(Context context, Object... objArr) {
        if (this.isInited.compareAndSet(false, true)) {
            this.mRemoteSmsPkgs = (String[]) objArr[0];
            this.mAppId = (String) objArr[1];
            this.mAppAlias = (String) objArr[2];
            this.mRouterStrategy = new SMSRouterStrategy();
            this.mRouterStrategy.scanAndSortService(context, ConfigConstant.ACTION_CREATE_SMS, Arrays.asList(this.mRemoteSmsPkgs));
            IRouterStrategy.ServiceItemInfo hostServiceInfo = this.mRouterStrategy.getHostServiceInfo();
            if (hostServiceInfo != null) {
                connect(hostServiceInfo.intent, null);
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public boolean checkModuleLoaded(String str) {
        return this.mLoadedComps.containsKey(str);
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public void loadComponents(List<ComponentConfigInfo> list, ICompManager.Listener listener) {
        for (ComponentConfigInfo componentConfigInfo : list) {
            this.mCacheLoadComps.put(componentConfigInfo.getName(), componentConfigInfo);
        }
        if (!this.isInited.get()) {
            TaesConstants.CompLoadState compLoadState = TaesConstants.CompLoadState.ERROR_NO_INIT;
            listener.onLoadFail(compLoadState.code, compLoadState.message);
        } else if (this.mRouterStrategy.getHostServiceInfo() == null) {
            TaesConstants.CompLoadState compLoadState2 = TaesConstants.CompLoadState.ERROR_SMS_NO_FOUND;
            listener.onLoadFail(compLoadState2.code, compLoadState2.message);
        } else if (this.mServiceManagerService == null) {
            this.mPendingLoadList = new Pair<>(list, listener);
        } else {
            loadComponentsInner(list, listener);
        }
    }

    private void loadComponentsInner(final List<ComponentConfigInfo> list, final ICompManager.Listener listener) {
        this.mHandler.post(new Runnable() { // from class: com.tencent.taes.framework.server.ServerCompsManager.1
            @Override // java.lang.Runnable
            public void run() {
                final CountDownLatch countDownLatch = new CountDownLatch(list.size());
                for (final ComponentConfigInfo componentConfigInfo : list) {
                    if (!ServerCompsManager.this.mLoadedComps.containsKey(componentConfigInfo.getName())) {
                        try {
                            Log.d(ServerCompsManager.TAG, "loadComponents configInfo:" + componentConfigInfo.getName());
                            ServerCompsManager.this.mServiceManagerService.loadServiceComponent(componentConfigInfo, new LoadListener.Stub() { // from class: com.tencent.taes.framework.server.ServerCompsManager.1.1
                                @Override // com.tencent.taes.framework.listener.LoadListener
                                public void onSuccess() throws RemoteException {
                                    ServerCompsManager.this.mLoadedComps.put(componentConfigInfo.getName(), componentConfigInfo);
                                    listener.onCompLoadSuccess(componentConfigInfo.getName());
                                    countDownLatch.countDown();
                                }

                                @Override // com.tencent.taes.framework.listener.LoadListener
                                public void onFail(int i, String str) throws RemoteException {
                                    Log.d(ServerCompsManager.TAG, "loadComponents configInfo:" + componentConfigInfo.getName() + ",errorCode: " + i + ",msg: " + str);
                                    listener.onCompLoadFail(componentConfigInfo.getName(), i);
                                    countDownLatch.countDown();
                                }
                            });
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    } else {
                        Log.d(ServerCompsManager.TAG, "loadComponents already load configInfo:" + componentConfigInfo.getName());
                        listener.onCompLoadSuccess(componentConfigInfo.getName());
                        countDownLatch.countDown();
                    }
                }
                try {
                    if (countDownLatch.await(10L, TimeUnit.SECONDS)) {
                        listener.onLoadSuccess();
                    } else {
                        for (ComponentConfigInfo componentConfigInfo2 : list) {
                            if (!ServerCompsManager.this.mLoadedComps.containsKey(componentConfigInfo2.getName())) {
                                listener.onCompLoadFail(componentConfigInfo2.getName(), TaesConstants.CompLoadState.ERROR_LOAD_OVER_TIME.code);
                            }
                        }
                    }
                    listener.onLoadComplete();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public <T> APIResult<T> getApi(final String str, Class<T> cls, Bundle bundle) {
        if (!this.isInited.get()) {
            return APIResult.ofError(100);
        }
        if (!this.mCacheLoadComps.containsKey(str)) {
            return APIResult.ofError(APIResult.ERROR_MODULE_NOT_FOUND);
        }
        String name = cls.getName();
        if (this.mCacheAPIs.containsKey(name)) {
            return APIResult.ofSuccess(this.mCacheAPIs.get(name));
        }
        if (this.mServiceManagerService == null) {
            return APIResult.ofError(600);
        }
        if (this.mLoadedComps.containsKey(str)) {
            return createApi(str, cls, bundle);
        }
        this.mHandler.post(new Runnable() { // from class: com.tencent.taes.framework.server.ServerCompsManager.2
            @Override // java.lang.Runnable
            public void run() {
                final ComponentConfigInfo componentConfigInfo = (ComponentConfigInfo) ServerCompsManager.this.mCacheLoadComps.get(str);
                try {
                    ServerCompsManager.this.mServiceManagerService.loadServiceComponent(componentConfigInfo, new LoadListener.Stub() { // from class: com.tencent.taes.framework.server.ServerCompsManager.2.1
                        @Override // com.tencent.taes.framework.listener.LoadListener
                        public void onSuccess() throws RemoteException {
                            ServerCompsManager.this.mLoadedComps.put(componentConfigInfo.getName(), componentConfigInfo);
                            Log.d(ServerCompsManager.TAG, "getApi loadServiceComponent success " + componentConfigInfo.getName());
                        }

                        @Override // com.tencent.taes.framework.listener.LoadListener
                        public void onFail(int i, String str2) throws RemoteException {
                            Log.e(ServerCompsManager.TAG, "getApi loadServiceComponent fail " + componentConfigInfo.getName());
                        }
                    });
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        });
        return APIResult.ofError(304);
    }

    private <T> APIResult<T> createApi(String str, Class<T> cls, Bundle bundle) {
        ComponentConfigInfo.SupportFeaturesBean featuresBean;
        String name = cls.getName();
        try {
            featuresBean = this.mLoadedComps.get(str).getFeaturesBean(name);
            Log.d(TAG, "getApi Remote featuresBean：" + featuresBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (featuresBean != null) {
            String binderName = featuresBean.getBinderName();
            String apiImpl = featuresBean.getApiImpl();
            Bundle remoteBinder = this.mServiceManagerService.getRemoteBinder(str, binderName, bundle);
            if (remoteBinder != null) {
                int i = remoteBinder.getInt("code", 402);
                Log.d(TAG, "getApi Remote " + i);
                if (i == 0) {
                    IBinder binder = remoteBinder.getBinder("data");
                    Constructor<?> declaredConstructor = Class.forName(apiImpl).getDeclaredConstructor(IBinder.class, IBinder.class);
                    declaredConstructor.setAccessible(true);
                    Object newInstance = declaredConstructor.newInstance(binder, this.mServiceManagerService.asBinder());
                    this.mCacheAPIs.put(name, newInstance);
                    return APIResult.ofSuccess(newInstance);
                }
                return APIResult.ofError(i);
            }
            return APIResult.ofError(402);
        }
        return APIResult.ofError(401);
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public String getModuleHostPkgName(String str) {
        try {
            Bundle bundle = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128).metaData;
            if (bundle != null && bundle.containsKey(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE) && !bundle.getBoolean(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE)) {
                return this.mContext.getPackageName();
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        ComponentConfigInfo componentConfigInfo = this.mCacheLoadComps.get(str);
        if (componentConfigInfo != null) {
            SubServiceRouterStrategy subServiceRouterStrategy = new SubServiceRouterStrategy();
            subServiceRouterStrategy.scanAndSortService(this.mContext, componentConfigInfo.getActionName(), Arrays.asList(this.mRemoteSmsPkgs));
            IRouterStrategy.ServiceItemInfo hostServiceInfo = subServiceRouterStrategy.getHostServiceInfo();
            if (hostServiceInfo != null) {
                return hostServiceInfo.pkgName;
            }
        }
        return this.mContext.getPackageName();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    @Override // com.tencent.taes.framework.interfaces.ICompManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ModuleHostInfo getModuleHostInfo(String str) {
        IRouterStrategy iRouterStrategy;
        IRouterStrategy.ServiceItemInfo hostServiceInfo;
        Bundle bundle;
        ModuleHostInfo moduleHostInfo = new ModuleHostInfo();
        ComponentConfigInfo componentConfigInfo = this.mCacheLoadComps.get(str);
        if (componentConfigInfo != null) {
            try {
                bundle = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            if (bundle != null && bundle.containsKey(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE) && !bundle.getBoolean(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE)) {
                iRouterStrategy = new SingleAppRouterStrategy();
                if (iRouterStrategy == null) {
                    iRouterStrategy = new SubServiceRouterStrategy();
                }
                iRouterStrategy.scanAndSortService(this.mContext, componentConfigInfo.getActionName(), Arrays.asList(this.mRemoteSmsPkgs));
                hostServiceInfo = iRouterStrategy.getHostServiceInfo();
                if (hostServiceInfo != null) {
                    moduleHostInfo.setHostName(hostServiceInfo.pkgName);
                    moduleHostInfo.setVersion(hostServiceInfo.versionCode);
                    moduleHostInfo.setLoaded(this.mLoadedComps.containsKey(str));
                    return moduleHostInfo;
                }
            }
            iRouterStrategy = null;
            if (iRouterStrategy == null) {
            }
            iRouterStrategy.scanAndSortService(this.mContext, componentConfigInfo.getActionName(), Arrays.asList(this.mRemoteSmsPkgs));
            hostServiceInfo = iRouterStrategy.getHostServiceInfo();
            if (hostServiceInfo != null) {
            }
        }
        return null;
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public void release() {
        destroy();
        this.mRemoteSmsPkgs = null;
        this.mServiceManagerService = null;
        this.mPendingLoadList = null;
        this.mCacheLoadComps.clear();
    }

    @Override // com.tencent.taes.framework.interfaces.ICompManager
    public void unloadComponent(ComponentConfigInfo componentConfigInfo) {
        if (componentConfigInfo == null || this.mServiceManagerService == null) {
            return;
        }
        try {
            this.mServiceManagerService.unloadServiceComponent(componentConfigInfo);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.framework.server.BaseClient
    protected void handleConnect(IBinder iBinder) {
        this.mServiceManagerService = IServiceManagerService.Stub.asInterface(iBinder);
        if (this.mPendingLoadList != null) {
            Log.d(TAG, "handleConnect " + ((List) this.mPendingLoadList.first).size());
            loadComponents((List) this.mPendingLoadList.first, (ICompManager.Listener) this.mPendingLoadList.second);
            this.mPendingLoadList = null;
        }
        asynHandleConnect();
    }

    private void asynHandleConnect() {
        verifyAppId(this.mAppId, this.mAppAlias);
        for (Object obj : this.mCacheAPIs.values()) {
            if (obj instanceof BaseRemoteApi) {
                ((BaseRemoteApi) obj).setServiceManagerService(this.mServiceManagerService);
            }
        }
    }

    @Override // com.tencent.taes.framework.server.BaseClient
    protected void handleDisConnect() {
        this.mServiceManagerService = null;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mLoadedComps.values());
        this.mPendingLoadList = new Pair<>(arrayList, new ICompManager.Listener() { // from class: com.tencent.taes.framework.server.ServerCompsManager.3
            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onCompLoadSuccess(String str) {
                Log.d(ServerCompsManager.TAG, "handleDisConnect Reload Success : " + str);
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadComplete() {
                Log.d(ServerCompsManager.TAG, "handleDisConnect Reload onLoadComplete");
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadSuccess() {
                Log.d(ServerCompsManager.TAG, "handleDisConnect Reload onLoadSuccess");
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadFail(int i, String str) {
                Log.d(ServerCompsManager.TAG, "handleDisConnect Reload onLoadFail:" + str);
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onCompLoadFail(String str, int i) {
                Log.d(ServerCompsManager.TAG, "handleDisConnect Reload onCompLoadFail:" + str);
            }
        });
    }

    private void verifyAppId(String str, String str2) {
        if (PackageUtils.isMainAppProcess(this.mContext)) {
            if (this.mServiceManagerService == null) {
                Log.e(TAG, "mServiceManagerService = null !!!");
                return;
            }
            try {
                String packageName = this.mContext.getPackageName();
                this.mServiceManagerService.verifyAppId(str, packageName, getSHA1Signature(this.mContext, packageName), str2, new IClientVerifyResult.Stub() { // from class: com.tencent.taes.framework.server.ServerCompsManager.4
                    @Override // com.tencent.taes.framework.auth.IClientVerifyResult
                    public void onVerifyResult(boolean z) throws RemoteException {
                        if (z) {
                            return;
                        }
                        Log.e(ServerCompsManager.TAG, ServerCompsManager.this.mContext + " Kill, AppId verify Fail!!!");
                        ServerCompsManager.this.exitApp();
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitApp() {
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) this.mContext.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.processName.startsWith(this.mContext.getPackageName()) && runningAppProcessInfo.pid != Process.myPid()) {
                Process.killProcess(runningAppProcessInfo.pid);
            }
        }
        Process.killProcess(Process.myPid());
        System.exit(0);
    }

    private String getSHA1Signature(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            byte[] digest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                String upperCase = Integer.toHexString(digest[i] & 255).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    sb.append(CarAppList.MediaPage.PAGE_FM);
                }
                sb.append(upperCase);
                if (i < length - 1) {
                    sb.append(":");
                }
            }
            return sb.toString();
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            Log.e(TAG, "getSHA1Signature : ", e);
            return null;
        }
    }
}
