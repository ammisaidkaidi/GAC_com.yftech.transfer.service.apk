.class Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;
.super Ljava/lang/Object;
.source "BNSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;


# direct methods
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BNRemote"

    const-string v1, "BNRemoteVistor Check Auth Timer RUNNING, not receive auth response CLOSED,CONTINUE CONNECT"

    .line 49
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x5002

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
