.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHandUpFastAuiRunnable SIGSTOP,isFastAuiShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->get()Lcom/yftech/vehicle/sdk/MpuProjectManager;

    move-result-object v0

    const-string v1, "ps -e |grep -E \"fastAui\"|awk \'{ cmd=\"kill -SIGSTOP \"$2;system(cmd) }\' "

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSystemCmd(Ljava/lang/String;)Z

    const-wide/16 v0, 0x1f4

    .line 449
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 453
    :goto_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->get()Lcom/yftech/vehicle/sdk/MpuProjectManager;

    move-result-object v0

    const-string v1, "ps -e |grep -E \"fastAui\"|awk \'{ cmd=\"kill -SIGCONT \"$2;system(cmd) }\'"

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSystemCmd(Ljava/lang/String;)Z

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHandUpFastAuiRunnable SIGCONT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 455
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$7;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1402(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
