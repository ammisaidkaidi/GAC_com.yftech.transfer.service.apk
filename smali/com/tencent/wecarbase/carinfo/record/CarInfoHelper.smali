.class public Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;
.super Ljava/lang/Object;
.source "CarInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarInfoHelper"


# instance fields
.field private carUpdateId:I

.field private mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 34
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mContext:Landroid/content/Context;

    .line 35
    new-instance p1, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-direct {p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    return-void
.end method


# virtual methods
.method public getCarInfoMsg()Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    return-object p0
.end method

.method public getCarUpdateId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    return p0
.end method

.method public init()V
    .locals 6

    .line 39
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getFuelData()Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateFuel(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V

    .line 42
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getEnduranceMileageData()I

    move-result v0

    .line 43
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getTotalMileageData()J

    move-result-wide v1

    .line 45
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateEnduranceMileage(I)V

    long-to-int v3, v1

    .line 46
    invoke-virtual {p0, v3}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateTotalMileage(I)V

    .line 48
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getGearData()Lcom/tencent/wecarbase/carinfo/model/GearModel;

    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateGear(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V

    .line 52
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getBrakeState()Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;

    move-result-object v4

    .line 53
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateBrakeState(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V

    .line 55
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getAccData()Lcom/tencent/wecarbase/carinfo/model/AccModel;

    move-result-object v4

    .line 56
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateAcc(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V

    .line 58
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getSeatBeltState()Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;

    move-result-object v4

    .line 59
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateSeatBelt(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V

    .line 61
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getLampStatus()Lcom/tencent/wecarbase/carinfo/model/LampModel;

    move-result-object v4

    .line 62
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateLampStatus(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V

    .line 64
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getDoorStatus()Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;

    move-result-object v4

    .line 65
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateDoorStatus(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V

    .line 67
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->getOutsideTemperatureData()Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;

    move-result-object v4

    .line 68
    invoke-virtual {p0, v4}, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->updateOutsideTemperature(Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;)V

    .line 70
    sget-object p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init enduranceMileageData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " totalMileageData="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " gearModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAcc(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 159
    sget-object v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AccModel;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/tencent/wecarbase/config/CloudConfig;->CLOUD_LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ACC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AccModel;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/CommonFileUtils;->appendFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AccModel;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setAccModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AccModel;->getState()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 164
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setAccModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setAccModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)V

    :goto_0
    return-void
.end method

.method public updateAirCondition(Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;)V
    .locals 7

    .line 446
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getLeftTemp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setLeftTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 451
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getRightTemp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setRightTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 454
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getTemperatureUnitType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 455
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setTemperatureUnitType(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getTemperatureUnitType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 457
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_FAHRENHEIT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setTemperatureUnitType(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 460
    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 461
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v2, v3, :cond_2

    .line 462
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_FACE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    .line 463
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v3

    if-ne v5, v3, :cond_3

    .line 464
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_FACE_AND_LEG:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    .line 465
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 466
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_LEG:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    .line 467
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 468
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_FRONT_GLASS_AND_LEG:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    .line 469
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v6

    if-ne v3, v6, :cond_6

    .line 470
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_FRONT_GLASS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    :cond_6
    const/4 v3, 0x6

    .line 471
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v6

    if-ne v3, v6, :cond_7

    .line 472
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_FRONT_GLASS_AND_FACE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    .line 473
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v6

    if-ne v3, v6, :cond_8

    .line 474
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_ALL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 476
    :cond_8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setWindDirection(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 478
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getWindDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setWindLevel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 480
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 481
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getAC()I

    move-result v3

    if-nez v3, :cond_9

    .line 482
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    goto :goto_2

    .line 483
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getAC()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 484
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_WIND:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    goto :goto_2

    .line 485
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getAC()I

    move-result v3

    if-ne v3, v5, :cond_b

    .line 486
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_WIND:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 488
    :cond_b
    :goto_2
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setAC(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 490
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 491
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getAuto()I

    move-result v1

    if-nez v1, :cond_c

    .line 492
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_3

    .line 493
    :cond_c
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getAuto()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 494
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_3

    .line 496
    :cond_d
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 498
    :goto_3
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setAuto(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 500
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 501
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getCycleModel()I

    move-result v3

    if-ne v3, v2, :cond_e

    .line 503
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    goto :goto_4

    .line 505
    :cond_e
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getCycleModel()I

    move-result v3

    if-ne v3, v4, :cond_f

    .line 507
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE_AUTO:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    goto :goto_4

    .line 509
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getCycleModel()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 510
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_OUTSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 512
    :cond_10
    :goto_4
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setCycleModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 514
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 515
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getDualZone()I

    move-result v3

    if-nez v3, :cond_11

    .line 516
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    goto :goto_5

    .line 517
    :cond_11
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getDualZone()I

    move-result v3

    if-ne v3, v2, :cond_12

    .line 518
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 520
    :cond_12
    :goto_5
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setDualZone(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 522
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 523
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getFrontDefog()I

    move-result v3

    if-nez v3, :cond_13

    .line 524
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_6

    .line 525
    :cond_13
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getFrontDefog()I

    move-result v3

    if-ne v3, v2, :cond_14

    .line 526
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 528
    :cond_14
    :goto_6
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setFrontDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 530
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 531
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getBackDefog()I

    move-result v3

    if-nez v3, :cond_15

    .line 532
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_7

    .line 533
    :cond_15
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->getBackDefog()I

    move-result p1

    if-ne p1, v2, :cond_16

    .line 534
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 536
    :cond_16
    :goto_7
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setMBackDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 537
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setAirConditionModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)V

    return-void
.end method

.method public updateBatteryVoltage(F)V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setBatteryVoltage(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public updateBrakeState(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 89
    sget-object v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrakeStateModel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->getBrakeState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->getBrakeState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_DOWN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setBrakeStateModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;->getBrakeState()I

    move-result p1

    if-nez p1, :cond_2

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_UP:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setBrakeStateModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setBrakeStateModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)V

    :goto_0
    return-void
.end method

.method public updateCarSpeed(F)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setCarSpeed(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public updateDoorStatus(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 259
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    .line 261
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 262
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontLeftDoor:I

    if-nez v3, :cond_1

    .line 263
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 264
    :cond_1
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontLeftDoor:I

    if-ne v3, v1, :cond_2

    .line 265
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 267
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setFrontLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 269
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 270
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontRightDoor:I

    if-nez v3, :cond_3

    .line 271
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_1

    .line 272
    :cond_3
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mFrontRightDoor:I

    if-ne v3, v1, :cond_4

    .line 273
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 275
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setFrontRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 277
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 278
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearLeftDoor:I

    if-nez v3, :cond_5

    .line 279
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_2

    .line 280
    :cond_5
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearLeftDoor:I

    if-ne v3, v1, :cond_6

    .line 281
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 283
    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setRearLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 285
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 286
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearRightDoor:I

    if-nez v3, :cond_7

    .line 287
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_3

    .line 288
    :cond_7
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mRearRightDoor:I

    if-ne v3, v1, :cond_8

    .line 289
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 291
    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setRearRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 293
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 294
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mSkylight:I

    if-nez v3, :cond_9

    .line 295
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_4

    .line 296
    :cond_9
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mSkylight:I

    if-ne v3, v1, :cond_a

    .line 297
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 299
    :cond_a
    :goto_4
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setSkylight(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 301
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 302
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mEngineCover:I

    if-nez v3, :cond_b

    .line 303
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_5

    .line 304
    :cond_b
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mEngineCover:I

    if-ne v3, v1, :cond_c

    .line 305
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 307
    :cond_c
    :goto_5
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setEngineCover(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 309
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 310
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTrunk:I

    if-nez v3, :cond_d

    .line 311
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_6

    .line 312
    :cond_d
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTrunk:I

    if-ne v3, v1, :cond_e

    .line 313
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 315
    :cond_e
    :goto_6
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setTrunk(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 317
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 318
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTank:I

    if-nez v3, :cond_f

    .line 319
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_7

    .line 320
    :cond_f
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mTank:I

    if-ne v3, v1, :cond_10

    .line 321
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 323
    :cond_10
    :goto_7
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setTank(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 325
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 326
    iget v3, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mWindShield:I

    if-nez v3, :cond_11

    .line 327
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_8

    .line 328
    :cond_11
    iget p1, p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;->mWindShield:I

    if-ne p1, v1, :cond_12

    .line 329
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 331
    :cond_12
    :goto_8
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setWindShield(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 333
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setDoorStatusModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)V

    return-void
.end method

.method public updateEnduranceMileage(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 183
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setEnduranceMileage(I)V

    return-void
.end method

.method public updateEngineSpeed(F)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setEngineSpeed(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public updateFuel(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 195
    sget-object v0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FuelModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    .line 198
    sget-object v2, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fuelModel mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRemainFuel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getRemainFuel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mInstantaneousFuelConsumption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getInstantaneousFuelConsumption()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " AverageFuelConsumption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getAverageFuelConsumption()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 202
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setFuelStateWarning(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 204
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setFuelStateWarning(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getState()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 206
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setFuelStateWarning(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 208
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getRemainFuel()I

    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setMRemainFuel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 211
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getInstantaneousFuelConsumption()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setInstantaneousFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 214
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->getAverageFuelConsumption()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setAverageFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 217
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setFuelModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)V

    return-void
.end method

.method public updateGear(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 124
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto/16 :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 126
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_N:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto/16 :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_P:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto/16 :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 130
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto/16 :goto_0

    .line 131
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 132
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D1:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto/16 :goto_0

    .line 133
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 134
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D2:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 136
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D3:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 138
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D4:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 139
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 140
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D5:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 141
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 142
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D6:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 143
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 144
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_S:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    goto :goto_0

    .line 145
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/GearModel;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 146
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_R:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setGearModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public updateLampStatus(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 345
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    .line 347
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 348
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getLeftLamp()I

    move-result v3

    if-nez v3, :cond_1

    .line 349
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getLeftLamp()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 351
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 353
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setLeftLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 355
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 356
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getRightLamp()I

    move-result v3

    if-nez v3, :cond_3

    .line 357
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getRightLamp()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 359
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 361
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setRightLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 363
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 364
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getWidthLamp()I

    move-result v3

    if-nez v3, :cond_5

    .line 365
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_2

    .line 366
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getWidthLamp()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 367
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 369
    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setWidthLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 371
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 372
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getEmergencyLamp()I

    move-result v3

    if-nez v3, :cond_7

    .line 373
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_3

    .line 374
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getEmergencyLamp()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 375
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 377
    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setEmergencyLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 379
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 380
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getFarLamp()I

    move-result v3

    if-nez v3, :cond_9

    .line 381
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_4

    .line 382
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getFarLamp()I

    move-result v3

    if-ne v3, v1, :cond_a

    .line 383
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 385
    :cond_a
    :goto_4
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setForkLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 387
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 388
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getFarLamp()I

    move-result v3

    if-nez v3, :cond_b

    .line 389
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_5

    .line 390
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getFarLamp()I

    move-result v3

    if-ne v3, v1, :cond_c

    .line 391
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 393
    :cond_c
    :goto_5
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setFarLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 395
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 396
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getNearLamp()I

    move-result v3

    if-nez v3, :cond_d

    .line 397
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_6

    .line 398
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getNearLamp()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 399
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 401
    :cond_e
    :goto_6
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setNearLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 403
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 404
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getDayLamp()I

    move-result v3

    if-nez v3, :cond_f

    .line 405
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_7

    .line 406
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getDayLamp()I

    move-result v3

    if-ne v3, v1, :cond_10

    .line 407
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 409
    :cond_10
    :goto_7
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setDayLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 411
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 412
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getStopLamp()I

    move-result v3

    if-nez v3, :cond_11

    .line 413
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_8

    .line 414
    :cond_11
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getStopLamp()I

    move-result v3

    if-ne v3, v1, :cond_12

    .line 415
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 417
    :cond_12
    :goto_8
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setStopLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 419
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 420
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getBackLamp()I

    move-result v3

    if-nez v3, :cond_13

    .line 421
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_CLOSE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_9

    .line 422
    :cond_13
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LampModel;->getBackLamp()I

    move-result p1

    if-ne p1, v1, :cond_14

    .line 423
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_OPEN:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 425
    :cond_14
    :goto_9
    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setBackLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 427
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setLampModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)V

    return-void
.end method

.method public updateLeanWater(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->getLeanWaterState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setLeanWaterModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->getLeanWaterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 230
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setLeanWaterModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;->getLeanWaterState()I

    move-result p1

    if-nez p1, :cond_3

    .line 234
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setLeanWaterModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateOutsideTemperature(Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->getOutsideTemperature()F

    move-result p1

    .line 433
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setOutsideTemperature(Lcom/google/protobuf/ByteString;)V

    :cond_0
    return-void
.end method

.method public updateSeatBelt(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;->getSeatBelt()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_OFF:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setSeatBeltModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;->getSeatBelt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 109
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_ON:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setSeatBeltModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setSeatBeltModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)V

    :goto_0
    return-void
.end method

.method public updateTotalMileage(I)V
    .locals 1

    .line 174
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->carUpdateId:I

    .line 175
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/record/CarInfoHelper;->mCarInfoMsg:Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/record/CarInfoMsg;->setTotalMileage(I)V

    return-void
.end method
