.class public final enum Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;
.super Ljava/lang/Enum;
.source "DomainType.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

.field public static final enum navigation:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

.field public static final enum smart_car_control:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

.field public static final enum traffic:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    const-string v1, "navigation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->navigation:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    .line 8
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    const-string v1, "traffic"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->traffic:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    .line 9
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    const-string v1, "smart_car_control"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->smart_car_control:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->navigation:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->traffic:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->smart_car_control:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;
    .locals 1

    .line 5
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;
    .locals 1

    .line 5
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    return-object v0
.end method
