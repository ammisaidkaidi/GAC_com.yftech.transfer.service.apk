.class Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;
.super Ljava/lang/Object;
.source "BaiduNavigationAdapter.java"

# interfaces
.implements Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuth(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;)V
    .locals 2

    .line 308
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onAuth"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 310
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverVer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->getServerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authResMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->getAuthResMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serverType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;->getServerType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClose(ILjava/lang/String;)V
    .locals 3

    .line 289
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClose, errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errStr:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$102(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Z)Z

    .line 291
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$600(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;

    invoke-direct {p2, p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;-><init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$102(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Z)Z

    .line 277
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$202(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)I

    return-void
.end method

.method public onEndLBSAuth(ILjava/lang/String;)V
    .locals 3

    .line 324
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndLBSAuth, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndLBSAuth, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 327
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$102(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Z)Z

    goto :goto_1

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$600(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$2;

    invoke-direct {p2, p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$2;-><init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public onReConnected()V
    .locals 2

    .line 282
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$102(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Z)Z

    .line 284
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$202(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)I

    return-void
.end method

.method public onStartLBSAuth()V
    .locals 1

    .line 318
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onStartLBSAuth"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
