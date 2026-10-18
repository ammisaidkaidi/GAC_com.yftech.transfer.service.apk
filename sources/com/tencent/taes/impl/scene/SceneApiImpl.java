package com.tencent.taes.impl.scene;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.tencent.scenebizsdk.IMsgListener;
import com.tencent.scenebizsdk.SceneManager;
import com.tencent.scenebizsdk.model.widgets.ActionData;
import com.tencent.sceneengine.IMessageValidator;
import com.tencent.taes.TaesSDKHelper;
import com.tencent.taes.api.scene.ISceneApi;
import com.tencent.taes.api.scene.bean.SceneInfo;
import com.tencent.taes.api.scene.listener.SceneInfoListener;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.open.OpenApiConsts;
import com.tencent.taes.remote.api.operate.IOperateApi;
import com.tencent.taes.remote.api.operate.bean.SceneBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneTipsInfo;
import com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo;
import com.tencent.taes.remote.api.operate.listener.SceneBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneTipsInfoListener;
import com.tencent.taes.util.GsonUtils;
import com.tencent.taes.util.config.ConfigManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneApiImpl extends AbstractApi implements ISceneApi {
    private static final String TAG = "SceneApiImpl";
    private String mIntentAction;
    private String mIntentScheme;
    private List<SceneInfo> mSceneInfoList;
    private final List<SceneInfoListener> mSceneInfoListeners = new CopyOnWriteArrayList();
    private final List<SceneTipsInfoListener> mSceneTipsInfoListeners = new CopyOnWriteArrayList();
    private IOperateApi mOperateApi = null;
    private SceneBannerInfoListener mSceneBannerInfoListener = new SceneBannerInfoListener() { // from class: com.tencent.taes.impl.scene.SceneApiImpl.1
        @Override // com.tencent.taes.remote.api.operate.listener.SceneBannerInfoListener
        public void onSceneBannerInfo(List<SceneBannerInfo> list) {
            Log.d(SceneApiImpl.TAG, "onSceneBannerInfo");
            SceneApiImpl.this.mSceneInfoList = SceneApiImpl.this.convertToSceneInfo(list);
            Iterator it = SceneApiImpl.this.mSceneInfoListeners.iterator();
            while (it.hasNext()) {
                ((SceneInfoListener) it.next()).onSceneInfo(SceneApiImpl.this.mSceneInfoList);
            }
        }
    };

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public SceneApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("Operate", new TAESCommonListener() { // from class: com.tencent.taes.impl.scene.SceneApiImpl.2
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                SceneApiImpl.this.getOperateRemoteApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(SceneApiImpl.TAG, "TAESFrameworkManager.getInstance().getSceneRemoteApi 获取失败 onFail：errorCode = " + i + ", msg = " + str);
            }
        });
        this.mIntentScheme = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_URI_SCHEME);
        this.mIntentAction = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_API_ACTION);
    }

    private void unInit() {
        this.mOperateApi = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getOperateRemoteApi() {
        if (this.mOperateApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("Operate", IOperateApi.class, null);
            if (api.isSuccess()) {
                this.mOperateApi = (IOperateApi) api.data;
                initListener();
                Log.d(TAG, "TAESFrameworkManager.getInstance().getOperateRemoteApi mOperateApi = " + this.mOperateApi);
                return;
            }
            Log.e(TAG, "TAESFrameworkManager.getInstance().getOperateRemoteApi 获取失败 " + api.codeDescription());
        }
    }

    private void initListener() {
        if (this.mOperateApi == null) {
            return;
        }
        this.mOperateApi.registerSceneBannerInfoListener(this.mSceneBannerInfoListener);
        Iterator<SceneTipsInfoListener> it = this.mSceneTipsInfoListeners.iterator();
        while (it.hasNext()) {
            this.mOperateApi.registerSceneTipsInfoListener(it.next());
        }
    }

    private void unInitListener() {
        Log.d(TAG, "unInitListener");
        if (this.mOperateApi == null) {
            return;
        }
        this.mOperateApi.unregisterSceneBannerInfoListener(this.mSceneBannerInfoListener);
        Iterator<SceneInfoListener> it = this.mSceneInfoListeners.iterator();
        while (it.hasNext()) {
            unregisterSceneInfoListener(it.next());
        }
        Iterator<SceneTipsInfoListener> it2 = this.mSceneTipsInfoListeners.iterator();
        while (it2.hasNext()) {
            this.mOperateApi.unregisterSceneTipsInfoListener(it2.next());
        }
    }

    private void clearListener() {
        this.mSceneInfoListeners.clear();
        this.mSceneTipsInfoListeners.clear();
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public List<SceneInfo> getSceneInfoList() {
        if (this.mOperateApi == null) {
            Log.e(TAG, "getSceneInfoList Exception：mOperateApi is null");
            getOperateRemoteApi();
            return null;
        }
        return convertToSceneInfo(this.mOperateApi.getSceneBannerInfoList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<SceneInfo> convertToSceneInfo(List<SceneBannerInfo> list) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        if (list != null && list.size() != 0) {
            for (SceneBannerInfo sceneBannerInfo : list) {
                if (sceneBannerInfo != null) {
                    SceneInfo sceneInfo = new SceneInfo();
                    sceneInfo.setUuid(sceneBannerInfo.getUuid());
                    sceneInfo.setBgImage(sceneBannerInfo.getBgImage());
                    sceneInfo.setIcon(sceneBannerInfo.getIcon());
                    sceneInfo.setIconText(sceneBannerInfo.getIconText());
                    sceneInfo.setTitle(sceneBannerInfo.getTitle());
                    sceneInfo.setSubTitle(sceneBannerInfo.getSubTitle());
                    sceneInfo.setValidStartTime(sceneBannerInfo.getValidStartTime());
                    sceneInfo.setValidEndTime(sceneBannerInfo.getValidEndTime());
                    sceneInfo.setVanishTime(sceneBannerInfo.getVanishTime());
                    sceneInfo.setClosable(sceneBannerInfo.isClosable());
                    copyOnWriteArrayList.add(sceneInfo);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void registerSceneInfoListener(SceneInfoListener sceneInfoListener) {
        Log.d(TAG, "registerSceneInfoListener mSceneInfoList = " + this.mSceneInfoList);
        if (sceneInfoListener == null) {
            return;
        }
        if (!this.mSceneInfoListeners.contains(sceneInfoListener)) {
            this.mSceneInfoListeners.add(sceneInfoListener);
        }
        if (this.mSceneInfoList != null) {
            sceneInfoListener.onSceneInfo(this.mSceneInfoList);
        }
        Log.d(TAG, "registerSceneBannerInfoListener");
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void unregisterSceneInfoListener(SceneInfoListener sceneInfoListener) {
        Log.d(TAG, "unregisterSceneInfoListener");
        if (sceneInfoListener == null) {
            return;
        }
        this.mSceneInfoListeners.remove(sceneInfoListener);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public boolean showSceneDetail(String str, boolean z) {
        if (this.mOperateApi == null) {
            Log.e(TAG, "showSceneDetail Exception：mOperateApi is null");
            getOperateRemoteApi();
            return false;
        }
        return this.mOperateApi.showSceneBannerDetail(str, z);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void registerSceneMsgListener(IMsgListener iMsgListener) {
        List<SceneWeakPushInfo> sceneWeakPushInfos;
        if (iMsgListener == null) {
            return;
        }
        SceneManager.getInstance().registerSceneMsgListener(iMsgListener);
        if (this.mOperateApi == null || (sceneWeakPushInfos = this.mOperateApi.getSceneWeakPushInfos()) == null || sceneWeakPushInfos.size() == 0) {
            return;
        }
        for (SceneWeakPushInfo sceneWeakPushInfo : sceneWeakPushInfos) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("operationMessage", GsonUtils.toJson(sceneWeakPushInfo));
                SceneManager.getInstance().dispatchSceneMsg(jSONObject.toString(), sceneWeakPushInfo.getUuid(), System.currentTimeMillis());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void unregisterSceneMsgListener(IMsgListener iMsgListener) {
        SceneManager.getInstance().unregisterSceneMsgListener(iMsgListener);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void registerMsgValidator(int i, IMessageValidator iMessageValidator) {
        SceneManager.getInstance().registerMsgValidator(i, iMessageValidator);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void unregisterMsgValidator(int i) {
        SceneManager.getInstance().unregisterMsgValidator(i);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void dispatchActions(ActionData actionData) {
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.DISPATCH_SCENE_ACTIONS_FROM_CLIENT + "?"));
        intent.putExtra(OpenApiConsts.Key.ACTIONS, GsonUtils.toJson(actionData.action));
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public List<SceneTipsInfo> getSceneTipsInfoList() {
        if (this.mOperateApi == null) {
            Log.e(TAG, "getSceneInfoList Exception：mOperateApi is null");
            getOperateRemoteApi();
            return null;
        }
        return this.mOperateApi.getSceneTipsInfoList();
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void registerSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener) {
        if (sceneTipsInfoListener == null) {
            return;
        }
        if (!this.mSceneTipsInfoListeners.contains(sceneTipsInfoListener)) {
            this.mSceneTipsInfoListeners.add(sceneTipsInfoListener);
        }
        if (this.mOperateApi == null) {
            Log.e(TAG, "registerSubscribeMessageListener Exception：mOperateApi is null ");
            getOperateRemoteApi();
        } else {
            this.mOperateApi.registerSceneTipsInfoListener(sceneTipsInfoListener);
        }
    }

    @Override // com.tencent.taes.api.scene.ISceneApi
    public void unregisterSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener) {
        Log.d(TAG, "unregisterSceneTipsInfoListener");
        if (sceneTipsInfoListener == null) {
            return;
        }
        this.mSceneTipsInfoListeners.remove(sceneTipsInfoListener);
        if (this.mOperateApi == null) {
            Log.e(TAG, "unregisterSceneTipsInfoListener Exception：mInfoDispatchRemoteApi is null");
            getOperateRemoteApi();
        } else {
            this.mOperateApi.unregisterSceneTipsInfoListener(sceneTipsInfoListener);
        }
    }

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
        Log.d(TAG, "dispose");
        unInitListener();
        clearListener();
        unInit();
    }
}
