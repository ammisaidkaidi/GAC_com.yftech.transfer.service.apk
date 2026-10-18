.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;
.super Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;
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
.field private final CA1105_CALC_MISS:I

.field private calc:I

.field private mPreGearPosition:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;-><init>()V

    const/4 p1, 0x1

    .line 392
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->CA1105_CALC_MISS:I

    return-void
.end method


# virtual methods
.method public onDayNightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;)V
    .locals 4

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDayNightModeChanged mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 398
    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->calc:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->calc:I

    .line 399
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDayNightModeChanged calc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->calc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v2, "CA1105"

    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->calc:I

    if-ne p0, v1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 407
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    if-ne v0, p1, :cond_2

    .line 408
    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->setNightMode(Z)I

    goto :goto_0

    .line 409
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    .line 410
    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->setNightMode(Z)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onGearPositionChanged gear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isPreCarplayDisplay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v0, :cond_0

    return-void

    .line 424
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 428
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1402(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 430
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$6;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .locals 0

    return-void
.end method
