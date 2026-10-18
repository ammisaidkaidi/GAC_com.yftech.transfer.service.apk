.class Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;
.super Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener$Stub;
.source "AccountRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceiver(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountRemoteApi"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventReceiver code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -newResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ;oldResult is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ;Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listenerList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    invoke-static {v2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    invoke-static {v2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 123
    :pswitch_0
    :try_start_0
    invoke-interface {v0, p3, p2}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWXTicketUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :pswitch_1
    const-class v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-static {p3, v1}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    const-class v2, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    .line 117
    invoke-static {p2, v2}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWXAccountUpdate(Lcom/tencent/taes/remote/api/account/bean/TxAccount;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V

    goto :goto_1

    .line 113
    :pswitch_2
    const-class v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-static {p2, v1}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWXAccountUnbind(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V

    goto :goto_1

    .line 110
    :pswitch_3
    const-class v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-static {p2, v1}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWXAccountBind(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V

    goto :goto_1

    :pswitch_4
    const-string v1, "false"

    .line 120
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onAuthChanged(Z)V

    goto :goto_1

    .line 106
    :pswitch_5
    const-class v1, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    invoke-static {p3, v1}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    const-class v2, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    .line 107
    invoke-static {p2, v2}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    .line 106
    invoke-interface {v0, v1, v2}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWeCarIdChanged(Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;)V

    goto :goto_1

    .line 103
    :pswitch_6
    const-class v1, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    invoke-static {p2, v1}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;->onWeCarIdRegistered(Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AccountRemoteApi"

    const-string v2, "onEventReceiver exception"

    .line 144
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
