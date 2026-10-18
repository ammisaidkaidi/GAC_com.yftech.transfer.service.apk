package com.tencent.taes.remote.impl.operate;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.operate.IOperateApi;
import com.tencent.taes.remote.api.operate.IOperateService;
import com.tencent.taes.remote.api.operate.bean.SceneBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneTipsInfo;
import com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo;
import com.tencent.taes.remote.api.operate.listener.ISceneBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.ISceneTipsInfoListener;
import com.tencent.taes.remote.api.operate.listener.ISceneWeakPushInfoListener;
import com.tencent.taes.remote.api.operate.listener.IStatusBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneStatusBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneTipsInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneWeakPushInfoListener;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class OperateApiRemoteApi extends BaseRemoteApi implements IOperateApi {
    private static final String TAG = "OperateApiRemoteApi";
    private List<SceneBannerInfo> mInfoList;
    private IOperateService mOperateService;
    private ISceneBannerInfoListener.Stub mSceneBannerInfoListener;
    private final List<SceneBannerInfoListener> mSceneBannerInfoListeners;
    private final List<SceneStatusBannerInfoListener> mSceneStatusBannerInfoListeners;
    private ISceneTipsInfoListener.Stub mSceneTipsInfoListener;
    private final List<SceneTipsInfoListener> mSceneTipsInfoListeners;
    private List<SceneTipsInfo> mSceneTipsList;
    private boolean mSceneWeakPushComplete;
    private ISceneWeakPushInfoListener.Stub mSceneWeakPushInfoListener;
    private final List<SceneWeakPushInfoListener> mSceneWeakPushInfoListeners;
    private IStatusBannerInfoListener.Stub mStatusBannerInfoListener;
    private List<SceneStatusBannerInfo> mStatusInfoList;
    private List<SceneWeakPushInfo> mWeakPushInfoList;

    private OperateApiRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mSceneBannerInfoListeners = new CopyOnWriteArrayList();
        this.mSceneTipsInfoListeners = new CopyOnWriteArrayList();
        this.mSceneStatusBannerInfoListeners = new CopyOnWriteArrayList();
        this.mSceneWeakPushInfoListeners = new CopyOnWriteArrayList();
        this.mSceneWeakPushComplete = false;
        this.mSceneBannerInfoListener = new ISceneBannerInfoListener.Stub() { // from class: com.tencent.taes.remote.impl.operate.OperateApiRemoteApi.1
            @Override // com.tencent.taes.remote.api.operate.listener.ISceneBannerInfoListener
            public void onSceneBannerInfo(List<SceneBannerInfo> list) throws RemoteException {
                Log.d(OperateApiRemoteApi.TAG, "onSceneBannerInfo info = " + list);
                OperateApiRemoteApi.this.mInfoList = list;
                for (SceneBannerInfoListener sceneBannerInfoListener : OperateApiRemoteApi.this.mSceneBannerInfoListeners) {
                    if (sceneBannerInfoListener != null) {
                        sceneBannerInfoListener.onSceneBannerInfo(list);
                    }
                }
            }
        };
        this.mSceneTipsInfoListener = new ISceneTipsInfoListener.Stub() { // from class: com.tencent.taes.remote.impl.operate.OperateApiRemoteApi.2
            @Override // com.tencent.taes.remote.api.operate.listener.ISceneTipsInfoListener
            public void onSceneTipsInfoListener(List<SceneTipsInfo> list) throws RemoteException {
                Log.d(OperateApiRemoteApi.TAG, "onSceneTipsInfo info = " + list);
                OperateApiRemoteApi.this.mSceneTipsList = list;
                for (SceneTipsInfoListener sceneTipsInfoListener : OperateApiRemoteApi.this.mSceneTipsInfoListeners) {
                    if (sceneTipsInfoListener != null) {
                        sceneTipsInfoListener.onSceneTipsInfo(list);
                    }
                }
            }
        };
        this.mStatusBannerInfoListener = new IStatusBannerInfoListener.Stub() { // from class: com.tencent.taes.remote.impl.operate.OperateApiRemoteApi.3
            @Override // com.tencent.taes.remote.api.operate.listener.IStatusBannerInfoListener
            public void onSceneBannerInfo(List<SceneStatusBannerInfo> list) throws RemoteException {
                OperateApiRemoteApi.this.mStatusInfoList = list;
                for (SceneStatusBannerInfoListener sceneStatusBannerInfoListener : OperateApiRemoteApi.this.mSceneStatusBannerInfoListeners) {
                    if (sceneStatusBannerInfoListener != null) {
                        sceneStatusBannerInfoListener.onSceneStatusBannerInfo(list);
                    }
                }
            }
        };
        this.mSceneWeakPushInfoListener = new ISceneWeakPushInfoListener.Stub() { // from class: com.tencent.taes.remote.impl.operate.OperateApiRemoteApi.4
            @Override // com.tencent.taes.remote.api.operate.listener.ISceneWeakPushInfoListener
            public void onSceneWeakPushInfo(List<SceneWeakPushInfo> list) throws RemoteException {
                OperateApiRemoteApi.this.mWeakPushInfoList = list;
                for (SceneWeakPushInfoListener sceneWeakPushInfoListener : OperateApiRemoteApi.this.mSceneWeakPushInfoListeners) {
                    if (sceneWeakPushInfoListener != null) {
                        sceneWeakPushInfoListener.onSceneWeakPushInfo(list);
                    }
                }
            }
        };
        onBind(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("Operate", IOperateService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        onBind(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    private void onBind(IBinder iBinder) {
        this.mOperateService = IOperateService.Stub.asInterface(iBinder);
        Log.d(TAG, "onBind mOperateService = " + this.mOperateService);
        try {
            this.mOperateService.registerSceneBannerInfoListener(this.mSceneBannerInfoListener);
        } catch (RemoteException e) {
            Log.e(TAG, "registerSceneBannerInfoListener exception caught ", e);
        }
        try {
            this.mOperateService.registerStatusBannerInfoListener(this.mStatusBannerInfoListener);
        } catch (RemoteException e2) {
            Log.e(TAG, "registerStatusBannerInfoListener exception caught ", e2);
        }
        try {
            this.mOperateService.registerSceneWeakPushInfoListener(this.mSceneWeakPushInfoListener);
        } catch (RemoteException e3) {
            Log.e(TAG, "registerSceneWeakPushInfoListener exception caught ", e3);
        }
        try {
            this.mOperateService.registerSceneTipsInfoListener(this.mSceneTipsInfoListener);
        } catch (RemoteException e4) {
            Log.e(TAG, "registerSceneTipsInfoListener exception caught ", e4);
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public List<SceneBannerInfo> getSceneBannerInfoList() {
        Log.d(TAG, "getSceneBannerInfoList mOperateService = " + this.mOperateService);
        if (this.mOperateService == null) {
            return null;
        }
        try {
            return this.mOperateService.getSceneBannerInfos();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void registerSceneBannerInfoListener(SceneBannerInfoListener sceneBannerInfoListener) {
        Log.d(TAG, "registerSceneBannerInfoListener mInfoList = " + this.mInfoList);
        if (sceneBannerInfoListener != null) {
            if (!this.mSceneBannerInfoListeners.contains(sceneBannerInfoListener)) {
                this.mSceneBannerInfoListeners.add(sceneBannerInfoListener);
            }
            if (this.mInfoList != null) {
                sceneBannerInfoListener.onSceneBannerInfo(this.mInfoList);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void unregisterSceneBannerInfoListener(SceneBannerInfoListener sceneBannerInfoListener) {
        Log.d(TAG, "unregisterSceneBannerInfoListener listener = " + sceneBannerInfoListener);
        if (sceneBannerInfoListener == null) {
            return;
        }
        this.mSceneBannerInfoListeners.remove(sceneBannerInfoListener);
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public List<SceneTipsInfo> getSceneTipsInfoList() {
        Log.d(TAG, "getSceneTipsInfoList mOperateService = " + this.mOperateService);
        if (this.mOperateService == null) {
            return null;
        }
        try {
            return this.mOperateService.getSceneTipsInfos();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void registerSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener) {
        Log.d(TAG, "registerSceneTipsInfoListener mSceneTipsInfo = " + this.mSceneTipsList);
        if (sceneTipsInfoListener != null) {
            if (!this.mSceneTipsInfoListeners.contains(sceneTipsInfoListener)) {
                this.mSceneTipsInfoListeners.add(sceneTipsInfoListener);
            }
            if (this.mSceneTipsList != null) {
                sceneTipsInfoListener.onSceneTipsInfo(this.mSceneTipsList);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void unregisterSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener) {
        Log.d(TAG, "unregisterSceneTipsInfoListener listener = " + sceneTipsInfoListener);
        if (sceneTipsInfoListener == null) {
            return;
        }
        this.mSceneTipsInfoListeners.remove(sceneTipsInfoListener);
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public boolean showSceneBannerDetail(String str, boolean z) {
        Log.d(TAG, "showSceneBannerDetail mOperateService = " + this.mOperateService);
        if (this.mOperateService == null) {
            return false;
        }
        try {
            this.mOperateService.showSceneBannerDetail(str, z);
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public List<SceneStatusBannerInfo> getStatusBannerInfos() {
        Log.d(TAG, "getStatusBannerInfos mOperateService = " + this.mOperateService);
        if (this.mOperateService == null) {
            return null;
        }
        try {
            return this.mOperateService.getStatusBannerInfos();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void registerStatusBannerInfoListener(SceneStatusBannerInfoListener sceneStatusBannerInfoListener) {
        Log.d(TAG, "registerStatusBannerInfoListener mInfoList = " + this.mStatusInfoList);
        if (sceneStatusBannerInfoListener != null) {
            if (!this.mSceneStatusBannerInfoListeners.contains(sceneStatusBannerInfoListener)) {
                this.mSceneStatusBannerInfoListeners.add(sceneStatusBannerInfoListener);
            }
            if (this.mStatusInfoList != null) {
                sceneStatusBannerInfoListener.onSceneStatusBannerInfo(this.mStatusInfoList);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void unregisterStatusBannerInfoListener(SceneStatusBannerInfoListener sceneStatusBannerInfoListener) {
        Log.d(TAG, "unregisterStatusBannerInfoListener listener = " + sceneStatusBannerInfoListener);
        if (sceneStatusBannerInfoListener == null) {
            return;
        }
        this.mSceneStatusBannerInfoListeners.remove(sceneStatusBannerInfoListener);
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public List<SceneWeakPushInfo> getSceneWeakPushInfos() {
        if (this.mSceneWeakPushComplete) {
            Log.d(TAG, "getSceneWeakPushInfos mWeakPushInfoList:" + this.mWeakPushInfoList);
            return this.mWeakPushInfoList;
        }
        Log.d(TAG, "getSceneWeakPushInfos mOperateService = " + this.mOperateService);
        if (this.mOperateService == null) {
            return null;
        }
        try {
            return this.mOperateService.getSceneWeakPushInfos();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void registerSceneWeakPushInfoListener(SceneWeakPushInfoListener sceneWeakPushInfoListener) {
        Log.d(TAG, "registerSceneWeakPushInfoListener mWeakPushInfoList = " + this.mWeakPushInfoList + "  mSceneWeakPushComplete:" + this.mSceneWeakPushComplete);
        if (sceneWeakPushInfoListener != null) {
            if (!this.mSceneWeakPushInfoListeners.contains(sceneWeakPushInfoListener)) {
                this.mSceneWeakPushInfoListeners.add(sceneWeakPushInfoListener);
            }
            if (this.mWeakPushInfoList != null) {
                sceneWeakPushInfoListener.onSceneWeakPushInfo(this.mWeakPushInfoList);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void unregisterSceneWeakPushInfoListener(SceneWeakPushInfoListener sceneWeakPushInfoListener) {
        Log.d(TAG, "unregisterSceneWeakPushInfoListener listener = " + sceneWeakPushInfoListener);
        if (sceneWeakPushInfoListener == null) {
            return;
        }
        this.mSceneWeakPushInfoListeners.remove(sceneWeakPushInfoListener);
    }

    @Override // com.tencent.taes.remote.api.operate.IOperateApi
    public void notifySceneWeakPushComplete() {
        Log.d(TAG, "notifySceneWeakPushComplete");
        this.mSceneWeakPushComplete = true;
        this.mWeakPushInfoList.clear();
    }
}
