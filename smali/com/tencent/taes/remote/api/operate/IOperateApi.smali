.class public interface abstract Lcom/tencent/taes/remote/api/operate/IOperateApi;
.super Ljava/lang/Object;
.source "IOperateApi.java"


# virtual methods
.method public abstract getSceneBannerInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
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

.method public abstract getSceneWeakPushInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusBannerInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifySceneWeakPushComplete()V
.end method

.method public abstract registerSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V
.end method

.method public abstract registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
.end method

.method public abstract registerSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;)V
.end method

.method public abstract registerStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;)V
.end method

.method public abstract showSceneBannerDetail(Ljava/lang/String;Z)Z
.end method

.method public abstract unregisterSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V
.end method

.method public abstract unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
.end method

.method public abstract unregisterSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;)V
.end method

.method public abstract unregisterStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;)V
.end method
