.class public final enum Lcom/tencent/taes/util/StringUtils$UnitLangEnum;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitLangEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/util/StringUtils$UnitLangEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

.field public static final enum EN:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

.field public static final enum ZH:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;


# instance fields
.field private nUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 376
    new-instance v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    const-string v1, "EN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->EN:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    new-instance v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    const-string v1, "ZH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->ZH:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    const/4 v0, 0x2

    .line 374
    new-array v0, v0, [Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    sget-object v1, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->EN:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->ZH:Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->$VALUES:[Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 381
    iput p3, p0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->nUnit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/util/StringUtils$UnitLangEnum;
    .locals 1

    .line 374
    const-class v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/util/StringUtils$UnitLangEnum;
    .locals 1

    .line 374
    sget-object v0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->$VALUES:[Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    invoke-virtual {v0}, [Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/util/StringUtils$UnitLangEnum;

    return-object v0
.end method


# virtual methods
.method public getUnit()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/tencent/taes/util/StringUtils$UnitLangEnum;->nUnit:I

    return p0
.end method
