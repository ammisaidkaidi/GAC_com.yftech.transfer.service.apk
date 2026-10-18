.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeCarCarInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    }
.end annotation


# static fields
.field public static final ACC_FIELD_NUMBER:I = 0x4

.field public static final AIRCONDITION_FIELD_NUMBER:I = 0xe

.field public static final BATTERYVOLTAGE_FIELD_NUMBER:I = 0xf

.field public static final BRAKESTATE_FIELD_NUMBER:I = 0x1

.field public static final CARSPEED_FIELD_NUMBER:I = 0x9

.field public static final DOORSTATUS_FIELD_NUMBER:I = 0xb

.field public static final ENDURANCEMILEAGE_FIELD_NUMBER:I = 0x6

.field public static final ENGINESPEED_FIELD_NUMBER:I = 0xa

.field public static final FUEL_FIELD_NUMBER:I = 0x7

.field public static final GEAR_FIELD_NUMBER:I = 0x3

.field public static final LAMPSTATUSCHANGED_FIELD_NUMBER:I = 0xc

.field public static final LEANWATER_FIELD_NUMBER:I = 0x8

.field public static final OUTSIDETEMPERATURE_FIELD_NUMBER:I = 0xd

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEATBELT_FIELD_NUMBER:I = 0x2

.field public static final TOTALMILEAGE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

.field private static final serialVersionUID:J


# instance fields
.field private acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

.field private batteryVoltage_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

.field private carSpeed_:Lcom/google/protobuf/ByteString;

.field private doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

.field private enduranceMileage_:I

.field private engineSpeed_:Lcom/google/protobuf/ByteString;

.field private fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

.field private gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field private lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

.field private leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private outsideTemperature_:Lcom/google/protobuf/ByteString;

.field private seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

.field private totalMileage_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7223
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 9294
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;-><init>(Z)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    .line 9295
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7641
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedIsInitialized:B

    .line 7702
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedSerializedSize:I

    .line 7043
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->initFields()V

    .line 7046
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 7050
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 7056
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 7195
    :sswitch_0
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7196
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 7183
    :sswitch_1
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 7184
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v5

    .line 7186
    :cond_1
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    if-eqz v5, :cond_2

    .line 7188
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-virtual {v5, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 7189
    invoke-virtual {v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 7191
    :cond_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    goto :goto_0

    .line 7177
    :sswitch_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 7165
    :sswitch_3
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 7166
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v5

    .line 7168
    :cond_3
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    if-eqz v5, :cond_4

    .line 7170
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-virtual {v5, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 7171
    invoke-virtual {v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 7173
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    goto/16 :goto_0

    .line 7152
    :sswitch_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    .line 7153
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v5

    .line 7155
    :cond_5
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    if-eqz v5, :cond_6

    .line 7157
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-virtual {v5, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 7158
    invoke-virtual {v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 7160
    :cond_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    goto/16 :goto_0

    .line 7146
    :sswitch_5
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7147
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 7141
    :sswitch_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 7130
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 7131
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    move-result-object v4

    if-nez v4, :cond_7

    .line 7133
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 7135
    :cond_7
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7136
    iput-object v4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    goto/16 :goto_0

    .line 7118
    :sswitch_8
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    .line 7119
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v5

    .line 7121
    :cond_8
    sget-object v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    if-eqz v5, :cond_9

    .line 7123
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-virtual {v5, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 7124
    invoke-virtual {v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 7126
    :cond_9
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    goto/16 :goto_0

    .line 7112
    :sswitch_9
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    goto/16 :goto_0

    .line 7107
    :sswitch_a
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    goto/16 :goto_0

    .line 7096
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 7097
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v5

    if-nez v5, :cond_a

    .line 7099
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 7101
    :cond_a
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7102
    iput-object v5, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 7085
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 7086
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v3, 0x3

    .line 7088
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 7090
    :cond_b
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7091
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    goto/16 :goto_0

    .line 7074
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 7075
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_c

    .line 7077
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 7079
    :cond_c
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7080
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    goto/16 :goto_0

    .line 7063
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 7064
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    move-result-object v3

    if-nez v3, :cond_d

    .line 7066
    invoke-virtual {v0, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 7068
    :cond_d
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    .line 7069
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    move v1, v6

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 7204
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7205
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7202
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7207
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7208
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->makeExtensionsImmutable()V

    throw p1

    .line 7207
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7208
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x3a -> :sswitch_8
        0x40 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7013
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 7019
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 7641
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedIsInitialized:B

    .line 7702
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedSerializedSize:I

    .line 7020
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 7013
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 7022
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 7641
    iput-byte p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedIsInitialized:B

    .line 7702
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedSerializedSize:I

    .line 7022
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7100()Z
    .locals 1

    .line 7013
    sget-boolean v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I
    .locals 0

    .line 7013
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    return p1
.end method

.method static synthetic access$7802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I
    .locals 0

    .line 7013
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    return p1
.end method

.method static synthetic access$7902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;I)I
    .locals 0

    .line 7013
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1

    .line 7026
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7213
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 7625
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->BRAKE_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 7626
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->SEAT_BELT_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 7627
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 7628
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    const/4 v0, 0x0

    .line 7629
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    .line 7630
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    .line 7631
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 7632
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->LEAN_WATER_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 7633
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 7634
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 7635
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 7636
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 7637
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 7638
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 7639
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7833
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->access$6900()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7836
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7813
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7819
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7783
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7789
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7824
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7830
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7803
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7809
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7793
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7799
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method


# virtual methods
.method public getAcc()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 7328
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getAirCondition()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 0

    .line 7588
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getAirConditionOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;
    .locals 0

    .line 7598
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getBatteryVoltage()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7621
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getBrakeState()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;
    .locals 0

    .line 7259
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    return-object p0
.end method

.method public getCarSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7453
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;
    .locals 0

    .line 7030
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    return-object p0
.end method

.method public getDoorStatus()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 0

    .line 7499
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getDoorStatusOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;
    .locals 0

    .line 7509
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getEnduranceMileage()I
    .locals 0

    .line 7374
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    return p0
.end method

.method public getEngineSpeed()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7476
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 0

    .line 7397
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getFuelOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;
    .locals 0

    .line 7407
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getGear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 0

    .line 7305
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0
.end method

.method public getLampStatusChanged()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 0

    .line 7532
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getLampStatusChangedOrBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;
    .locals 0

    .line 7542
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getLeanWater()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;
    .locals 0

    .line 7430
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    return-object p0
.end method

.method public getOutsideTemperature()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7565
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;",
            ">;"
        }
    .end annotation

    .line 7235
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSeatBelt()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;
    .locals 0

    .line 7282
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 7704
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7708
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7709
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    .line 7710
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7712
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7713
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    .line 7714
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7716
    :cond_2
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7717
    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 7718
    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7720
    :cond_3
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 7721
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 7722
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7724
    :cond_4
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 7725
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    .line 7726
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7728
    :cond_5
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 7729
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    .line 7730
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7732
    :cond_6
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 7733
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 7734
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7736
    :cond_7
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 7737
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    .line 7738
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7740
    :cond_8
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 7741
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    .line 7742
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7744
    :cond_9
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 7745
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    .line 7746
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7748
    :cond_a
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 7749
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 7750
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7752
    :cond_b
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 7753
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 7754
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7756
    :cond_c
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 7757
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    .line 7758
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7760
    :cond_d
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    .line 7761
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 7762
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7764
    :cond_e
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0xf

    .line 7765
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    .line 7766
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7768
    :cond_f
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7769
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTotalMileage()I
    .locals 0

    .line 7351
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    return p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 7037
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasAcc()Z
    .locals 1

    .line 7318
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7578
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7611
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7249
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7443
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7489
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7364
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7466
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7387
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7295
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7522
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7420
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7555
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7272
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7341
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

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

    .line 7218
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$6700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    .line 7219
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7643
    iget-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 7647
    :cond_1
    iput-byte v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7013
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 0

    .line 7834
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 1

    .line 7843
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 7013
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;
    .locals 0

    .line 7838
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 7777
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7653
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getSerializedSize()I

    .line 7654
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7655
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->brakeState_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$BrakeStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7657
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7658
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->seatBelt_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$SeatBeltModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7660
    :cond_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7661
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->gear_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7663
    :cond_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 7664
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->acc_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7666
    :cond_3
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 7667
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->totalMileage_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7669
    :cond_4
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 7670
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->enduranceMileage_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7672
    :cond_5
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 7673
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->fuel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7675
    :cond_6
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 7676
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->leanWater_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LeanWaterModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7678
    :cond_7
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 7679
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->carSpeed_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7681
    :cond_8
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 7682
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->engineSpeed_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7684
    :cond_9
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 7685
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->doorStatus_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7687
    :cond_a
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    .line 7688
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->lampStatusChanged_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7690
    :cond_b
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    .line 7691
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->outsideTemperature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7693
    :cond_c
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    .line 7694
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->airCondition_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7696
    :cond_d
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    const/16 v0, 0xf

    .line 7697
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->batteryVoltage_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7699
    :cond_e
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$WeCarCarInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
