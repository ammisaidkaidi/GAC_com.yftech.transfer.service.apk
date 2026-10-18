.class public interface abstract Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;
.super Ljava/lang/Object;
.source "IWeCarInfoInterface.java"


# virtual methods
.method public abstract getAccData()Lcom/tencent/wecarbase/carinfo/model/AccModel;
.end method

.method public abstract getBatteryVoltageData()F
.end method

.method public abstract getBrakeState()Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;
.end method

.method public abstract getCANBUSVersion()Ljava/lang/String;
.end method

.method public abstract getCarSpeedData()F
.end method

.method public abstract getCarType()I
.end method

.method public abstract getDoorStatus()Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;
.end method

.method public abstract getEnduranceMileageData()I
.end method

.method public abstract getEngineSpeedData()F
.end method

.method public abstract getFuelData()Lcom/tencent/wecarbase/carinfo/model/FuelModel;
.end method

.method public abstract getGearData()Lcom/tencent/wecarbase/carinfo/model/GearModel;
.end method

.method public abstract getLampStatus()Lcom/tencent/wecarbase/carinfo/model/LampModel;
.end method

.method public abstract getLeanWaterData()Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;
.end method

.method public abstract getMileageData()Lcom/tencent/wecarbase/carinfo/model/MileageModel;
.end method

.method public abstract getOutsideTemperatureData()Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;
.end method

.method public abstract getSeatBeltState()Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;
.end method

.method public abstract getTotalMileageData()J
.end method

.method public abstract isShowCarInfo()Z
.end method

.method public abstract registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
.end method

.method public abstract sendString2Dashboard(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setCarType(I)I
.end method

.method public abstract setDashboardDisplayA2DP()I
.end method

.method public abstract setDashboardDisplayAUX()I
.end method

.method public abstract setDashboardDisplayAudioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$AudioModel;)I
.end method

.method public abstract setDashboardDisplayHFPData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$HFPModel;)I
.end method

.method public abstract setDashboardDisplayMediaStop()I
.end method

.method public abstract setDashboardDisplayRadioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$RadioModel;)I
.end method

.method public abstract setDashboardDisplayTimeFormatSync()I
.end method

.method public abstract setDashboardDisplayVolume(I)I
.end method

.method public abstract unregisterListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
.end method
