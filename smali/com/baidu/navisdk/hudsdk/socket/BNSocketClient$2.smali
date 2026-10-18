.class Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;
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
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BNRemote"

    const-string v1, "BNRemoteVistor Heart Alive Timer RUNNING, Send PING Packet"

    .line 60
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$1(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$1(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$1(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
