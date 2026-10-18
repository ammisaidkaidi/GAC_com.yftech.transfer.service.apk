.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;",
        ">;",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3165
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3216
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3267
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3318
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3369
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3420
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3471
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3522
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3573
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2995
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3000
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3165
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3216
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3267
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3318
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3369
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3420
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3471
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3522
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3573
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3001
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 2977
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 2977
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3008
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2983
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3004
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$1700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1

    .line 3048
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    .line 3049
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3050
    :cond_0
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 5

    .line 3056
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    .line 3057
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3062
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$1902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3066
    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3070
    :cond_2
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3074
    :cond_3
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 3078
    :cond_4
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 3082
    :cond_5
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 3086
    :cond_6
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 3090
    :cond_7
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 3094
    :cond_8
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3095
    invoke-static {v0, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->access$2802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;I)I

    .line 3096
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3013
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3014
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3015
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3016
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3017
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3018
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3019
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3020
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3021
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3022
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3023
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3024
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3025
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3026
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3027
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3028
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3029
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3030
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEngineCover()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3465
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3466
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3467
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFrontLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3210
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3211
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3212
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFrontRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3261
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3262
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3263
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRearLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3312
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3313
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3314
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRearRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3363
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3364
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3365
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSkylight()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3414
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3415
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3416
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTank()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3567
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3568
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3569
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTrunk()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3516
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3517
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3518
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWindShield()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3618
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3619
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3620
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3035
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

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

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2977
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 0

    .line 3044
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 3040
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getEngineCover()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3439
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFrontLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3184
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFrontRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3235
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getRearLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3286
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getRearRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3337
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getSkylight()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3388
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getTank()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3541
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getTrunk()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3490
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getWindShield()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3592
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public hasEngineCover()Z
    .locals 1

    .line 3429
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasFrontLeftDoor()Z
    .locals 1

    .line 3174
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrontRightDoor()Z
    .locals 1

    .line 3225
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasRearLeftDoor()Z
    .locals 1

    .line 3276
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasRearRightDoor()Z
    .locals 1

    .line 3327
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasSkylight()Z
    .locals 1

    .line 3378
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasTank()Z
    .locals 1

    .line 3531
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasTrunk()Z
    .locals 1

    .line 3480
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method public hasWindShield()Z
    .locals 1

    .line 3582
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 2

    .line 2988
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 2989
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

    .line 2977
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

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

    .line 2977
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

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

    .line 2977
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2977
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

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

    .line 2977
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3152
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3158
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3154
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3155
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3158
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3101
    instance-of v0, p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    if-eqz v0, :cond_0

    .line 3102
    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0

    .line 3104
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 3110
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3111
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasFrontLeftDoor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3112
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getFrontLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setFrontLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3114
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasFrontRightDoor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3115
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getFrontRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setFrontRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3117
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasRearLeftDoor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3118
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getRearLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setRearLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3120
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasRearRightDoor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3121
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getRearRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setRearRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3123
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasSkylight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3124
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getSkylight()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setSkylight(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3126
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasEngineCover()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3127
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getEngineCover()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setEngineCover(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3129
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasTrunk()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3130
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getTrunk()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setTrunk(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3132
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasTank()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3133
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getTank()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setTank(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3135
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->hasWindShield()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3136
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getWindShield()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->setWindShield(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 3138
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setEngineCover(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3452
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3453
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3454
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3450
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFrontLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3197
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3198
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3199
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3195
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFrontRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3248
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3249
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3250
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3246
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setRearLeftDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3299
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3300
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3301
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3297
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setRearRightDoor(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3350
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3351
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3352
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3348
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setSkylight(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3401
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3402
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3403
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3399
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setTank(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3554
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3555
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3556
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3552
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setTrunk(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3503
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3504
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3505
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3501
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setWindShield(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3605
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->bitField0_:I

    .line 3606
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 3607
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->onChanged()V

    return-object p0

    .line 3603
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
