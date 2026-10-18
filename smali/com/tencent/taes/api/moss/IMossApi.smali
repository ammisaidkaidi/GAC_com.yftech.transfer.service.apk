.class public interface abstract Lcom/tencent/taes/api/moss/IMossApi;
.super Ljava/lang/Object;
.source "IMossApi.java"

# interfaces
.implements Lcom/tencent/taes/api/base/BaseApi;


# virtual methods
.method public abstract getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;
.end method

.method public abstract getRecentAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadAllAppsFromNet(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract next()V
.end method

.method public abstract openMossApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prev()V
.end method

.method public abstract registerConnection(Landroid/content/Context;)V
.end method

.method public abstract registerMossCallback(Lcom/tencent/taes/api/moss/listener/MossCallback;)V
.end method

.method public abstract unRegisterConnection()V
.end method

.method public abstract unRegisterMossCallback()V
.end method
