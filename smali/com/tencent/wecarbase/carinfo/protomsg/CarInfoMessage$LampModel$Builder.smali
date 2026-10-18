.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;",
        ">;",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;"
    }
.end annotation


# instance fields
.field private backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private bitField0_:I

.field private dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4623
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4674
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4725
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4776
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4827
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4878
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4929
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4980
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5031
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5082
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4444
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 4449
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4623
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4674
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4725
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4776
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4827
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4878
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4929
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4980
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5031
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5082
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4450
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 4426
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3200()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4426
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4457
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4432
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4453
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$3400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1

    .line 4499
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    .line 4500
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4501
    :cond_0
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 5

    .line 4507
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    .line 4508
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4513
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$3602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4517
    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$3702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 4521
    :cond_2
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$3802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 4525
    :cond_3
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$3902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 4529
    :cond_4
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 4533
    :cond_5
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 4537
    :cond_6
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 4541
    :cond_7
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 4545
    :cond_8
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 4549
    :cond_9
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4550
    invoke-static {v0, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->access$4602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;I)I

    .line 4551
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4461
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4462
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4463
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4464
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4465
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4466
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4467
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4468
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4469
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4470
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4471
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4472
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4473
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4474
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4475
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4476
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4477
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4478
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4479
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4480
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4481
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBackLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 5127
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5128
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5129
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDayLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 5025
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5026
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5027
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEmergencyLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4821
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4822
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4823
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFarLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4923
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4924
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4925
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearForkLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4872
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4873
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4874
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLeftLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4668
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4669
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4670
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNearLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4974
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4975
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4976
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRightLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4719
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4720
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4721
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStopLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 5076
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5077
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5078
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWidthLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4770
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4771
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4772
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4486
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

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

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBackLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5101
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getDayLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4999
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 4426
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 0

    .line 4495
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 4491
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4795
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFarLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4897
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getForkLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4846
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getLeftLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4642
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getNearLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4948
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getRightLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4693
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getStopLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5050
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getWidthLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4744
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public hasBackLamp()Z
    .locals 1

    .line 5091
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasDayLamp()Z
    .locals 1

    .line 4989
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasEmergencyLamp()Z
    .locals 1

    .line 4785
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasFarLamp()Z
    .locals 1

    .line 4887
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasForkLamp()Z
    .locals 1

    .line 4836
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasLeftLamp()Z
    .locals 1

    .line 4632
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNearLamp()Z
    .locals 1

    .line 4938
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasRightLamp()Z
    .locals 1

    .line 4683
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasStopLamp()Z
    .locals 1

    .line 5040
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method public hasWidthLamp()Z
    .locals 1

    .line 4734
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 2

    .line 4437
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4438
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

    .line 4426
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

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

    .line 4426
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

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

    .line 4426
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4426
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

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

    .line 4426
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4610
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4616
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4612
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4613
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4616
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4556
    instance-of v0, p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    if-eqz v0, :cond_0

    .line 4557
    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0

    .line 4559
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4565
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4566
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasLeftLamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4567
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getLeftLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setLeftLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4569
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasRightLamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4570
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getRightLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setRightLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4572
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasWidthLamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4573
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getWidthLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setWidthLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4575
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasEmergencyLamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4576
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getEmergencyLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setEmergencyLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4578
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasForkLamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4579
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getForkLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setForkLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4581
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasFarLamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4582
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getFarLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setFarLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4584
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasNearLamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4585
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getNearLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setNearLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4587
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasDayLamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4588
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDayLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setDayLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4590
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasStopLamp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4591
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getStopLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setStopLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4593
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->hasBackLamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4594
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getBackLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->setBackLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 4596
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setBackLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5114
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5115
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5116
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 5112
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setDayLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5012
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5013
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5014
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 5010
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setEmergencyLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4808
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4809
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4810
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4806
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFarLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4910
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4911
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4912
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4908
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setForkLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4859
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4860
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4861
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4857
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setLeftLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4655
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4656
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4657
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4653
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setNearLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4961
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4962
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4963
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4959
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setRightLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4706
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4707
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4708
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4704
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setStopLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5063
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 5064
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5065
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 5061
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setWidthLamp(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4757
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->bitField0_:I

    .line 4758
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4759
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->onChanged()V

    return-object p0

    .line 4755
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
