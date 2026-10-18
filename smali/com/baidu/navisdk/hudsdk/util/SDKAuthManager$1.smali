.class Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;
.super Ljava/lang/Object;
.source "SDKAuthManager.java"

# interfaces
.implements Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;->this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(ILjava/lang/String;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;->this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    invoke-static {v0, p1}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->access$0(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAuthResult: status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", msg: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;->this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->access$2(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;Z)V

    .line 40
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;->this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->access$3(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager$1;->this$0:Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;

    invoke-static {p0}, Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;->access$3(Lcom/baidu/navisdk/hudsdk/util/SDKAuthManager;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
