.class public final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LampModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    }
.end annotation


# static fields
.field public static final BACKLAMP_FIELD_NUMBER:I = 0xa

.field public static final DAYLAMP_FIELD_NUMBER:I = 0x8

.field public static final EMERGENCYLAMP_FIELD_NUMBER:I = 0x4

.field public static final FARLAMP_FIELD_NUMBER:I = 0x6

.field public static final FORKLAMP_FIELD_NUMBER:I = 0x5

.field public static final LEFTLAMP_FIELD_NUMBER:I = 0x1

.field public static final NEARLAMP_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHTLAMP_FIELD_NUMBER:I = 0x2

.field public static final STOPLAMP_FIELD_NUMBER:I = 0x9

.field public static final WIDTHLAMP_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

.field private static final serialVersionUID:J


# instance fields
.field private backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private bitField0_:I

.field private dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3995
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 5137
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;-><init>(Z)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    .line 5138
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3841
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4253
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedIsInitialized:B

    .line 4299
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedSerializedSize:I

    .line 3842
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->initFields()V

    .line 3845
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 3849
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 3855
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 3961
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3962
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0xa

    .line 3964
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 3966
    :cond_1
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3967
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 3950
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3951
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0x9

    .line 3953
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 3955
    :cond_2
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3956
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 3939
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3940
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3942
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 3944
    :cond_3
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3945
    iput-object v4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 3928
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3929
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x7

    .line 3931
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 3933
    :cond_4
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3934
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto :goto_0

    .line 3917
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3918
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x6

    .line 3920
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3922
    :cond_5
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3923
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 3906
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3907
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x5

    .line 3909
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3911
    :cond_6
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3912
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 3895
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3896
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v5

    if-nez v5, :cond_7

    .line 3898
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3900
    :cond_7
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3901
    iput-object v5, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 3884
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3885
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x3

    .line 3887
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3889
    :cond_8
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3890
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 3873
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3874
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_9

    .line 3876
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3878
    :cond_9
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3879
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    goto/16 :goto_0

    .line 3862
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 3863
    invoke-static {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    move-result-object v3

    if-nez v3, :cond_a

    .line 3865
    invoke-virtual {v0, v5, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 3867
    :cond_a
    iget v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    .line 3868
    iput-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
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

    .line 3976
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3977
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3974
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3979
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3980
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->makeExtensionsImmutable()V

    throw p1

    .line 3979
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3980
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3812
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3818
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 4253
    iput-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedIsInitialized:B

    .line 4299
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedSerializedSize:I

    .line 3819
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V
    .locals 0

    .line 3812
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3821
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 4253
    iput-byte p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedIsInitialized:B

    .line 4299
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedSerializedSize:I

    .line 3821
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    .line 3812
    sget-boolean v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 3812
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;I)I
    .locals 0

    .line 3812
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1

    .line 3825
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3985
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 4242
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4243
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4244
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4245
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4246
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4247
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4248
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4249
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4250
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4251
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->COMMON_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-void
.end method

.method public static newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4410
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->access$3200()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4413
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;->mergeFrom(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4390
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4396
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4360
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4366
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4401
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4407
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4380
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4386
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4370
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4376
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method


# virtual methods
.method public getBackLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4238
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getDayLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4192
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;
    .locals 0

    .line 3829
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->defaultInstance:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    return-object p0
.end method

.method public getEmergencyLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4100
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getFarLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4146
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getForkLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4123
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getLeftLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4031
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getNearLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4169
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;",
            ">;"
        }
    .end annotation

    .line 4007
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getRightLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4054
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 4301
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4305
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4306
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4307
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4309
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4310
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4311
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4313
    :cond_2
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 4314
    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4315
    invoke-virtual {v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4317
    :cond_3
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 4318
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4319
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4321
    :cond_4
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 4322
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4323
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4325
    :cond_5
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 4326
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4327
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4329
    :cond_6
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 4330
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4331
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4333
    :cond_7
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 4334
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4335
    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4337
    :cond_8
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 4338
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4339
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4341
    :cond_9
    iget v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 4342
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    .line 4343
    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4345
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4346
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedSerializedSize:I

    return v0
.end method

.method public getStopLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4215
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3836
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getWidthLamp()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;
    .locals 0

    .line 4077
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    return-object p0
.end method

.method public hasBackLamp()Z
    .locals 1

    .line 4228
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4182
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4090
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4136
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4113
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4021
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4159
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4044
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4205
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 4067
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

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

    .line 3990
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;

    const-class v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    .line 3991
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4255
    iget-byte v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4259
    :cond_1
    iput-byte v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3812
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 0

    .line 4411
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 1

    .line 4420
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3812
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;
    .locals 0

    .line 4415
    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->newBuilder(Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel$Builder;

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

    .line 4354
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

    .line 4265
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getSerializedSize()I

    .line 4266
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4267
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->leftLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4269
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4270
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->rightLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4272
    :cond_1
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 4273
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->widthLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4275
    :cond_2
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 4276
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->emergencyLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4278
    :cond_3
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 4279
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->forkLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4281
    :cond_4
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 4282
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->farLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4284
    :cond_5
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 4285
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->nearLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4287
    :cond_6
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 4288
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->dayLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4290
    :cond_7
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 4291
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->stopLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4293
    :cond_8
    iget v0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 4294
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->backLamp_:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$CommonStateModel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4296
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$LampModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
