.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;",
        ">;",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;"
    }
.end annotation


# instance fields
.field private aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

.field private auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private bitField0_:I

.field private cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field private dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

.field private frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private leftTemp_:Lcom/google/protobuf/ByteString;

.field private mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rightTemp_:Lcom/google/protobuf/ByteString;

.field private temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

.field private windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

.field private windLevel_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6166
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 6217
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 6268
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 6319
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 6402
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 6453
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6504
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 6555
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 6606
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6657
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5978
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5983
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6166
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 6217
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 6268
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 6319
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 6402
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 6453
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6504
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 6555
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 6606
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6657
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5984
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 5960
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5000()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5960
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5991
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5966
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5987
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1

    .line 6035
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    .line 6036
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6037
    :cond_0
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 5

    .line 6043
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    .line 6044
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6049
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6053
    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 6057
    :cond_2
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 6061
    :cond_3
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 6065
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windLevel_:I

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 6069
    :cond_5
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$5902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 6073
    :cond_6
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 6077
    :cond_7
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 6081
    :cond_8
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 6085
    :cond_9
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 6089
    :cond_a
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6090
    invoke-static {v0, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->access$6502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;I)I

    .line 6091
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5995
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5996
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 5997
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 5998
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 5999
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6000
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 6001
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6002
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 6003
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6004
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windLevel_:I

    .line 6005
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6006
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 6007
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6008
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6009
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6010
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 6011
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6012
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 6013
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6014
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6015
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6016
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6017
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAC()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6447
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6448
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 6449
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAuto()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6498
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6499
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6500
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCycleModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6549
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6550
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 6551
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDualZone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6600
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6601
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 6602
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFrontDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6651
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6652
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6653
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLeftTemp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6211
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6212
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getLeftTemp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 6213
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMBackDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6702
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6703
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6704
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRightTemp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6262
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6263
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getRightTemp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 6264
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTemperatureUnitType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6313
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6314
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 6315
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWindDirection()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6348
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6349
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 6350
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWindLevel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6396
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6397
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windLevel_:I

    .line 6398
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6022
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

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

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAC()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;
    .locals 0

    .line 6421
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    return-object p0
.end method

.method public getAuto()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 6472
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getCycleModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 0

    .line 6523
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5960
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 0

    .line 6031
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 6027
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getDualZone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;
    .locals 0

    .line 6574
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    return-object p0
.end method

.method public getFrontDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 6625
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getLeftTemp()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 6185
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getMBackDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 6676
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getRightTemp()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 6236
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getTemperatureUnitType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;
    .locals 0

    .line 6287
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    return-object p0
.end method

.method public getWindDirection()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;
    .locals 0

    .line 6330
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    return-object p0
.end method

.method public getWindLevel()I
    .locals 0

    .line 6373
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windLevel_:I

    return p0
.end method

.method public hasAC()Z
    .locals 1

    .line 6411
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasAuto()Z
    .locals 1

    .line 6462
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasCycleModel()Z
    .locals 1

    .line 6513
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasDualZone()Z
    .locals 1

    .line 6564
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasFrontDefog()Z
    .locals 1

    .line 6615
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasLeftTemp()Z
    .locals 1

    .line 6175
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMBackDefog()Z
    .locals 1

    .line 6666
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasRightTemp()Z
    .locals 1

    .line 6226
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasTemperatureUnitType()Z
    .locals 1

    .line 6277
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasWindDirection()Z
    .locals 1

    .line 6324
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

.method public hasWindLevel()Z
    .locals 1

    .line 6363
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

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

    .line 5971
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 5972
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5960
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

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

    .line 5960
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

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

    .line 5960
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5960
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

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

    .line 5960
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6153
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6155
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6156
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6159
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6096
    instance-of v0, p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    if-eqz v0, :cond_0

    .line 6097
    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0

    .line 6099
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6105
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6106
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasLeftTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6107
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getLeftTemp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setLeftTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6109
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasRightTemp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6110
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getRightTemp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setRightTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6112
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasTemperatureUnitType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6113
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getTemperatureUnitType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setTemperatureUnitType(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6115
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasWindDirection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6116
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getWindDirection()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setWindDirection(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6118
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasWindLevel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6119
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getWindLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setWindLevel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6121
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasAC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6122
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getAC()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setAC(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6124
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasAuto()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6125
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getAuto()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setAuto(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6127
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasCycleModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6128
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getCycleModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setCycleModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6130
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasDualZone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6131
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDualZone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setDualZone(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6133
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasFrontDefog()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6134
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getFrontDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setFrontDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6136
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->hasMBackDefog()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6137
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getMBackDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->setMBackDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 6139
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setAC(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6434
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6435
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 6436
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6432
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setAuto(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6485
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6486
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6487
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6483
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setCycleModel(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6536
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6537
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 6538
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6534
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setDualZone(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6587
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6588
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 6589
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6585
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFrontDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6638
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6639
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6640
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6636
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setLeftTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6198
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6199
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 6200
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6196
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setMBackDefog(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6689
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6690
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 6691
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6687
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setRightTemp(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6249
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6250
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 6251
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6247
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setTemperatureUnitType(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6300
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6301
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 6302
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6298
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setWindDirection(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6339
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6340
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 6341
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0

    .line 6337
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setWindLevel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 6383
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->bitField0_:I

    .line 6384
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->windLevel_:I

    .line 6385
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->onChanged()V

    return-object p0
.end method
