package com.tencent.taes.remote.api.operate;

import com.tencent.taes.remote.api.operate.bean.SceneBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneTipsInfo;
import com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo;
import com.tencent.taes.remote.api.operate.listener.SceneBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneStatusBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneTipsInfoListener;
import com.tencent.taes.remote.api.operate.listener.SceneWeakPushInfoListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IOperateApi {
    List<SceneBannerInfo> getSceneBannerInfoList();

    List<SceneTipsInfo> getSceneTipsInfoList();

    List<SceneWeakPushInfo> getSceneWeakPushInfos();

    List<SceneStatusBannerInfo> getStatusBannerInfos();

    void notifySceneWeakPushComplete();

    void registerSceneBannerInfoListener(SceneBannerInfoListener sceneBannerInfoListener);

    void registerSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener);

    void registerSceneWeakPushInfoListener(SceneWeakPushInfoListener sceneWeakPushInfoListener);

    void registerStatusBannerInfoListener(SceneStatusBannerInfoListener sceneStatusBannerInfoListener);

    boolean showSceneBannerDetail(String str, boolean z);

    void unregisterSceneBannerInfoListener(SceneBannerInfoListener sceneBannerInfoListener);

    void unregisterSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener);

    void unregisterSceneWeakPushInfoListener(SceneWeakPushInfoListener sceneWeakPushInfoListener);

    void unregisterStatusBannerInfoListener(SceneStatusBannerInfoListener sceneStatusBannerInfoListener);
}
