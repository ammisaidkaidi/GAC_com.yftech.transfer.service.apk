package com.tencent.taes.api.scene;

import com.tencent.scenebizsdk.IMsgListener;
import com.tencent.scenebizsdk.model.widgets.ActionData;
import com.tencent.sceneengine.IMessageValidator;
import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.api.scene.bean.SceneInfo;
import com.tencent.taes.api.scene.listener.SceneInfoListener;
import com.tencent.taes.remote.api.operate.bean.SceneTipsInfo;
import com.tencent.taes.remote.api.operate.listener.SceneTipsInfoListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ISceneApi extends BaseApi {
    void dispatchActions(ActionData actionData);

    List<SceneInfo> getSceneInfoList();

    List<SceneTipsInfo> getSceneTipsInfoList();

    void registerMsgValidator(int i, IMessageValidator iMessageValidator);

    void registerSceneInfoListener(SceneInfoListener sceneInfoListener);

    void registerSceneMsgListener(IMsgListener iMsgListener);

    void registerSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener);

    boolean showSceneDetail(String str, boolean z);

    void unregisterMsgValidator(int i);

    void unregisterSceneInfoListener(SceneInfoListener sceneInfoListener);

    void unregisterSceneMsgListener(IMsgListener iMsgListener);

    void unregisterSceneTipsInfoListener(SceneTipsInfoListener sceneTipsInfoListener);
}
