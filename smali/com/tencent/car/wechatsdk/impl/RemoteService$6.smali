.class Lcom/tencent/car/wechatsdk/impl/RemoteService$6;
.super Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/car/wechatsdk/impl/RemoteService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/car/wechatsdk/impl/RemoteService;


# direct methods
.method constructor <init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService$6;->this$0:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-direct {p0}, Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveWeChatUnreadMsgState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RemoteService"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveWeChatUnreadMsgState isExistUnreadMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService$6;->this$0:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-static {v0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->access$000(Lcom/tencent/car/wechatsdk/impl/RemoteService;)Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService$6;->this$0:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->access$000(Lcom/tencent/car/wechatsdk/impl/RemoteService;)Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->dispatchWeChatUnreadMsgState(I)V

    :cond_0
    return-void
.end method
