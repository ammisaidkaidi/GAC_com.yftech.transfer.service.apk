.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.super Ljava/lang/Object;
.source "CarInfoMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfoOrBuilder;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AccModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;,
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wecar_carinfo_AirConditionModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_wecar_carinfo_DoorStatusModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_wecar_carinfo_FuelModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_wecar_carinfo_LampModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "\n\rcarinfo.proto\u0012\u0011com.wecar.carinfo\"\u00bf\u0001\n\tFuelModel\u0012W\n\u0010FuelStateWarning\u0018\u0001 \u0001(\u000e2).com.wecar.carinfo.FuelStateWArnningModel:\u0012STATE_WARNING_NONE\u0012\u0013\n\u000bmRemainFuel\u0018\u0002 \u0001(\u0005\u0012$\n\u001cInstantaneousFuelConsumption\u0018\u0003 \u0001(\u000c\u0012\u001e\n\u0016AverageFuelConsumption\u0018\u0004 \u0001(\u000c\"\u00bd\u0005\n\u000fDoorStatusModel\u0012M\n\rFrontLeftDoor\u0018\u0001 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012N\n\u000eFrontRightDoor\u0018\u0002 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STA"

    const-string v1, "TE_NONE\u0012L\n\u000cRearLeftDoor\u0018\u0003 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012M\n\rRearRightDoor\u0018\u0004 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\u0008Skylight\u0018\u0005 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012K\n\u000bEngineCover\u0018\u0006 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012E\n\u0005Trunk\u0018\u0007 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012D\n\u0004Tank\u0018\u0008 \u0001(\u000e"

    const-string v2, "2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012J\n\nWindShield\u0018\t \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"\u00f4\u0005\n\tLampModel\u0012H\n\u0008LeftLamp\u0018\u0001 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012I\n\tRightLamp\u0018\u0002 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012I\n\tWidthLamp\u0018\u0003 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012M\n\rEmergencyLamp\u0018\u0004 \u0001(\u000e2#.com."

    const-string v3, "wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\u0008ForkLamp\u0018\u0005 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012G\n\u0007FarLamp\u0018\u0006 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\u0008NearLamp\u0018\u0007 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012G\n\u0007DayLamp\u0018\u0008 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\u0008StopLamp\u0018\t \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011"

    const-string v4, "COMMON_STATE_NONE\u0012H\n\u0008BackLamp\u0018\n \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"\u0099\u0005\n\u0011AirConditionModel\u0012\u0010\n\u0008LeftTemp\u0018\u0001 \u0001(\u000c\u0012\u0011\n\tRightTemp\u0018\u0002 \u0001(\u000c\u0012K\n\u0013TemperatureUnitType\u0018\u0003 \u0001(\u000e2\u001b.com.wecar.carinfo.TempUnit:\u0011TEMP_UNIT_CELSIUS\u0012S\n\rWindDirection\u0018\u0004 \u0001(\u000e2\'.com.wecar.carinfo.ACWindDirectionModel:\u0013WIND_DIRECTION_NONE\u0012\u0014\n\tWindLevel\u0018\u0005 \u0001(\u0005:\u00010\u00125\n\u0002AC\u0018\u0006 \u0001(\u000e2\u001a.com.wecar.carinfo.ACState:\rAC_STATE_NONE\u0012D\n\u0004Auto\u0018\u0007 "

    const-string v5, "\u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012E\n\nCycleModel\u0018\u0008 \u0001(\u000e2\u001f.com.wecar.carinfo.ACCycleModel:\u0010CYCLE_MODEL_NONE\u0012K\n\u0008DualZone\u0018\t \u0001(\u000e2\".com.wecar.carinfo.DualZoneSupport:\u0015DUAL_ZONE_NOT_SUPPORT\u0012J\n\nFrontDefog\u0018\n \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012J\n\nmBackDefog\u0018\u000b \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"\u00d5\u0005\n\u000cWeCarCarInfo\u0012H\n\nBrakeState\u0018\u0001 \u0001(\u000e2\".c"

    const-string v6, "om.wecar.carinfo.BrakeStateModel:\u0010BRAKE_STATE_NONE\u0012H\n\u0008SeatBelt\u0018\u0002 \u0001(\u000e2 .com.wecar.carinfo.SeatBeltModel:\u0014SEAT_BELT_STATE_NONE\u0012;\n\u0004Gear\u0018\u0003 \u0001(\u000e2\u001c.com.wecar.carinfo.GearModel:\u000fGEAR_STATE_NONE\u0012C\n\u0003Acc\u0018\u0004 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012\u0014\n\u000cTotalMileage\u0018\u0005 \u0001(\u0005\u0012\u0018\n\u0010EnduranceMileage\u0018\u0006 \u0001(\u0005\u0012*\n\u0004Fuel\u0018\u0007 \u0001(\u000b2\u001c.com.wecar.carinfo.FuelModel\u0012K\n\tLeanWater\u0018\u0008 \u0001(\u000e2!.com.wecar.carinfo.LeanWaterModel"

    const-string v7, ":\u0015LEAN_WATER_STATE_NONE\u0012\u0010\n\u0008CarSpeed\u0018\t \u0001(\u000c\u0012\u0013\n\u000bEngineSpeed\u0018\n \u0001(\u000c\u00126\n\nDoorStatus\u0018\u000b \u0001(\u000b2\".com.wecar.carinfo.DoorStatusModel\u00127\n\u0011LampStatusChanged\u0018\u000c \u0001(\u000b2\u001c.com.wecar.carinfo.LampModel\u0012\u001a\n\u0012OutsideTemperature\u0018\r \u0001(\u000c\u0012:\n\u000cAirCondition\u0018\u000e \u0001(\u000b2$.com.wecar.carinfo.AirConditionModel\u0012\u0016\n\u000eBatteryVoltage\u0018\u000f \u0001(\u000c*X\n\u0010CommonStateModel\u0012\u0015\n\u0011COMMON_STATE_NONE\u0010\u0000\u0012\u0016\n\u0012COMMON_STATE_CLOSE\u0010\u0001\u0012\u0015\n\u0011COMMON_STATE_OPEN\u0010\u0002*Q\n\u000fBrakeStateModel\u0012\u0014\n\u0010"

    const-string v8, "BRAKE_STATE_NONE\u0010\u0000\u0012\u0012\n\u000eBRAKE_STATE_UP\u0010\u0001\u0012\u0014\n\u0010BRAKE_STATE_DOWN\u0010\u0002*Z\n\rSeatBeltModel\u0012\u0018\n\u0014SEAT_BELT_STATE_NONE\u0010\u0000\u0012\u0017\n\u0013SEAT_BELT_STATE_OFF\u0010\u0001\u0012\u0016\n\u0012SEAT_BELT_STATE_ON\u0010\u0002*\u00ec\u0001\n\tGearModel\u0012\u0013\n\u000fGEAR_STATE_NONE\u0010\u0000\u0012\u0010\n\u000cGEAR_STATE_P\u0010\u0001\u0012\u0010\n\u000cGEAR_STATE_R\u0010\u0002\u0012\u0010\n\u000cGEAR_STATE_N\u0010\u0003\u0012\u0010\n\u000cGEAR_STATE_D\u0010\u0004\u0012\u0010\n\u000cGEAR_STATE_S\u0010\u0005\u0012\u0011\n\rGEAR_STATE_D1\u0010\u0006\u0012\u0011\n\rGEAR_STATE_D2\u0010\u0007\u0012\u0011\n\rGEAR_STATE_D3\u0010\u0008\u0012\u0011\n\rGEAR_STATE_D4\u0010\t\u0012\u0011\n\rGEAR_STATE_D5\u0010\n\u0012\u0011\n\rGEAR_STATE_D6\u0010\u000b*C\n\u0008AccMo"

    const-string v9, "del\u0012\u0012\n\u000eACC_STATE_NONE\u0010\u0000\u0012\u0011\n\rACC_STATE_OFF\u0010\u0001\u0012\u0010\n\u000cACC_STATE_ON\u0010\u0002*a\n\u0016FuelStateWArnningModel\u0012\u0016\n\u0012STATE_WARNING_NONE\u0010\u0000\u0012\u0018\n\u0014STATE_WARNING_NORMAL\u0010\u0001\u0012\u0015\n\u0011STATE_WARNING_LOW\u0010\u0002*b\n\u000eLeanWaterModel\u0012\u0019\n\u0015LEAN_WATER_STATE_NONE\u0010\u0000\u0012\u0018\n\u0014LEAN_WATER_STATE_LOW\u0010\u0001\u0012\u001b\n\u0017LEAN_WATER_STATE_NORMAL\u0010\u0002*;\n\u0008TempUnit\u0012\u0015\n\u0011TEMP_UNIT_CELSIUS\u0010\u0000\u0012\u0018\n\u0014TEMP_UNIT_FAHRENHEIT\u0010\u0001*D\n\u0007ACState\u0012\u0011\n\rAC_STATE_NONE\u0010\u0000\u0012\u0011\n\rAC_STATE_WIND\u0010\u0001\u0012\u0013\n\u000fAC_STATE_FREEZE\u0010\u0002*\u008a\u0002\n\u0014ACWin"

    const-string v10, "dDirectionModel\u0012\u0017\n\u0013WIND_DIRECTION_NONE\u0010\u0000\u0012\u0017\n\u0013WIND_DIRECTION_FACE\u0010\u0001\u0012\u001f\n\u001bWIND_DIRECTION_FACE_AND_LEG\u0010\u0002\u0012\u0016\n\u0012WIND_DIRECTION_LEG\u0010\u0003\u0012&\n\"WIND_DIRECTION_FRONT_GLASS_AND_LEG\u0010\u0004\u0012\u001e\n\u001aWIND_DIRECTION_FRONT_GLASS\u0010\u0005\u0012\'\n#WIND_DIRECTION_FRONT_GLASS_AND_FACE\u0010\u0006\u0012\u0016\n\u0012WIND_DIRECTION_ALL\u0010\u0007*r\n\u000cACCycleModel\u0012\u0014\n\u0010CYCLE_MODEL_NONE\u0010\u0000\u0012\u0016\n\u0012CYCLE_MODEL_INSIDE\u0010\u0001\u0012\u0017\n\u0013CYCLE_MODEL_OUTSIDE\u0010\u0002\u0012\u001b\n\u0017CYCLE_MODEL_INSIDE_AUTO\u0010\u0003*C\n\u000fDualZoneSupport\u0012\u0019\n\u0015DU"

    const-string v11, "AL_ZONE_NOT_SUPPORT\u0010\u0000\u0012\u0015\n\u0011DUAL_ZONE_SUPPORT\u0010\u0001B1\n\u001fcom.tencent.wecarbase.carinfo.protomsgB\u000eCarInfoMessage"

    .line 9334
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 9449
    new-instance v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;

    invoke-direct {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;-><init>()V

    const/4 v2, 0x0

    .line 9457
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9458
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 9462
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_FuelModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9463
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_FuelModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "FuelStateWarning"

    const-string v3, "MRemainFuel"

    const-string v4, "InstantaneousFuelConsumption"

    const-string v5, "AverageFuelConsumption"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9468
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_DoorStatusModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9469
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_DoorStatusModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "FrontLeftDoor"

    const-string v3, "FrontRightDoor"

    const-string v4, "RearLeftDoor"

    const-string v5, "RearRightDoor"

    const-string v6, "Skylight"

    const-string v7, "EngineCover"

    const-string v8, "Trunk"

    const-string v9, "Tank"

    const-string v10, "WindShield"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9474
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_LampModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9475
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_LampModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "LeftLamp"

    const-string v3, "RightLamp"

    const-string v4, "WidthLamp"

    const-string v5, "EmergencyLamp"

    const-string v6, "ForkLamp"

    const-string v7, "FarLamp"

    const-string v8, "NearLamp"

    const-string v9, "DayLamp"

    const-string v10, "StopLamp"

    const-string v11, "BackLamp"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9480
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_AirConditionModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9481
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_AirConditionModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "LeftTemp"

    const-string v3, "RightTemp"

    const-string v4, "TemperatureUnitType"

    const-string v5, "WindDirection"

    const-string v6, "WindLevel"

    const-string v7, "AC"

    const-string v8, "Auto"

    const-string v9, "CycleModel"

    const-string v10, "DualZone"

    const-string v11, "FrontDefog"

    const-string v12, "MBackDefog"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9486
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9487
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const-string v2, "BrakeState"

    const-string v3, "SeatBelt"

    const-string v4, "Gear"

    const-string v5, "Acc"

    const-string v6, "TotalMileage"

    const-string v7, "EnduranceMileage"

    const-string v8, "Fuel"

    const-string v9, "LeanWater"

    const-string v10, "CarSpeed"

    const-string v11, "EngineSpeed"

    const-string v12, "DoorStatus"

    const-string v13, "LampStatusChanged"

    const-string v14, "OutsideTemperature"

    const-string v15, "AirCondition"

    const-string v16, "BatteryVoltage"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_FuelModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_DoorStatusModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_LampModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_AirConditionModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 9329
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
