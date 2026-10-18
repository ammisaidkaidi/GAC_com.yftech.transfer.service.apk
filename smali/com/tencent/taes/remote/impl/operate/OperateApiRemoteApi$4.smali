.class Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;
.super Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;
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

    .line 95
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneWeakPushInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {v0, p1}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$602(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;

    .line 99
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$700(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;->onSceneWeakPushInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
