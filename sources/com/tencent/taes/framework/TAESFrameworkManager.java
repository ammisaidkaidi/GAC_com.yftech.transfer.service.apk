package com.tencent.taes.framework;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.framework.TaesConstants;
import com.tencent.taes.framework.interfaces.ICompManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.framework.listener.TAESCompsListener;
import com.tencent.taes.framework.listener.TAESLoadListener;
import com.tencent.taes.framework.parser.ComponentConfigInfo;
import com.tencent.taes.framework.parser.ComponentUtils;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.framework.server.ServerCompsManager;
import com.tencent.taes.framework.server.eventbus.EventDispatcher;
import com.tencent.taes.util.config.ConfigInfo;
import com.tencent.taes.util.config.ConfigManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESFrameworkManager {
    private static final String TAG = "TAESFrameworkManager";
    private AtomicBoolean isInited;
    private List<ComponentConfigInfo> mClientComps;
    private Map<String, List<TAESCommonListener>> mCompsLoadListeners;
    private ConfigInfo mConfigInfo;
    private Context mContext;
    private EventDispatcher mEventDispatcher;
    private TAESCompsListener mListener;
    private HashMap<String, Pair<Integer, String>> mLoadFailCompsMsg;
    private ICompManager mRemoteCompManager;
    private String[] mRemoteSmsPkgs;
    private List<ComponentConfigInfo> mServerComps;

    private TAESFrameworkManager() {
        this.mClientComps = new ArrayList();
        this.mServerComps = new ArrayList();
        this.mCompsLoadListeners = new ConcurrentHashMap();
        this.isInited = new AtomicBoolean(false);
        this.mLoadFailCompsMsg = new HashMap<>();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class CoreFrameworkManagerHolder {
        private static final TAESFrameworkManager INSTANCE = new TAESFrameworkManager();

        private CoreFrameworkManagerHolder() {
        }
    }

    public static TAESFrameworkManager getInstance() {
        return CoreFrameworkManagerHolder.INSTANCE;
    }

    public void init(Context context) {
        if (this.isInited.get()) {
            return;
        }
        this.mConfigInfo = ConfigManager.getInstance().getConfigInfo(context, ConfigConstant.CONFIG_FILE_NAME);
        if (this.mConfigInfo == null) {
            Log.e(TAG, "ERROR_NO_CONFIG_FILE");
            throw new RuntimeException("ERROR_NO_CONFIG_FILE assets:component_config.json");
        }
        init(context, this.mConfigInfo.getString("appId"), this.mConfigInfo.getString("alias"), this.mConfigInfo.getStringArray(ConfigConstant.CONFIG_KEY_CONNECT_SMS_NAMES));
        loadComponents(ComponentUtils.parseConfig(this.mConfigInfo), null);
    }

    public void init(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("AppId or Alias is Null !!!");
        }
        if (this.isInited.get()) {
            return;
        }
        this.mRemoteSmsPkgs = strArr;
        this.mEventDispatcher = new EventDispatcher(context, this.mRemoteSmsPkgs);
        this.mContext = context;
        this.mRemoteCompManager = new ServerCompsManager(this.mContext);
        this.mRemoteCompManager.init(context, strArr, str, str2);
        this.isInited.set(true);
    }

    public synchronized void loadComponents(List<ComponentConfigInfo> list, TAESCompsListener tAESCompsListener) {
        this.mListener = tAESCompsListener;
        this.mServerComps.clear();
        this.mClientComps.clear();
        for (ComponentConfigInfo componentConfigInfo : list) {
            if (componentConfigInfo.isServerComponent()) {
                this.mServerComps.add(componentConfigInfo);
            } else {
                this.mClientComps.add(componentConfigInfo);
            }
        }
        loadServerComponents();
    }

    private void loadServerComponents() {
        if (this.mRemoteCompManager != null) {
            this.mRemoteCompManager.loadComponents(new ArrayList(this.mServerComps), new ICompManager.Listener() { // from class: com.tencent.taes.framework.TAESFrameworkManager.1
                @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
                public void onCompLoadSuccess(String str) {
                    TAESFrameworkManager.this.notifyCompLoadSuccess(str);
                }

                @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
                public void onCompLoadFail(String str, int i) {
                    TAESFrameworkManager.this.notifyCompLoadFail(str, i);
                }

                @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
                public void onLoadComplete() {
                    TAESFrameworkManager.this.notifyLoadComplete();
                }

                @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
                public void onLoadSuccess() {
                    Log.d(TAESFrameworkManager.TAG, "loadServerComponents onLoadSuccess");
                    TAESFrameworkManager.this.notifyLoadSuccess();
                }

                @Override // com.tencent.taes.framework.interfaces.ICompManager.Listener
                public void onLoadFail(int i, String str) {
                    TAESFrameworkManager.this.notifyLoadFail(i, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCompLoadSuccess(String str) {
        Log.d(TAG, "onLoadSuccess moduleName:" + str);
        if (this.mListener != null) {
            this.mListener.onCompLoadSuccess(str);
        }
        List<TAESCommonListener> list = this.mCompsLoadListeners.get(str);
        if (list != null) {
            Iterator<TAESCommonListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onSuccess();
            }
        }
        this.mCompsLoadListeners.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCompLoadFail(String str, int i) {
        Log.d(TAG, "onLoadFail moduleName:" + str);
        if (this.mListener != null) {
            this.mListener.onCompLoadFail(str, i);
        }
        List<TAESCommonListener> list = this.mCompsLoadListeners.get(str);
        if (list != null) {
            for (TAESCommonListener tAESCommonListener : list) {
                TaesConstants.CompLoadState compLoadState = TaesConstants.CompLoadState.ERROR_COMP_LOAD_FAIL;
                tAESCommonListener.onFail(compLoadState.code, compLoadState.message + str + " " + i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLoadComplete() {
        Log.d(TAG, "loadLocalComponents onLoadComplete");
        if (this.mListener != null) {
            this.mListener.onLoadComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLoadSuccess() {
        Log.d(TAG, "loadComponents onLoadSuccess");
        if (this.mListener != null) {
            this.mListener.onLoadSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLoadFail(int i, String str) {
        Log.e(TAG, "loadLocalComponents onLoadFail " + i + "  " + str);
        if (this.mListener != null) {
            this.mListener.onLoadFail(i, str);
        }
        notifyCompsLoadFail(this.mServerComps, i, str);
    }

    private void notifyCompsLoadFail(List<ComponentConfigInfo> list, int i, String str) {
        for (ComponentConfigInfo componentConfigInfo : list) {
            List<TAESCommonListener> list2 = this.mCompsLoadListeners.get(componentConfigInfo.getName());
            if (list2 != null && list2.size() != 0) {
                Iterator<TAESCommonListener> it = list2.iterator();
                while (it.hasNext()) {
                    it.next().onFail(i, str);
                }
            }
            this.mLoadFailCompsMsg.put(componentConfigInfo.getName(), new Pair<>(Integer.valueOf(i), str));
        }
    }

    public synchronized void unloadComponent(ComponentConfigInfo componentConfigInfo) {
        if (componentConfigInfo.isServerComponent() && this.mRemoteCompManager != null) {
            this.mRemoteCompManager.unloadComponent(componentConfigInfo);
        }
    }

    public boolean checkModuleLoaded(String str) {
        if (this.isInited.get()) {
            return this.mRemoteCompManager.checkModuleLoaded(str);
        }
        return false;
    }

    public synchronized <T> APIResult<T> getApi(String str, Class<T> cls, Bundle bundle) {
        if (!this.isInited.get()) {
            return APIResult.ofError(100);
        }
        APIResult<T> ofError = APIResult.ofError(APIResult.ERROR_MODULE_NOT_FOUND);
        ComponentConfigInfo componentConfigInfo = getComponentConfigInfo(str);
        if (componentConfigInfo != null && componentConfigInfo.isServerComponent()) {
            ofError = this.mRemoteCompManager.getApi(str, cls, bundle);
        }
        if (ofError != null) {
            Log.d(TAG, "getApi " + cls.getName() + " apiResult:" + ofError.isSuccess() + "   " + ofError.codeDescription());
        }
        return ofError;
    }

    public synchronized <T> void loadApi(final String str, final Class<T> cls, final Bundle bundle, final TAESLoadListener<T> tAESLoadListener) {
        APIResult<T> api = getApi(str, cls, bundle);
        if (api.isSuccess()) {
            try {
                tAESLoadListener.onSuccess(api.data);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return;
        }
        registerCompLoadListener(str, new TAESCommonListener() { // from class: com.tencent.taes.framework.TAESFrameworkManager.2
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                if (tAESLoadListener != null) {
                    APIResult api2 = TAESFrameworkManager.this.getApi(str, cls, bundle);
                    if (api2.isSuccess()) {
                        try {
                            tAESLoadListener.onSuccess(api2.data);
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    tAESLoadListener.onFail(api2.code, api2.codeDescription());
                }
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str2) {
                if (tAESLoadListener != null) {
                    tAESLoadListener.onFail(i, str2);
                }
            }
        });
    }

    public void release() {
        if (this.mRemoteCompManager != null) {
            this.mRemoteCompManager.release();
            this.mRemoteCompManager = null;
        }
        this.mServerComps.clear();
        this.mClientComps.clear();
        this.mCompsLoadListeners.clear();
        this.mLoadFailCompsMsg.clear();
        this.mListener = null;
        this.isInited.set(false);
    }

    public synchronized void registerCompLoadListener(String str, TAESCommonListener tAESCommonListener) {
        Pair<Integer, String> pair;
        if (checkModuleLoaded(str)) {
            tAESCommonListener.onSuccess();
            return;
        }
        if (this.mLoadFailCompsMsg.containsKey(str) && (pair = this.mLoadFailCompsMsg.get(str)) != null) {
            tAESCommonListener.onFail(((Integer) pair.first).intValue(), (String) pair.second);
            return;
        }
        if (this.mCompsLoadListeners.containsKey(str)) {
            this.mCompsLoadListeners.get(str).add(tAESCommonListener);
        } else {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
            copyOnWriteArrayList.add(tAESCommonListener);
            this.mCompsLoadListeners.put(str, copyOnWriteArrayList);
        }
    }

    public void unregisterCompLoadListener(String str, TAESCommonListener tAESCommonListener) {
        if (this.mCompsLoadListeners.containsKey(str)) {
            this.mCompsLoadListeners.get(str).remove(tAESCommonListener);
        }
    }

    public EventDispatcher getEventDispatcher() {
        return this.mEventDispatcher;
    }

    private ComponentConfigInfo getComponentConfigInfo(String str) {
        for (ComponentConfigInfo componentConfigInfo : this.mClientComps) {
            if (componentConfigInfo.getName().equals(str)) {
                return componentConfigInfo;
            }
        }
        for (ComponentConfigInfo componentConfigInfo2 : this.mServerComps) {
            if (componentConfigInfo2.getName().equals(str)) {
                return componentConfigInfo2;
            }
        }
        return null;
    }
}
