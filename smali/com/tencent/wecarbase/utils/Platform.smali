.class public final enum Lcom/tencent/wecarbase/utils/Platform;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/utils/Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum BCLX:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum BYD_TANG:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum CHANGAN_HAOBANGSHOU:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum CHANGAN_S311:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum CHJ_M01:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum DFQC:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum FEIGE:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A06:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A10:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A26:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A32:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A35:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A39:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum GUANGQI_A75:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum JLBT:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum LIUQI_HUAYANG:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum LIUQI_T5:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum PUFANGDA_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum RL_MTK3561:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum RL_NAVI:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum RL_TAS_V2:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum ROADROVER_T3:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum ROADROVER_T8:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum SL_NWD_T3:Lcom/tencent/wecarbase/utils/Platform;

.field private static TAG:Ljava/lang/String;

.field public static final enum TEST_11:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum TUOTU_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum UNKNOW:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum YUANTE:Lcom/tencent/wecarbase/utils/Platform;

.field public static final enum ZXCL:Lcom/tencent/wecarbase/utils/Platform;


# instance fields
.field mChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "TEST_11"

    const-string v2, "test11"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->TEST_11:Lcom/tencent/wecarbase/utils/Platform;

    .line 19
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "FEIGE"

    const-string v2, "210202"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->FEIGE:Lcom/tencent/wecarbase/utils/Platform;

    .line 21
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "DFQC"

    const-string v2, "211609"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->DFQC:Lcom/tencent/wecarbase/utils/Platform;

    .line 23
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "ROADROVER_T8"

    const-string v2, "232001"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->ROADROVER_T8:Lcom/tencent/wecarbase/utils/Platform;

    .line 25
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "SL_NWD_T3"

    const-string v2, "230303"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->SL_NWD_T3:Lcom/tencent/wecarbase/utils/Platform;

    .line 27
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "RL_MTK3561"

    const-string v2, "232605"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->RL_MTK3561:Lcom/tencent/wecarbase/utils/Platform;

    .line 29
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "RL_TAS_V2"

    const-string v2, "240005"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->RL_TAS_V2:Lcom/tencent/wecarbase/utils/Platform;

    .line 31
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "RL_NAVI"

    const-string v2, "210005"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->RL_NAVI:Lcom/tencent/wecarbase/utils/Platform;

    .line 33
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "JLBT"

    const-string v2, "142507"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->JLBT:Lcom/tencent/wecarbase/utils/Platform;

    .line 35
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "ROADROVER_T3"

    const-string v2, "242008"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->ROADROVER_T3:Lcom/tencent/wecarbase/utils/Platform;

    .line 37
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "ZXCL"

    const-string v2, "240010"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->ZXCL:Lcom/tencent/wecarbase/utils/Platform;

    .line 39
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "BCLX"

    const-string v2, "240011"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->BCLX:Lcom/tencent/wecarbase/utils/Platform;

    .line 41
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A39"

    const-string v2, "142976"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A39:Lcom/tencent/wecarbase/utils/Platform;

    .line 43
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A35"

    const-string v2, "142955"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A35:Lcom/tencent/wecarbase/utils/Platform;

    .line 45
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A32"

    const-string v2, "142917"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A32:Lcom/tencent/wecarbase/utils/Platform;

    .line 47
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A26"

    const-string v2, "142956"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A26:Lcom/tencent/wecarbase/utils/Platform;

    .line 49
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A06"

    const-string v2, "142933"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A06:Lcom/tencent/wecarbase/utils/Platform;

    .line 51
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A75"

    const-string v2, "142935"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A75:Lcom/tencent/wecarbase/utils/Platform;

    .line 53
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "GUANGQI_A10"

    const-string v2, "142936"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A10:Lcom/tencent/wecarbase/utils/Platform;

    .line 55
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "YUANTE"

    const-string v2, "143016"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->YUANTE:Lcom/tencent/wecarbase/utils/Platform;

    .line 57
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "BYD_TANG"

    const-string v2, "142814"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->BYD_TANG:Lcom/tencent/wecarbase/utils/Platform;

    .line 59
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "PUFANGDA_MIRRO"

    const-string v2, "310013"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->PUFANGDA_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    .line 61
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "TUOTU_MIRRO"

    const-string v2, "310027"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->TUOTU_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    .line 63
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "LIUQI_HUAYANG"

    const-string v2, "143106"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->LIUQI_HUAYANG:Lcom/tencent/wecarbase/utils/Platform;

    .line 65
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "LIUQI_T5"

    const-string v2, "143168"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->LIUQI_T5:Lcom/tencent/wecarbase/utils/Platform;

    .line 67
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "CHANGAN_HAOBANGSHOU"

    const-string v2, "140000"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->CHANGAN_HAOBANGSHOU:Lcom/tencent/wecarbase/utils/Platform;

    .line 69
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "CHANGAN_S311"

    const-string v2, "143073"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->CHANGAN_S311:Lcom/tencent/wecarbase/utils/Platform;

    .line 71
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "CHJ_M01"

    const-string v2, "178177"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->CHJ_M01:Lcom/tencent/wecarbase/utils/Platform;

    .line 73
    new-instance v0, Lcom/tencent/wecarbase/utils/Platform;

    const-string v1, "UNKNOW"

    const-string v2, ""

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/tencent/wecarbase/utils/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->UNKNOW:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v0, 0x1d

    .line 10
    new-array v0, v0, [Lcom/tencent/wecarbase/utils/Platform;

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->TEST_11:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->FEIGE:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->DFQC:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->ROADROVER_T8:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->SL_NWD_T3:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->RL_MTK3561:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->RL_TAS_V2:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->RL_NAVI:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v10

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->JLBT:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v11

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->ROADROVER_T3:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v12

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->ZXCL:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v13

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->BCLX:Lcom/tencent/wecarbase/utils/Platform;

    aput-object v1, v0, v14

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A39:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A35:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A32:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A26:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A06:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A75:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A10:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->YUANTE:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->BYD_TANG:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->PUFANGDA_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->TUOTU_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->LIUQI_HUAYANG:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->LIUQI_T5:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->CHANGAN_HAOBANGSHOU:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->CHANGAN_S311:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->CHJ_M01:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->UNKNOW:Lcom/tencent/wecarbase/utils/Platform;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->$VALUES:[Lcom/tencent/wecarbase/utils/Platform;

    .line 75
    const-class v0, Lcom/tencent/wecarbase/utils/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/utils/Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/tencent/wecarbase/utils/Platform;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/wecarbase/utils/Platform;
    .locals 5

    .line 109
    invoke-static {}, Lcom/tencent/wecarbase/utils/Platform;->values()[Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    iget-object v4, v3, Lcom/tencent/wecarbase/utils/Platform;->mChannel:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    sget-object p0, Lcom/tencent/wecarbase/utils/Platform;->UNKNOW:Lcom/tencent/wecarbase/utils/Platform;

    return-object p0
.end method

.method public static getPlatform()Lcom/tencent/wecarbase/utils/Platform;
    .locals 4

    const-string v0, ""

    .line 123
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarbase/common/ConfigHolder;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getGlobalAPPChannel()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlatform, channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-static {v0}, Lcom/tencent/wecarbase/utils/Platform;->fromString(Ljava/lang/String;)Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :catch_0
    sget-object v0, Lcom/tencent/wecarbase/utils/Platform;->UNKNOW:Lcom/tencent/wecarbase/utils/Platform;

    return-object v0
.end method

.method public static isGuangQi()Z
    .locals 2

    .line 87
    invoke-static {}, Lcom/tencent/wecarbase/utils/Platform;->getPlatform()Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A26:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A35:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A32:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A06:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A75:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A10:Lcom/tencent/wecarbase/utils/Platform;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isGuangQiNew()Z
    .locals 2

    .line 101
    invoke-static {}, Lcom/tencent/wecarbase/utils/Platform;->getPlatform()Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->GUANGQI_A39:Lcom/tencent/wecarbase/utils/Platform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLiuQiT5()Z
    .locals 2

    .line 105
    invoke-static {}, Lcom/tencent/wecarbase/utils/Platform;->getPlatform()Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->LIUQI_T5:Lcom/tencent/wecarbase/utils/Platform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/utils/Platform;
    .locals 1

    .line 10
    const-class v0, Lcom/tencent/wecarbase/utils/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/utils/Platform;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/utils/Platform;
    .locals 1

    .line 10
    sget-object v0, Lcom/tencent/wecarbase/utils/Platform;->$VALUES:[Lcom/tencent/wecarbase/utils/Platform;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/utils/Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/utils/Platform;

    return-object v0
.end method
