.class Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;
.super Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;
.source "OperateApiRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneBannerInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {v0, p1}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$402(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;

    .line 87
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$500(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;->onSceneStatusBannerInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
