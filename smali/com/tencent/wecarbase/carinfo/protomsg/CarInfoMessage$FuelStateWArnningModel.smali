.class public final enum Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
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
    name = "FuelStateWArnningModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field public static final enum STATE_WARNING_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field public static final STATE_WARNING_LOW_VALUE:I = 0x2

.field public static final enum STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field public static final STATE_WARNING_NONE_VALUE:I = 0x0

.field public static final enum STATE_WARNING_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field public static final STATE_WARNING_NORMAL_VALUE:I = 0x1

.field private static final VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 643
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    const-string v1, "STATE_WARNING_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 647
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    const-string v1, "STATE_WARNING_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 651
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    const-string v1, "STATE_WARNING_LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    const/4 v0, 0x3

    .line 638
    new-array v0, v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    .line 684
    new-instance v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 704
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 719
    iput p3, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->index:I

    .line 720
    iput p4, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 701
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

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
            "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;",
            ">;"
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 674
    :pswitch_0
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_LOW:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0

    .line 673
    :pswitch_1
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NORMAL:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0

    .line 672
    :pswitch_2
    sget-object p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->STATE_WARNING_NONE:Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 2

    .line 708
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 712
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 709
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 1

    .line 638
    const-class v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
    .locals 1

    .line 638
    sget-object v0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->$VALUES:[Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 0

    .line 697
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    .line 668
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 1

    .line 693
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;->index:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method
