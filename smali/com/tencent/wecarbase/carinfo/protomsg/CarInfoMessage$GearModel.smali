.class public final enum Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
.super Ljava/lang/Enum;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GearModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final enum GEAR_STATE_D:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final enum GEAR_STATE_D1:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D1_VALUE:I = 0x6

.field public static final enum GEAR_STATE_D2:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D2_VALUE:I = 0x7

.field public static final enum GEAR_STATE_D3:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D3_VALUE:I = 0x8

.field public static final enum GEAR_STATE_D4:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D4_VALUE:I = 0x9

.field public static final enum GEAR_STATE_D5:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D5_VALUE:I = 0xa

.field public static final enum GEAR_STATE_D6:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_D6_VALUE:I = 0xb

.field public static final GEAR_STATE_D_VALUE:I = 0x4

.field public static final enum GEAR_STATE_N:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final enum GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_NONE_VALUE:I = 0x0

.field public static final GEAR_STATE_N_VALUE:I = 0x3

.field public static final enum GEAR_STATE_P:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_P_VALUE:I = 0x1

.field public static final enum GEAR_STATE_R:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_R_VALUE:I = 0x2

.field public static final enum GEAR_STATE_S:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field public static final GEAR_STATE_S_VALUE:I = 0x5

.field private static final VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 376
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 380
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_P"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_P:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 384
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_R"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_R:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 388
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_N"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_N:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 392
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 396
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_S"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_S:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 400
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D1"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D1:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 404
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D2"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D2:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 408
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D3"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10, v10}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D3:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 412
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D4"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11, v11}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D4:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 416
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D5"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12, v12}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D5:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 420
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const-string v1, "GEAR_STATE_D6"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13, v13}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D6:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    const/16 v0, 0xc

    .line 371
    new-array v0, v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_P:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_R:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_N:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_S:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D1:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D2:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D3:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v10

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D4:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D5:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v12

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D6:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    aput-object v1, v0, v13

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    .line 498
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 518
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 532
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 533
    iput p3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->index:I

    .line 534
    iput p4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 515
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 488
    :pswitch_0
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D6:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 487
    :pswitch_1
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D5:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 486
    :pswitch_2
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D4:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 485
    :pswitch_3
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D3:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 484
    :pswitch_4
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D2:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 483
    :pswitch_5
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D1:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 482
    :pswitch_6
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_S:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 481
    :pswitch_7
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_D:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 480
    :pswitch_8
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_N:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 479
    :pswitch_9
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_R:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 478
    :pswitch_a
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_P:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    .line 477
    :pswitch_b
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->GEAR_STATE_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 2

    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 526
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 523
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 1

    .line 371
    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;
    .locals 1

    .line 371
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 511
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 473
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 507
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$GearModel;->index:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
