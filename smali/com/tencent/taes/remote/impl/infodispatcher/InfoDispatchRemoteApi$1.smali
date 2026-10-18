.class Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;
.super Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;
.source "InfoDispatchRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicInfoDispatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$100(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V

    return-void
.end method

.method public onNaviInfoDispatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V

    return-void
.end method

.method public onOtherInfoDispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0, p1, p2}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$300(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTeamTripInfoDispatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$400(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V

    return-void
.end method

.method public onWeChatInfoDispatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$200(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V

    return-void
.end method
