.class Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser$1;
.super Landroid/os/Handler;
.source "SocketDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;


# direct methods
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser$1;->this$0:Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->access$0(Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;Landroid/os/Message;)V

    return-void
.end method
