.class public interface abstract Lcom/tencent/taes/api/scene/ISceneApi;
.super Ljava/lang/Object;
.source "ISceneApi.java"

# interfaces
.implements Lcom/tencent/taes/api/base/BaseApi;


# virtual methods
.method public abstract dispatchActions(Lcom/tencent/scenebizsdk/model/widgets/ActionData;)V
.end method

.method public abstract getSceneInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/scene/bean/SceneInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSceneTipsInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneTipsInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerMsgValidator(ILcom/tencent/sceneengine/IMessageValidator;)V
.end method

.method public abstract registerSceneInfoListener(Lcom/tencent/taes/api/scene/listener/SceneInfoListener;)V
.end method

.method public abstract registerSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
.end method

.method public abstract registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
.end method

.method public abstract showSceneDetail(Ljava/lang/String;Z)Z
.end method

.method public abstract unregisterMsgValidator(I)V
.end method

.method public abstract unregisterSceneInfoListener(Lcom/tencent/taes/api/scene/listener/SceneInfoListener;)V
.end method

.method public abstract unregisterSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
.end method

.method public abstract unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
.end method
