.class public final enum Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;
.super Ljava/lang/Enum;
.source "HotWordResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

.field public static final enum CLEAN_UP_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

.field public static final enum CLEAN_UP_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

.field public static final enum UPLOAD_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

.field public static final enum UPLOAD_ING:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

.field public static final enum UPLOAD_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const-string v1, "UPLOAD_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    .line 8
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const-string v1, "UPLOAD_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    .line 9
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const-string v1, "CLEAN_UP_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    .line 10
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const-string v1, "CLEAN_UP_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    .line 11
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const-string v1, "UPLOAD_ING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_ING:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_ING:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;
    .locals 1

    .line 5
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;
    .locals 1

    .line 5
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    return-object v0
.end method
