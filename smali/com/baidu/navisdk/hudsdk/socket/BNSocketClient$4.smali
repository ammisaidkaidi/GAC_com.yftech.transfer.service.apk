.class Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;
.super Landroid/os/Handler;
.source "BNSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;


# direct methods
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15b3

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$13(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$11(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Landroid/os/Message;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$12(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$10(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;I)V

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$9(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "BNRemote"

    const-string v0, "Connect Manager Thread Receive MSG_CONTINUE_CONNECT"

    .line 144
    invoke-static {p1, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$8(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    goto :goto_0

    .line 141
    :pswitch_6
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$7(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;I)V

    goto :goto_0

    .line 138
    :pswitch_7
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$6(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$5(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5000
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
