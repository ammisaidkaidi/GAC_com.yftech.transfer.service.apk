.class public final enum Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;
.super Ljava/lang/Enum;
.source "SSRResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

.field public static final enum INTERRUPT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

.field public static final enum REJECT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

.field public static final enum SR:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

.field public static final enum TIMEOUT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    const-string v1, "SR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->SR:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    .line 57
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    const-string v1, "TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->TIMEOUT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    .line 58
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    const-string v1, "INTERRUPT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->INTERRUPT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    .line 59
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    const-string v1, "REJECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->REJECT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->SR:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->TIMEOUT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->INTERRUPT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->REJECT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;
    .locals 1

    .line 54
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;
    .locals 1

    .line 54
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    return-object v0
.end method
