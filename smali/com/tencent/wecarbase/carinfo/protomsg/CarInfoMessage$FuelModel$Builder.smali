.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;",
        ">;",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;"
    }
.end annotation


# instance fields
.field private averageFuelConsumption_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field private instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

.field private mRemainFuel_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2049
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 2132
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2183
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1924
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1929
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2049
    sget-object p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 2132
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2183
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1930
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 1906
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1906
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1937
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1912
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1933
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1

    .line 1967
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    .line 1968
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1969
    :cond_0
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 5

    .line 1975
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    .line 1976
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1981
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1985
    :cond_1
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mRemainFuel_:I

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1989
    :cond_2
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1993
    :cond_3
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$1002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1994
    invoke-static {v0, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->access$1102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;I)I

    .line 1995
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1941
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1942
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 1943
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1944
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mRemainFuel_:I

    .line 1945
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 1946
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1947
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 1948
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1949
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAverageFuelConsumption()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2228
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2229
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getAverageFuelConsumption()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2230
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFuelStateWarning()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2078
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2079
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 2080
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstantaneousFuelConsumption()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2177
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2178
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getInstantaneousFuelConsumption()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2179
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMRemainFuel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2126
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2127
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mRemainFuel_:I

    .line 2128
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1954
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->create()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->buildPartial()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

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

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->clone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAverageFuelConsumption()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2202
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1906
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 0

    .line 1963
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 1959
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFuelStateWarning()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 0

    .line 2060
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0
.end method

.method public getInstantaneousFuelConsumption()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2151
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getMRemainFuel()I
    .locals 0

    .line 2103
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mRemainFuel_:I

    return p0
.end method

.method public hasAverageFuelConsumption()Z
    .locals 1

    .line 2192
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

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

.method public hasFuelStateWarning()Z
    .locals 1

    .line 2054
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInstantaneousFuelConsumption()Z
    .locals 1

    .line 2141
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

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

.method public hasMRemainFuel()Z
    .locals 1

    .line 2093
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 2

    .line 1917
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 1918
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

    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

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

    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

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

    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1906
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

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

    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2036
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2042
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2038
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2042
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2000
    instance-of v0, p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    if-eqz v0, :cond_0

    .line 2001
    check-cast p1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0

    .line 2003
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2009
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2010
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->hasFuelStateWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2011
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getFuelStateWarning()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setFuelStateWarning(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 2013
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->hasMRemainFuel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2014
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getMRemainFuel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setMRemainFuel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 2016
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->hasInstantaneousFuelConsumption()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2017
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getInstantaneousFuelConsumption()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setInstantaneousFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 2019
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->hasAverageFuelConsumption()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2020
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getAverageFuelConsumption()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->setAverageFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 2022
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setAverageFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2215
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2216
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2217
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0

    .line 2213
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setFuelStateWarning(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2069
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2070
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 2071
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0

    .line 2067
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setInstantaneousFuelConsumption(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2164
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2165
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 2166
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0

    .line 2162
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setMRemainFuel(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 2113
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->bitField0_:I

    .line 2114
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mRemainFuel_:I

    .line 2115
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->onChanged()V

    return-object p0
.end method
