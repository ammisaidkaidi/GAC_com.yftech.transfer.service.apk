.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;
.super Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;
.source "CarPlayLinkHelper.java"


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

    .line 458
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 6

    .line 461
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v2, v2, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " avmserviceObservor onChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isCarplayDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",gearPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p2, :cond_1

    .line 463
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v3, v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 466
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    :goto_0
    if-ne p1, v2, :cond_1

    .line 472
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$202(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 473
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1402(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_1
    if-nez p2, :cond_2

    if-ne p1, v2, :cond_2

    .line 477
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$8;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$202(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    :cond_2
    return-void
.end method
