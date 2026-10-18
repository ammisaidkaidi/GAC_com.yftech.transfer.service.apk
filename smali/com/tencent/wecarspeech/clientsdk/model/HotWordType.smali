.class public final enum Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;
.super Ljava/lang/Enum;
.source "HotWordType.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

.field public static final enum BOTH:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

.field public static final enum OFFLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

.field public static final enum ONLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->ONLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    .line 11
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    const-string v1, "OFFLINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->OFFLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    .line 12
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    const-string v1, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->BOTH:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->ONLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->OFFLINE:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->BOTH:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    return-object v0
.end method
