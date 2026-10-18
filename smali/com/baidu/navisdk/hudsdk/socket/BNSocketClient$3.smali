.class Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;
.super Ljava/lang/Object;
.source "BNSocketClient.java"

# interfaces
.implements Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;


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
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(ILjava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onEndLBSAuth(ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$4(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Z)V

    const-string p0, "auth"

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LBS Auth SUCCESS, reason = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-static {p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    move-result-object p1

    const/16 v0, 0x198

    const-string v1, "lbs auth FAILED"

    invoke-interface {p1, v0, v1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onClose(ILjava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;->this$0:Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->unInit()V

    const-string p0, "auth"

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LBS Auth FAILED, reason = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "auth"

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LBS Auth FAILED, reason = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
