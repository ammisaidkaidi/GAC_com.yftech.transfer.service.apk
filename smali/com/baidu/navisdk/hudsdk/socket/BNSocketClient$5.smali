.class Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;
.super Ljava/lang/Thread;
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
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    .line 172
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onStartLBSAuth()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->getInstance()Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    move-result-object v0

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$14(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->authenticate(Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;)V

    return-void
.end method
