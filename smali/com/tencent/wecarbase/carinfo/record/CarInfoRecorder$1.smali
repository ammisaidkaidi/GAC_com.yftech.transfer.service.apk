.class Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;
.super Ljava/lang/Object;
.source "CarInfoRecorder.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccChanged(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateAcc(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AccModel;->getState()I

    return-void
.end method

.method public onAirConditionChanged(Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateAirCondition(Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;)V

    :cond_0
    return-void
.end method

.method public onBackCarRadarChanged(Lcom/tencent/wecarbase/carinfo/model/BackCarRadarModel;)V
    .locals 0

    return-void
.end method

.method public onBatteryVoltageChanged(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateBatteryVoltage(F)V

    :cond_0
    return-void
.end method

.method public onBrakeStateChanged(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateBrakeState(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V

    :cond_0
    return-void
.end method

.method public onBundleData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCarAccountUpdate()V
    .locals 0

    return-void
.end method

.method public onCarSpeedChanged(F)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateCarSpeed(F)V

    :cond_0
    return-void
.end method

.method public onDoorStatusChanged(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorStatusChanged doorStatusModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateDoorStatus(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V

    :cond_0
    return-void
.end method

.method public onEnduranceMileageChanged(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateEnduranceMileage(I)V

    :cond_0
    return-void
.end method

.method public onEngineSpeedChanged(F)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateEngineSpeed(F)V

    :cond_0
    return-void
.end method

.method public onFuelChanged(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateFuel(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V

    :cond_0
    return-void
.end method

.method public onGearChanged(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateGear(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V

    :cond_0
    return-void
.end method

.method public onLampStatusChanged(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateLampStatus(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V

    :cond_0
    return-void
.end method

.method public onLeanWaterChanged(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateLeanWater(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V

    :cond_0
    return-void
.end method

.method public onMileageChanged(Lcom/tencent/wecarbase/carinfo/model/MileageModel;)V
    .locals 0

    return-void
.end method

.method public onOutsideTemperature(Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateOutsideTemperature(Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;)V

    :cond_0
    return-void
.end method

.method public onSeatBeltChanged(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateSeatBelt(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V

    :cond_0
    return-void
.end method

.method public onTotalMileageChanged(J)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder$1;->this$0:Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;->access$600(Lcom/tencent/wecarbase/carinfo/record/CarInfoRecorder;)Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateTotalMileage(I)V

    :cond_0
    return-void
.end method
