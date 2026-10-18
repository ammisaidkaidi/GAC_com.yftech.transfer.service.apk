.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoorStatusModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    }
.end annotation


# static fields
.field public static final ENGINECOVER_FIELD_NUMBER:I = 0x6

.field public static final FRONTLEFTDOOR_FIELD_NUMBER:I = 0x1

.field public static final FRONTRIGHTDOOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REARLEFTDOOR_FIELD_NUMBER:I = 0x3

.field public static final REARRIGHTDOOR_FIELD_NUMBER:I = 0x4

.field public static final SKYLIGHT_FIELD_NUMBER:I = 0x5

.field public static final TANK_FIELD_NUMBER:I = 0x8

.field public static final TRUNK_FIELD_NUMBER:I = 0x7

.field public static final WINDSHIELD_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2577
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 3628
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;-><init>(Z)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    .line 3629
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2434
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 2811
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedIsInitialized:B

    .line 2854
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedSerializedSize:I

    .line 2435
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->initFields()V

    .line 2438
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_14

    .line 2442
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    const/16 v4, 0x8

    if-eq v2, v4, :cond_11

    const/16 v5, 0x10

    if-eq v2, v5, :cond_f

    const/16 v6, 0x18

    const/4 v7, 0x4

    if-eq v2, v6, :cond_d

    const/16 v6, 0x20

    if-eq v2, v6, :cond_b

    const/16 v7, 0x28

    if-eq v2, v7, :cond_9

    const/16 v5, 0x30

    if-eq v2, v5, :cond_7

    const/16 v5, 0x38

    const/16 v6, 0x40

    if-eq v2, v5, :cond_5

    if-eq v2, v6, :cond_3

    const/16 v4, 0x48

    if-eq v2, v4, :cond_1

    .line 2448
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2543
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2544
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0x9

    .line 2546
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2548
    :cond_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2549
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 2532
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2533
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2535
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2537
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2538
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 2521
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2522
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x7

    .line 2524
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2526
    :cond_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2527
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 2510
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2511
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x6

    .line 2513
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2515
    :cond_8
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2516
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 2499
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2500
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_a

    const/4 v3, 0x5

    .line 2502
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2504
    :cond_a
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2505
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 2488
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2489
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_c

    .line 2491
    invoke-virtual {v0, v7, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2493
    :cond_c
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2494
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 2477
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2478
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_e

    const/4 v3, 0x3

    .line 2480
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2482
    :cond_e
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2483
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 2466
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2467
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    .line 2469
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2471
    :cond_10
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2472
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 2455
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2456
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v4

    if-nez v4, :cond_12

    .line 2458
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 2460
    :cond_12
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    .line 2461
    iput-object v4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2558
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2559
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2556
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2561
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2562
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->makeExtensionsImmutable()V

    throw p1

    .line 2561
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2562
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2405
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2411
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 2811
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedIsInitialized:B

    .line 2854
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedSerializedSize:I

    .line 2412
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 2405
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2414
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 2811
    iput-byte p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedIsInitialized:B

    .line 2854
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedSerializedSize:I

    .line 2414
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 2405
    sget-boolean v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;I)I
    .locals 0

    .line 2405
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1

    .line 2418
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2567
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 2801
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2802
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2803
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2804
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2805
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2806
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2807
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2808
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2809
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-void
.end method

.method public static newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 2961
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->access$1500()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 2964
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2947
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2911
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2917
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2952
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2958
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2931
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2937
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2921
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2927
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 0

    .line 2422
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    return-object p0
.end method

.method public getEngineCover()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2728
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFrontLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2613
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFrontRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2636
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;",
            ">;"
        }
    .end annotation

    .line 2589
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getRearLeftDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2659
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getRearRightDoor()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2682
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2856
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2860
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2861
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2862
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2864
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2865
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2866
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2868
    :cond_2
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2869
    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2870
    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2872
    :cond_3
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2873
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2874
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2876
    :cond_4
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 2877
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2878
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2880
    :cond_5
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 2881
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2882
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2884
    :cond_6
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 2885
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2886
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2888
    :cond_7
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 2889
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2890
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2892
    :cond_8
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 2893
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 2894
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2896
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2897
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedSerializedSize:I

    return v0
.end method

.method public getSkylight()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2705
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getTank()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2774
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getTrunk()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2751
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2429
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getWindShield()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 2797
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public hasEngineCover()Z
    .locals 1

    .line 2718
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2603
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2626
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2649
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2672
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2695
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2764
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2741
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2787
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

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

    .line 2572
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    .line 2573
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2813
    iget-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2817
    :cond_1
    iput-byte v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 0

    .line 2962
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 1

    .line 2971
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;
    .locals 0

    .line 2966
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$Builder;

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

    .line 2905
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

    .line 2823
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getSerializedSize()I

    .line 2824
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2827
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2828
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->frontRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2830
    :cond_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2831
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearLeftDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2833
    :cond_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2834
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->rearRightDoor_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2836
    :cond_3
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 2837
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->skylight_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2839
    :cond_4
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 2840
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->engineCover_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2842
    :cond_5
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 2843
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->trunk_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2845
    :cond_6
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 2846
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->tank_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2848
    :cond_7
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 2849
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->windShield_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2851
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
