package com.tencent.taes;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.scenebizsdk.SceneManager;
import com.tencent.taes.api.account.IAccountApi;
import com.tencent.taes.api.gui.IGUIPolicyApi;
import com.tencent.taes.api.infodispatch.InfoDispatchApi;
import com.tencent.taes.api.location.ILocationApi;
import com.tencent.taes.api.map.IMapApi;
import com.tencent.taes.api.moss.IMossApi;
import com.tencent.taes.api.moss.IWeCarMasApi;
import com.tencent.taes.api.open.IOpenApi;
import com.tencent.taes.api.routeguide.IRouteGuideApi;
import com.tencent.taes.api.scene.ISceneApi;
import com.tencent.taes.api.search.IPoiSearchApi;
import com.tencent.taes.api.tts.ITtsApi;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.framework.listener.TAESCompsListener;
import com.tencent.taes.framework.parser.ComponentConfigInfo;
import com.tencent.taes.framework.parser.ComponentUtils;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.impl.account.AccountApiImpl;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.impl.infodispatch.InfoDispatchApiImpl;
import com.tencent.taes.impl.location.LocationApiImpl;
import com.tencent.taes.impl.map.MapApiImpl;
import com.tencent.taes.impl.moss.MossApiImpl;
import com.tencent.taes.impl.moss.WeCarMasApiImpl;
import com.tencent.taes.impl.open.OpenApiImpl;
import com.tencent.taes.impl.routeguide.RouteGuideApiImpl;
import com.tencent.taes.impl.scene.SceneApiImpl;
import com.tencent.taes.impl.search.PoiSearchApiImpl;
import com.tencent.taes.impl.tts.TtsApiImpl;
import com.tencent.taes.util.FileUtils;
import com.tencent.taes.util.config.ConfigInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaesSDK {
    private static final int CHECK_INTERVAL = 15000;
    private static final int MAX_RETRY_COUNT = 20;
    private static final String TAG = "TaesSDK";
    private static volatile TaesSDK sAPIs;
    private static final Map<Class<?>, AbstractApi> mAPIInstanceMap = new HashMap();
    private static final Set<String> mExcludeServices = new HashSet();
    private static AtomicBoolean mInitialized = new AtomicBoolean(false);
    private static final Map<Class<?>, Class<? extends AbstractApi>> APIs = Collections.unmodifiableMap(new HashMap<Class<?>, Class<? extends AbstractApi>>() { // from class: com.tencent.taes.TaesSDK.1
        {
            put(InfoDispatchApi.class, InfoDispatchApiImpl.class);
            put(ILocationApi.class, LocationApiImpl.class);
            put(IMapApi.class, MapApiImpl.class);
            put(IMossApi.class, MossApiImpl.class);
            put(IWeCarMasApi.class, WeCarMasApiImpl.class);
            put(IOpenApi.class, OpenApiImpl.class);
            put(IRouteGuideApi.class, RouteGuideApiImpl.class);
            put(ISceneApi.class, SceneApiImpl.class);
            put(IPoiSearchApi.class, PoiSearchApiImpl.class);
            put(IAccountApi.class, AccountApiImpl.class);
            put(ITtsApi.class, TtsApiImpl.class);
        }
    });

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InitListener {
        void onInitError(String str, int i);

        void onInitSuccess();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ServiceEnum {
        public static final String ACCOUNT = "Account";
        public static final String INFODISPATCHER = "InfoDispatcher";
        public static final String LOCATION = "Location";
        public static final String MAP = "MapService";
        public static final String OPERATE = "Operate";
        public static final String POLICY = "Policy";
        public static final String TTS = "TTS";
    }

    private TaesSDK() {
    }

    public static void init(final Context context, int i, final String str, final String str2, final InitListener initListener) {
        if (mInitialized.get()) {
            return;
        }
        Log.e(TAG, "TAES SDK Version: 1.9.12.99");
        if (initListener == null || context == null) {
            Log.e(TAG, "listener is null or context is null");
            return;
        }
        TaesSDKHelper.setContext(context);
        TaesSDKHelper.setVersionType(i);
        initTTSMoss(context);
        new Thread(new Runnable() { // from class: com.tencent.taes.TaesSDK.2
            @Override // java.lang.Runnable
            public void run() {
                int i2 = 0;
                while (true) {
                    if (TaesSDK.isHostAppInstalled(context)) {
                        break;
                    }
                    int i3 = i2 + 1;
                    if (i2 > 20) {
                        Log.d(TaesSDK.TAG, "checkAppIsInstall fail, exit init");
                        break;
                    }
                    Log.d(TaesSDK.TAG, "sleep 15s checkAppIsInstall, mRetryCount: " + i3);
                    try {
                        Thread.sleep(15000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    i2 = i3;
                }
                TaesSDK.initInner(context, str, str2, initListener);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0092 -> B:21:0x0095). Please report as a decompilation issue!!! */
    public static void initInner(Context context, String str, String str2, final InitListener initListener) {
        InputStream inputStream;
        String readInputStream;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        inputStream2 = null;
        try {
            try {
                try {
                    inputStream = context.getAssets().open(TaesSDKHelper.getConfigFileName());
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream2;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            inputStream2 = inputStream2;
        }
        try {
            readInputStream = FileUtils.readInputStream(inputStream);
        } catch (Exception e3) {
            e = e3;
            inputStream3 = inputStream;
            e.printStackTrace();
            inputStream2 = inputStream3;
            if (inputStream3 != null) {
                inputStream3.close();
                inputStream2 = inputStream3;
            }
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        if (TextUtils.isEmpty(readInputStream)) {
            Log.e(TAG, "config is null");
            if (inputStream != null) {
                try {
                    inputStream.close();
                    return;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    return;
                }
            }
            return;
        }
        ConfigInfo configInfo = new ConfigInfo(new JSONObject(readInputStream));
        String[] stringArray = configInfo.getStringArray(ConfigConstant.CONFIG_KEY_CONNECT_SMS_NAMES);
        SceneManager.getInstance().init(context, "com.tencent." + configInfo.getString(ConfigConstant.INTENT_URI_SCHEME), "com.tencent.taes.push.mqtt.MqttManager.TaiPushService");
        TAESFrameworkManager.getInstance().init(context, str, str2, stringArray);
        List<ComponentConfigInfo> serverComponents = ComponentUtils.getServerComponents(configInfo);
        excludeNoNeedService(serverComponents);
        mInitialized.set(true);
        TAESFrameworkManager.getInstance().loadComponents(serverComponents, new TAESCompsListener() { // from class: com.tencent.taes.TaesSDK.3
            @Override // com.tencent.taes.framework.listener.TAESCompsListener
            public void onLoadLocalCompsComplete() {
            }

            @Override // com.tencent.taes.framework.listener.TAESCompsListener
            public void onLoadServerCompsComplete() {
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onCompLoadSuccess(String str3) {
                Log.d(TaesSDK.TAG, "loadComponent " + str3 + " Success !");
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onCompLoadFail(String str3, int i) {
                Log.d(TaesSDK.TAG, "loadComponent " + str3 + " fail, errorCode: " + i);
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadComplete() {
                if (InitListener.this != null) {
                    InitListener.this.onInitSuccess();
                }
                Log.d(TaesSDK.TAG, "onLoadComplete ");
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadSuccess() {
                Log.d(TaesSDK.TAG, "onLoadSuccess ");
            }

            @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
            public void onLoadFail(int i, String str3) {
                if (InitListener.this != null) {
                    InitListener.this.onInitError(str3, i);
                }
            }
        });
        inputStream2 = stringArray;
        if (inputStream != null) {
            inputStream.close();
            inputStream2 = stringArray;
        }
    }

    private static void initTTSMoss(Context context) {
        try {
            TtsApiImpl ttsApiImpl = new TtsApiImpl();
            ttsApiImpl.initTts();
            WeCarMasApiImpl weCarMasApiImpl = new WeCarMasApiImpl();
            weCarMasApiImpl.registerConnection(context);
            MossApiImpl mossApiImpl = new MossApiImpl();
            mossApiImpl.registerConnection(context);
            mAPIInstanceMap.put(ITtsApi.class, ttsApiImpl);
            mAPIInstanceMap.put(IWeCarMasApi.class, weCarMasApiImpl);
            mAPIInstanceMap.put(IMossApi.class, mossApiImpl);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isHostAppInstalled(Context context) {
        boolean checkApkExist = checkApkExist(context, "com.tencent.wecar");
        boolean checkApkExist2 = checkApkExist(context, "com.tencent.wecarnavi");
        Log.d(TAG, "isInstallWeCar: " + checkApkExist + ", isInstallWeCarNavi: " + checkApkExist2);
        if (checkApkExist || checkApkExist2) {
            return true;
        }
        Log.e(TAG, "检测到您没有安装腾讯地图或腾讯随行APP，你将无法使用TAES SDK的能力。");
        return false;
    }

    public static void unInit() {
        mInitialized.set(false);
        TaesSDKHelper.setContext(null);
    }

    private static TaesSDK getInstance() {
        if (sAPIs == null) {
            synchronized (TaesSDK.class) {
                if (sAPIs == null) {
                    sAPIs = new TaesSDK();
                }
            }
        }
        return sAPIs;
    }

    public static void addExcludeService(String str) {
        mExcludeServices.add(str);
    }

    private static void excludeNoNeedService(List<ComponentConfigInfo> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            return;
        }
        for (ComponentConfigInfo componentConfigInfo : list) {
            if (mExcludeServices.contains(componentConfigInfo.getName())) {
                arrayList.add(componentConfigInfo);
                Log.e(TAG, "excludeService:" + componentConfigInfo.getName());
            }
        }
        list.removeAll(arrayList);
    }

    public static <T> T getApi(Class<T> cls) {
        if (TaesSDKHelper.getContext() == null) {
            throw new IllegalStateException("Context cannot be null!");
        }
        return (T) getInstance().create(cls);
    }

    public static IPoiSearchApi getPoiSearchApi() {
        return (IPoiSearchApi) getApi(IPoiSearchApi.class);
    }

    public static IOpenApi getOpenApi() {
        return (IOpenApi) getApi(IOpenApi.class);
    }

    public static IMossApi getMossApi() {
        return (IMossApi) getApi(IMossApi.class);
    }

    public static IWeCarMasApi getWeCarMasApi() {
        return (IWeCarMasApi) getApi(IWeCarMasApi.class);
    }

    public static ISceneApi getSceneApi() {
        return (ISceneApi) getApi(ISceneApi.class);
    }

    public static IAccountApi getAccountApi() {
        return (IAccountApi) getApi(IAccountApi.class);
    }

    public static ITtsApi getTtsApi() {
        return (ITtsApi) getApi(ITtsApi.class);
    }

    public static IMapApi getMapApi() {
        return (IMapApi) getApi(IMapApi.class);
    }

    public static InfoDispatchApi getInfoDispatchApi() {
        return (InfoDispatchApi) getApi(InfoDispatchApi.class);
    }

    public static IRouteGuideApi getRouteGuideApi() {
        return (IRouteGuideApi) getApi(IRouteGuideApi.class);
    }

    public static ILocationApi getLocationApi() {
        return (ILocationApi) getApi(ILocationApi.class);
    }

    public static IGUIPolicyApi getGUIPolicyApi() {
        return (IGUIPolicyApi) getApi(IGUIPolicyApi.class);
    }

    public static void destoryPoiSearchApi() {
        destroyApi(IPoiSearchApi.class);
    }

    public static void destoryOpenApi() {
        destroyApi(IOpenApi.class);
    }

    public static void destoryMossApi() {
        destroyApi(IMossApi.class);
    }

    public static void destoryAccountApi() {
        destroyApi(IAccountApi.class);
    }

    public static void destoryTtsApi() {
        destroyApi(ITtsApi.class);
    }

    public static void destoryInfoDispatchApi() {
        destroyApi(InfoDispatchApi.class);
    }

    public static void destoryMapApi() {
        destroyApi(IMapApi.class);
    }

    public static void destoryRouteGuideApi() {
        destroyApi(IRouteGuideApi.class);
    }

    public static void destoryLocationApi() {
        destroyApi(ILocationApi.class);
    }

    public static void destroyGUIPolicyApi() {
        destroyApi(IGUIPolicyApi.class);
    }

    public static void destroyAllApi() {
        Iterator<Class<?>> it = APIs.keySet().iterator();
        while (it.hasNext()) {
            destroyApi(it.next());
        }
    }

    private static void destroyApi(Class<?> cls) {
        getInstance().dispose(cls);
    }

    private <T> T create(Class<T> cls) {
        T t;
        Exception e;
        if (cls == null) {
            throw new NullPointerException("the param of getApi can't be null.");
        }
        synchronized (cls) {
            if (mAPIInstanceMap.containsKey(cls)) {
                t = cls.cast(mAPIInstanceMap.get(cls));
            } else {
                try {
                    Class<? extends AbstractApi> cls2 = APIs.get(cls);
                    if (cls2 == null) {
                        throw new NullPointerException("the param of getApi can't get a class from APIs.");
                    }
                    t = cls.cast(cls2.newInstance());
                    try {
                        mAPIInstanceMap.put(cls, (AbstractApi) t);
                        Log.d(TAG, "create API " + cls.getSimpleName() + " successfully!");
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(TAG, "create API " + cls.getSimpleName() + " failed!");
                        e.printStackTrace();
                        return (T) t;
                    }
                } catch (Exception e3) {
                    t = (T) null;
                    e = e3;
                }
            }
        }
        return (T) t;
    }

    private void dispose(Class<?> cls) {
        synchronized (cls) {
            AbstractApi abstractApi = mAPIInstanceMap.get(cls);
            if (abstractApi != null) {
                Log.d(TAG, "dispose API " + cls.getSimpleName() + " successfully!");
                abstractApi.dispose();
                mAPIInstanceMap.remove(cls);
            }
        }
    }

    public static synchronized void registerCompLoadListener(String str, TAESCommonListener tAESCommonListener) {
        synchronized (TaesSDK.class) {
            TAESFrameworkManager.getInstance().registerCompLoadListener(str, tAESCommonListener);
        }
    }

    public static void unregisterCompLoadListener(String str, TAESCommonListener tAESCommonListener) {
        TAESFrameworkManager.getInstance().unregisterCompLoadListener(str, tAESCommonListener);
    }

    private static boolean checkApkExist(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (Build.VERSION.SDK_INT >= 28) {
                Log.d(TAG, "versionName: " + packageInfo.versionName + ", versionCode: " + packageInfo.getLongVersionCode());
            } else {
                Log.d(TAG, "versionName: " + packageInfo.versionName + ", versionCode: " + packageInfo.versionCode);
            }
            return !packageInfo.versionName.contains("WeCarNaviStub");
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
