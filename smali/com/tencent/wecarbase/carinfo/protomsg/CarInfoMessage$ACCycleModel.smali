.class public final enum Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
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
    name = "ACCycleModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field public static final enum CYCLE_MODEL_INSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field public static final enum CYCLE_MODEL_INSIDE_AUTO:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field public static final CYCLE_MODEL_INSIDE_AUTO_VALUE:I = 0x3

.field public static final CYCLE_MODEL_INSIDE_VALUE:I = 0x1

.field public static final enum CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field public static final CYCLE_MODEL_NONE_VALUE:I = 0x0

.field public static final enum CYCLE_MODEL_OUTSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field public static final CYCLE_MODEL_OUTSIDE_VALUE:I = 0x2

.field private static final VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1282
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    const-string v1, "CYCLE_MODEL_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 1290
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    const-string v1, "CYCLE_MODEL_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 1298
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    const-string v1, "CYCLE_MODEL_OUTSIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_OUTSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 1306
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    const-string v1, "CYCLE_MODEL_INSIDE_AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE_AUTO:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    const/4 v0, 0x4

    .line 1273
    new-array v0, v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_OUTSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE_AUTO:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    .line 1360
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1380
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1395
    iput p3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->index:I

    .line 1396
    iput p4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1377
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

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
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;",
            ">;"
        }
    .end annotation

    .line 1357
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1350
    :pswitch_0
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE_AUTO:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0

    .line 1349
    :pswitch_1
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_OUTSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0

    .line 1348
    :pswitch_2
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_INSIDE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0

    .line 1347
    :pswitch_3
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->CYCLE_MODEL_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 2

    .line 1384
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1388
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 1385
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 1

    .line 1273
    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;
    .locals 1

    .line 1273
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 1373
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 1343
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 1369
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACCycleModel;->index:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
