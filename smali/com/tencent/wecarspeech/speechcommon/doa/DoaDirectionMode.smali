.class public final enum Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;
.super Ljava/lang/Enum;
.source "DoaDirectionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum CHJ_DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_ALL:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

.field public static final enum DIRECTION_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 5
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_ALL:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 6
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 7
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 8
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_FRONT_LEFT"

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 9
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_FRONT_RIGHT"

    const/4 v8, 0x5

    const/16 v9, 0xb

    invoke-direct {v0, v1, v8, v9}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 10
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_MIDDLE_LEFT"

    const/4 v10, 0x6

    const/16 v11, 0xc

    invoke-direct {v0, v1, v10, v11}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 11
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_MIDDLE_RIGHT"

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v0, v1, v12, v13}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 12
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_BEHIND_LEFT"

    const/16 v14, 0x8

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 13
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "DIRECTION_BEHIND_RIGHT"

    const/16 v14, 0xf

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v14}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 14
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_NONE"

    const/16 v12, 0x14

    invoke-direct {v0, v1, v7, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 15
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_FRONT_LEFT"

    const/16 v12, 0x15

    invoke-direct {v0, v1, v9, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 16
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_FRONT_RIGHT"

    const/16 v12, 0x16

    invoke-direct {v0, v1, v11, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 17
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_MIDDLE_LEFT"

    const/16 v12, 0x17

    invoke-direct {v0, v1, v13, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 18
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_MIDDLE_RIGHT"

    const/16 v12, 0x18

    invoke-direct {v0, v1, v15, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 19
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_BEHIND_LEFT"

    const/16 v12, 0x19

    invoke-direct {v0, v1, v14, v12}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    .line 20
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const-string v1, "CHJ_DIRECTION_BEHIND_RIGHT"

    const/16 v12, 0x10

    const/16 v14, 0x1a

    invoke-direct {v0, v1, v12, v14}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/16 v0, 0x11

    .line 3
    new-array v0, v0, [Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_ALL:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    aput-object v1, v0, v15

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->$VALUES:[Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 79
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 77
    :pswitch_0
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 75
    :pswitch_1
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 73
    :pswitch_2
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 71
    :pswitch_3
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 69
    :pswitch_4
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 67
    :pswitch_5
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 65
    :pswitch_6
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->CHJ_DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 63
    :pswitch_7
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 61
    :pswitch_8
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_BEHIND_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 59
    :pswitch_9
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 57
    :pswitch_a
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_MIDDLE_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 55
    :pswitch_b
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 53
    :pswitch_c
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_FRONT_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 51
    :pswitch_d
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_RIGHT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 49
    :pswitch_e
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_LEFT:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 47
    :pswitch_f
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_ALL:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    .line 45
    :pswitch_10
    sget-object p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->DIRECTION_NONE:Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;
    .locals 1

    .line 3
    const-class v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->$VALUES:[Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 31
    iget v0, p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->value:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 32
    iget p0, p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->value:I

    sub-int/2addr p0, v1

    return p0

    .line 34
    :cond_0
    iget p0, p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->value:I

    return p0
.end method

.method public toIntReal()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->value:I

    return p0
.end method
