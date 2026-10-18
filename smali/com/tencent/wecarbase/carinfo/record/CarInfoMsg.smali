.class public Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;
.super Ljava/lang/Object;
.source "CarInfoMsg.java"


# instance fields
.field private accModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private airConditionModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

.field private batteryVoltage:Lcom/google/protobuf/ByteString;

.field private brakeStateModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

.field private carSpeed:Lcom/google/protobuf/ByteString;

.field private doorStatusModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

.field private enduranceMileage:I

.field private engineSpeed:Lcom/google/protobuf/ByteString;

.field private fuelModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

.field private gearModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field private lampModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

.field private leanWaterModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

.field private outsideTemperature:Lcom/google/protobuf/ByteString;

.field private seatBeltModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

.field private totalMileage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->accModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getAirConditionModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->airConditionModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getBatteryVoltage()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->batteryVoltage:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getBrakeStateModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->brakeStateModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    return-object p0
.end method

.method public getCarSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->carSpeed:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getDoorStatusModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->doorStatusModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getEnduranceMileage()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->enduranceMileage:I

    return p0
.end method

.method public getEngineSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->engineSpeed:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getFuelModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->fuelModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getGearModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->gearModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0
.end method

.method public getLampModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->lampModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getLeanWaterModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->leanWaterModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    return-object p0
.end method

.method public getOutsideTemperature()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->outsideTemperature:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getSeatBeltModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->seatBeltModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    return-object p0
.end method

.method public getTotalMileage()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->totalMileage:I

    return p0
.end method

.method public setAccModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->accModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-void
.end method

.method public setAirConditionModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->airConditionModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-void
.end method

.method public setBatteryVoltage(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->batteryVoltage:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setBrakeStateModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->brakeStateModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    return-void
.end method

.method public setCarSpeed(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->carSpeed:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setDoorStatusModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->doorStatusModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-void
.end method

.method public setEnduranceMileage(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->enduranceMileage:I

    return-void
.end method

.method public setEngineSpeed(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->engineSpeed:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setFuelModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->fuelModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-void
.end method

.method public setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->gearModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-void
.end method

.method public setLampModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->lampModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-void
.end method

.method public setLeanWaterModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->leanWaterModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    return-void
.end method

.method public setOutsideTemperature(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->outsideTemperature:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setSeatBeltModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->seatBeltModel:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    return-void
.end method

.method public setTotalMileage(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->totalMileage:I

    return-void
.end method
