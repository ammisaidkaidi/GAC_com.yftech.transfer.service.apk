.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;",
        ">;",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

.field private batteryVoltage_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

.field private carSpeed_:Lcom/google/protobuf/ByteString;

.field private doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

.field private enduranceMileage_:I

.field private engineSpeed_:Lcom/google/protobuf/ByteString;

.field private fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

.field private gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field private lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

.field private leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

.field private outsideTemperature_:Lcom/google/protobuf/ByteString;

.field private seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

.field private totalMileage_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7866
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8127
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 8178
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 8229
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 8280
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 8427
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8579
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 8630
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 8681
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 8732
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8884
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 9036
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 9087
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9239
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 7867
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 7872
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8127
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 8178
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 8229
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 8280
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 8427
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8579
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 8630
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 8681
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 8732
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8884
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 9036
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 9087
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9239
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 7873
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 7849
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6900()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7849
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7884
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;-><init>()V

    return-object v0
.end method

.method private getAirConditionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9228
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9229
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9231
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getAirCondition()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v1

    .line 9232
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 9233
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 9234
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9236
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7855
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDoorStatusFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8873
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8874
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 8876
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getDoorStatus()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v1

    .line 8877
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 8878
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 8879
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8881
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private getFuelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8568
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8569
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 8571
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v1

    .line 8572
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 8573
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 8574
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8576
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private getLampStatusChangedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9025
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9026
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9028
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getLampStatusChanged()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v1

    .line 9029
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 9030
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 9031
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 9033
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 7876
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7877
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getFuelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7878
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getDoorStatusFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7879
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getLampStatusChangedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7880
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getAirConditionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1

    .line 7952
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    .line 7953
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 7954
    :cond_0
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 5

    .line 7960
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    .line 7961
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7966
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 7970
    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7974
    :cond_2
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 7978
    :cond_3
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 7982
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->totalMileage_:I

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 7986
    :cond_5
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->enduranceMileage_:I

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 7990
    :cond_6
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_7

    .line 7991
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    goto :goto_1

    .line 7993
    :cond_7
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$7902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    :goto_1
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 7998
    :cond_8
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 8002
    :cond_9
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 8006
    :cond_a
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 8010
    :cond_b
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_c

    .line 8011
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    goto :goto_2

    .line 8013
    :cond_c
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    :goto_2
    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x800

    .line 8018
    :cond_d
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_e

    .line 8019
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    goto :goto_3

    .line 8021
    :cond_e
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    :goto_3
    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x1000

    .line 8026
    :cond_f
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_10

    or-int/lit16 v3, v3, 0x2000

    .line 8030
    :cond_10
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_11

    .line 8031
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    goto :goto_4

    .line 8033
    :cond_11
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    :goto_4
    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    or-int/lit16 v3, v3, 0x4000

    .line 8038
    :cond_12
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8039
    invoke-static {v0, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->access$8802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I

    .line 8040
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 2

    .line 7888
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7889
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 7890
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7891
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 7892
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7893
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 7894
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7895
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 7896
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7897
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->totalMileage_:I

    .line 7898
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7899
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->enduranceMileage_:I

    .line 7900
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7901
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7902
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    goto :goto_0

    .line 7904
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7906
    :goto_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7907
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 7908
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7909
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 7910
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7911
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 7912
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7913
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 7914
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    goto :goto_1

    .line 7916
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7918
    :goto_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7919
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 7920
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    goto :goto_2

    .line 7922
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7924
    :goto_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7925
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 7926
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7927
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 7928
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    goto :goto_3

    .line 7930
    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7932
    :goto_3
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 7933
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 7934
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAcc()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8325
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8326
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 8327
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAirCondition()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 9183
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9184
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9185
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 9187
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9189
    :goto_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBatteryVoltage()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 9284
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 9285
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getBatteryVoltage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 9286
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBrakeState()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8172
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8173
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 8174
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCarSpeed()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8675
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8676
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getCarSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 8677
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDoorStatus()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8828
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8829
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8830
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8832
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8834
    :goto_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEnduranceMileage()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8421
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8422
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->enduranceMileage_:I

    .line 8423
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEngineSpeed()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8726
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8727
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getEngineSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 8728
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8523
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8524
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8525
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8527
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8529
    :goto_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearGear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8274
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8275
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 8276
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLampStatusChanged()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8980
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8981
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8982
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8984
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8986
    :goto_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLeanWater()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8624
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8625
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 8626
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOutsideTemperature()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 9081
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 9082
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getOutsideTemperature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 9083
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeatBelt()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8223
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8224
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 8225
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotalMileage()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8373
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8374
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->totalMileage_:I

    .line 8375
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7939
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAcc()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 8299
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getAirCondition()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1

    .line 9108
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9109
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0

    .line 9111
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getAirConditionBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 9200
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 9201
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    .line 9202
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getAirConditionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    return-object p0
.end method

.method public getAirConditionOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;
    .locals 1

    .line 9212
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 9213
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;

    return-object p0

    .line 9215
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getBatteryVoltage()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 9258
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getBrakeState()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;
    .locals 0

    .line 8146
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    return-object p0
.end method

.method public getCarSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 8649
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 7849
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 0

    .line 7948
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 7944
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getDoorStatus()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1

    .line 8753
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8754
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0

    .line 8756
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getDoorStatusBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 8845
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8846
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    .line 8847
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getDoorStatusFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    return-object p0
.end method

.method public getDoorStatusOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;
    .locals 1

    .line 8857
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 8858
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;

    return-object p0

    .line 8860
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getEnduranceMileage()I
    .locals 0

    .line 8398
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->enduranceMileage_:I

    return p0
.end method

.method public getEngineSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 8700
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1

    .line 8448
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8449
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0

    .line 8451
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getFuelBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 8540
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8541
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    .line 8542
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getFuelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    return-object p0
.end method

.method public getFuelOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;
    .locals 1

    .line 8552
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 8553
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;

    return-object p0

    .line 8555
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getGear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 0

    .line 8248
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0
.end method

.method public getLampStatusChanged()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1

    .line 8905
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8906
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0

    .line 8908
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getLampStatusChangedBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 8997
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8998
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    .line 8999
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->getLampStatusChangedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    return-object p0
.end method

.method public getLampStatusChangedOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;
    .locals 1

    .line 9009
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 9010
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;

    return-object p0

    .line 9012
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getLeanWater()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;
    .locals 0

    .line 8598
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    return-object p0
.end method

.method public getOutsideTemperature()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 9055
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getSeatBelt()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;
    .locals 0

    .line 8197
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    return-object p0
.end method

.method public getTotalMileage()I
    .locals 0

    .line 8350
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->totalMileage_:I

    return p0
.end method

.method public hasAcc()Z
    .locals 1

    .line 8289
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasAirCondition()Z
    .locals 1

    .line 9098
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBatteryVoltage()Z
    .locals 1

    .line 9248
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x4000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBrakeState()Z
    .locals 1

    .line 8136
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCarSpeed()Z
    .locals 1

    .line 8639
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDoorStatus()Z
    .locals 1

    .line 8743
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEnduranceMileage()Z
    .locals 1

    .line 8388
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEngineSpeed()Z
    .locals 1

    .line 8690
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFuel()Z
    .locals 1

    .line 8438
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasGear()Z
    .locals 1

    .line 8238
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLampStatusChanged()Z
    .locals 1

    .line 8895
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLeanWater()Z
    .locals 1

    .line 8588
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOutsideTemperature()Z
    .locals 1

    .line 9045
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSeatBelt()Z
    .locals 1

    .line 8187
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTotalMileage()Z
    .locals 1

    .line 8340
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 2

    .line 7860
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$6700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 7861
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mergeAirCondition(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 3

    .line 9160
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x2000

    if-nez v0, :cond_1

    .line 9161
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9162
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9163
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9164
    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    goto :goto_0

    .line 9166
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9168
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_1

    .line 9170
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9172
    :goto_1
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeDoorStatus(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 3

    .line 8805
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x400

    if-nez v0, :cond_1

    .line 8806
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8807
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 8808
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8809
    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    goto :goto_0

    .line 8811
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8813
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_1

    .line 8815
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8817
    :goto_1
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7849
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7849
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7849
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7849
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7849
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8114
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8120
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8116
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8117
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 8120
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8045
    instance-of v0, p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    if-eqz v0, :cond_0

    .line 8046
    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0

    .line 8048
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8054
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8055
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasBrakeState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8056
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getBrakeState()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setBrakeState(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8058
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasSeatBelt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8059
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getSeatBelt()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setSeatBelt(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8061
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasGear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8062
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getGear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setGear(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8064
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasAcc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8065
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getAcc()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setAcc(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8067
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasTotalMileage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8068
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getTotalMileage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setTotalMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8070
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasEnduranceMileage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8071
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getEnduranceMileage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setEnduranceMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8073
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasFuel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8074
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFuel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8076
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasLeanWater()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8077
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getLeanWater()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setLeanWater(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8079
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasCarSpeed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8080
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getCarSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setCarSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8082
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasEngineSpeed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8083
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getEngineSpeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setEngineSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8085
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasDoorStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8086
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDoorStatus()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeDoorStatus(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8088
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasLampStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8089
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getLampStatusChanged()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeLampStatusChanged(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8091
    :cond_c
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasOutsideTemperature()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8092
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getOutsideTemperature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setOutsideTemperature(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8094
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasAirCondition()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8095
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getAirCondition()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeAirCondition(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8097
    :cond_e
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->hasBatteryVoltage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8098
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getBatteryVoltage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->setBatteryVoltage(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 8100
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFuel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 3

    .line 8500
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 8501
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8502
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 8503
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8504
    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    goto :goto_0

    .line 8506
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8508
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_1

    .line 8510
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8512
    :goto_1
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeLampStatusChanged(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 3

    .line 8957
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x800

    if-nez v0, :cond_1

    .line 8958
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8959
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 8960
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8961
    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    goto :goto_0

    .line 8963
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8965
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_1

    .line 8967
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8969
    :goto_1
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAcc(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8312
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8313
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 8314
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8310
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setAirCondition(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 9143
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9144
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9145
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 9147
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9149
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAirCondition(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 9122
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 9126
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 9127
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 9124
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 9129
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->airConditionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9131
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setBatteryVoltage(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9271
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 9272
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 9273
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 9269
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setBrakeState(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8159
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8160
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 8161
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8157
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setCarSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8662
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8663
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 8664
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8660
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setDoorStatus(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8788
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8789
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8790
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8792
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8794
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDoorStatus(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8767
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8771
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 8772
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8769
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 8774
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->doorStatusBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8776
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEnduranceMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8408
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8409
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->enduranceMileage_:I

    .line 8410
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setEngineSpeed(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8713
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8714
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 8715
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8711
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFuel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8483
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8484
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8485
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8487
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8489
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFuel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8462
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8466
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 8467
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8464
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 8469
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->fuelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8471
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGear(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8261
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8262
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 8263
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8259
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setLampStatusChanged(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8940
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8941
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8942
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8944
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8946
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLampStatusChanged(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8919
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8923
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 8924
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    goto :goto_0

    .line 8921
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 8926
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->lampStatusChangedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8928
    :goto_0
    iget p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLeanWater(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8611
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8612
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 8613
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8609
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setOutsideTemperature(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9068
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 9069
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 9070
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 9066
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setSeatBelt(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8210
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8211
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 8212
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0

    .line 8208
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setTotalMileage(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 8360
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->bitField0_:I

    .line 8361
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->totalMileage_:I

    .line 8362
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->onChanged()V

    return-object p0
.end method
