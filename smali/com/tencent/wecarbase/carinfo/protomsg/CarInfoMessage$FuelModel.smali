.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FuelModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    }
.end annotation


# static fields
.field public static final AVERAGEFUELCONSUMPTION_FIELD_NUMBER:I = 0x4

.field public static final FUELSTATEWARNING_FIELD_NUMBER:I = 0x1

.field public static final INSTANTANEOUSFUELCONSUMPTION_FIELD_NUMBER:I = 0x3

.field public static final MREMAINFUEL_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

.field private static final serialVersionUID:J


# instance fields
.field private averageFuelConsumption_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field private instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

.field private mRemainFuel_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1669
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 2238
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;-><init>(Z)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    .line 2239
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1599
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1775
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedIsInitialized:B

    .line 1803
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedSerializedSize:I

    .line 1600
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->initFields()V

    .line 1603
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 1607
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v5, 0x10

    if-eq v2, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_2

    const/16 v5, 0x22

    if-eq v2, v5, :cond_1

    .line 1613
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1641
    :cond_1
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    .line 1642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1636
    :cond_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    .line 1637
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1631
    :cond_3
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    .line 1632
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    goto :goto_0

    .line 1620
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1621
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1623
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 1625
    :cond_5
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    .line 1626
    iput-object v4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1650
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1651
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1648
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1653
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1654
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->makeExtensionsImmutable()V

    throw p1

    .line 1653
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1654
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1570
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1576
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1775
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedIsInitialized:B

    .line 1803
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedSerializedSize:I

    .line 1577
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 1570
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1775
    iput-byte p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedIsInitialized:B

    .line 1803
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedSerializedSize:I

    .line 1579
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1570
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;I)I
    .locals 0

    .line 1570
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 1570
    sget-boolean v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 0

    .line 1570
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p1
.end method

.method static synthetic access$802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;I)I
    .locals 0

    .line 1570
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    return p1
.end method

.method static synthetic access$902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1570
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1

    .line 1583
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1659
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 1770
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    const/4 v0, 0x0

    .line 1771
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    .line 1772
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1773
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1890
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->access$300()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1893
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1870
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1876
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1840
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1846
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1881
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1887
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1860
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1850
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1856
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method


# virtual methods
.method public getAverageFuelConsumption()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;
    .locals 0

    .line 1587
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    return-object p0
.end method

.method public getFuelStateWarning()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 0

    .line 1697
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0
.end method

.method public getInstantaneousFuelConsumption()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1743
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getMRemainFuel()I
    .locals 0

    .line 1720
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;",
            ">;"
        }
    .end annotation

    .line 1681
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1805
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1809
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1810
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 1811
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1813
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1814
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    .line 1815
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1817
    :cond_2
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1818
    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1819
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1821
    :cond_3
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1822
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    .line 1823
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1825
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1826
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1594
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasAverageFuelConsumption()Z
    .locals 1

    .line 1756
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

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

    .line 1691
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

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

    .line 1733
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

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

    .line 1710
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

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

    .line 1664
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    .line 1665
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1777
    iget-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1781
    :cond_1
    iput-byte v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1570
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 0

    .line 1891
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 1

    .line 1900
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1570
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;
    .locals 0

    .line 1895
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel$Builder;

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

    .line 1834
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

    .line 1787
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getSerializedSize()I

    .line 1788
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->fuelStateWarning_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1791
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1792
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->mRemainFuel_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1794
    :cond_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1795
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->instantaneousFuelConsumption_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1797
    :cond_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1798
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->averageFuelConsumption_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1800
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
