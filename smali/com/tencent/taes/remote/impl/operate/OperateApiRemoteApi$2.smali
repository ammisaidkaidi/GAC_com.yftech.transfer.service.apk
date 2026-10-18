.class Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;
.super Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;
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

    .line 64
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneTipsInfoListener(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneTipsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "OperateApiRemoteApi"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneTipsInfo info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {v0, p1}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$202(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->access$300(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;->onSceneTipsInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
