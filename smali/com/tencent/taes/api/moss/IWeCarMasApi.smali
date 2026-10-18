.class public interface abstract Lcom/tencent/taes/api/moss/IWeCarMasApi;
.super Ljava/lang/Object;
.source "IWeCarMasApi.java"

# interfaces
.implements Lcom/tencent/taes/api/base/BaseApi;


# virtual methods
.method public abstract backAppToBackground()V
.end method

.method public abstract canMossAppOpen(Ljava/lang/String;)Z
.end method

.method public abstract closeMossApp()V
.end method

.method public abstract emitEvent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMediaType()I
.end method

.method public abstract getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;
.end method

.method public abstract getMossLabel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MossLabel;",
            ">;"
        }
    .end annotation
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

.method public abstract isFirstMediaOfPlayList()Z
.end method

.method public abstract isForwardOutOfRange(I)Z
.end method

.method public abstract isLastMediaOfPlayList()Z
.end method

.method public abstract isLogin(Ljava/lang/String;)Z
.end method

.method public abstract isMiniProgramOpened(Ljava/lang/String;)Z
.end method

.method public abstract isMiniProgramPlay()Z
.end method

.method public abstract isMossAppForeground(Ljava/lang/String;)Z
.end method

.method public abstract isMossInited()Z
.end method

.method public abstract isSupportOperation(I)I
.end method

.method public abstract loadAllAppsFromCache(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
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

.method public abstract openMossApp(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract openMossInSystemDialog(Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract operationMedia(Ljava/lang/String;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prev()V
.end method

.method public abstract registerClient(Lcom/tencent/mosssdk/IInvokeChannelClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
.end method

.method public abstract registerConnection(Landroid/content/Context;)V
.end method

.method public abstract registerMossCallback(Lcom/tencent/taes/api/moss/listener/IWeCarMasCallback;)V
.end method

.method public abstract requestDetailRecommendAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MossAppList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLbsRecommend(Lcom/tencent/taes/api/moss/listener/ICallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/api/moss/listener/ICallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestRecommendAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchAppListFromLabel(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setIMinAppFrontListener(Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;)V
.end method

.method public abstract startWeChatBindActivity()V
.end method

.method public abstract strTargePos(I)Lcom/tencent/taes/api/moss/IWeCarMasApi;
.end method

.method public abstract targeToffet(I)Lcom/tencent/taes/api/moss/IWeCarMasApi;
.end method

.method public abstract unRegisterConnection()V
.end method

.method public abstract unRegisterMossCallback()V
.end method

.method public abstract unregisterClient()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
.end method
