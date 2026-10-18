.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AirConditionModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    }
.end annotation


# static fields
.field public static final AC_FIELD_NUMBER:I = 0x6

.field public static final AUTO_FIELD_NUMBER:I = 0x7

.field public static final CYCLEMODEL_FIELD_NUMBER:I = 0x8

.field public static final DUALZONE_FIELD_NUMBER:I = 0x9

.field public static final FRONTDEFOG_FIELD_NUMBER:I = 0xa

.field public static final LEFTTEMP_FIELD_NUMBER:I = 0x1

.field public static final MBACKDEFOG_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHTTEMP_FIELD_NUMBER:I = 0x2

.field public static final TEMPERATUREUNITTYPE_FIELD_NUMBER:I = 0x3

.field public static final WINDDIRECTION_FIELD_NUMBER:I = 0x4

.field public static final WINDLEVEL_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

.field private static final serialVersionUID:J


# instance fields
.field private aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

.field private auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private bitField0_:I

.field private cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field private dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

.field private frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private leftTemp_:Lcom/google/protobuf/ByteString;

.field private mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rightTemp_:Lcom/google/protobuf/ByteString;

.field private temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

.field private windLevel_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5506
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 6712
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;-><init>(Z)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    .line 6713
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5359
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5780
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedIsInitialized:B

    .line 5829
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedSerializedSize:I

    .line 5360
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->initFields()V

    .line 5363
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 5367
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 5373
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 5472
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5473
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0xb

    .line 5475
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5477
    :cond_1
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5478
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 5461
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5462
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0xa

    .line 5464
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5466
    :cond_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5467
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 5450
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5451
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x9

    .line 5453
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5455
    :cond_3
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5456
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    goto :goto_0

    .line 5439
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5440
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    move-result-object v4

    if-nez v4, :cond_4

    .line 5442
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5444
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5445
    iput-object v4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    goto :goto_0

    .line 5428
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5429
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x7

    .line 5431
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 5433
    :cond_5
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5434
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 5417
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5418
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x6

    .line 5420
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 5422
    :cond_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5423
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    goto/16 :goto_0

    .line 5412
    :sswitch_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5413
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    goto/16 :goto_0

    .line 5401
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5402
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    move-result-object v5

    if-nez v5, :cond_7

    .line 5404
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 5406
    :cond_7
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5407
    iput-object v5, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    goto/16 :goto_0

    .line 5390
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5391
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x3

    .line 5393
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 5395
    :cond_8
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5396
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    goto/16 :goto_0

    .line 5385
    :sswitch_9
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 5380
    :sswitch_a
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    .line 5381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    move v1, v5

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5487
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5488
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5485
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5490
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5491
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->makeExtensionsImmutable()V

    throw p1

    .line 5490
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5491
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5330
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5336
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5780
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedIsInitialized:B

    .line 5829
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedSerializedSize:I

    .line 5337
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 5330
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5339
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 5780
    iput-byte p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedIsInitialized:B

    .line 5829
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedSerializedSize:I

    .line 5339
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5200()Z
    .locals 1

    .line 5330
    sget-boolean v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;I)I
    .locals 0

    .line 5330
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5330
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;I)I
    .locals 0

    .line 5330
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1

    .line 5343
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5496
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 5768
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 5769
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 5770
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->TEMP_UNIT_CELSIUS:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 5771
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->WIND_DIRECTION_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    const/4 v0, 0x0

    .line 5772
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    .line 5773
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->AC_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 5774
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5775
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 5776
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->DUAL_ZONE_NOT_SUPPORT:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 5777
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5778
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-void
.end method

.method public static newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5944
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->access$5000()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5947
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5924
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5930
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5894
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5900
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5935
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5941
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5914
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5920
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5904
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5910
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method


# virtual methods
.method public getAC()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;
    .locals 0

    .line 5649
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    return-object p0
.end method

.method public getAuto()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5672
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getCycleModel()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 0

    .line 5695
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;
    .locals 0

    .line 5347
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    return-object p0
.end method

.method public getDualZone()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;
    .locals 0

    .line 5718
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    return-object p0
.end method

.method public getFrontDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5741
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getLeftTemp()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5542
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getMBackDefog()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 5764
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;",
            ">;"
        }
    .end annotation

    .line 5518
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getRightTemp()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5565
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 5831
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5835
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5836
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;

    .line 5837
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5839
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5840
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    .line 5841
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5843
    :cond_2
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 5844
    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    .line 5845
    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5847
    :cond_3
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 5848
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    .line 5849
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5851
    :cond_4
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 5852
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    .line 5853
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5855
    :cond_5
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 5856
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    .line 5857
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5859
    :cond_6
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 5860
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5861
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5863
    :cond_7
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 5864
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 5865
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5867
    :cond_8
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 5868
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    .line 5869
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5871
    :cond_9
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 5872
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5873
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5875
    :cond_a
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 5876
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 5877
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5879
    :cond_b
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5880
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedSerializedSize:I

    return v0
.end method

.method public getTemperatureUnitType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;
    .locals 0

    .line 5588
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5354
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getWindDirection()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;
    .locals 0

    .line 5603
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    return-object p0
.end method

.method public getWindLevel()I
    .locals 0

    .line 5626
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    return p0
.end method

.method public hasAC()Z
    .locals 1

    .line 5639
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5662
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5685
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5708
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5731
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5532
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5754
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5555
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5578
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5597
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5616
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

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

    .line 5501
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    .line 5502
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5782
    iget-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 5786
    :cond_1
    iput-byte v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5330
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 0

    .line 5945
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 1

    .line 5954
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5330
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;
    .locals 0

    .line 5949
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel$Builder;

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

    .line 5888
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

    .line 5792
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getSerializedSize()I

    .line 5793
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5794
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->leftTemp_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5796
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5797
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->rightTemp_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5799
    :cond_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 5800
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->temperatureUnitType_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$TempUnit;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5802
    :cond_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 5803
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windDirection_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5805
    :cond_3
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 5806
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->windLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5808
    :cond_4
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 5809
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->aC_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACState;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5811
    :cond_5
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 5812
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->auto_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5814
    :cond_6
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 5815
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->cycleModel_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5817
    :cond_7
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 5818
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->dualZone_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DualZoneSupport;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5820
    :cond_8
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 5821
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->frontDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5823
    :cond_9
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 5824
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->mBackDefog_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5826
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$AirConditionModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
