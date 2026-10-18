.class public final enum Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;
.super Ljava/lang/Enum;
.source "NaviIntents.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

.field public static final enum NaviTo:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

.field public static final enum SearchPoi:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

.field public static final enum StartFleet:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    const-string v1, "NaviTo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->NaviTo:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    .line 8
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    const-string v1, "SearchPoi"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->SearchPoi:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    .line 9
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    const-string v1, "StartFleet"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->StartFleet:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->NaviTo:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->SearchPoi:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->StartFleet:Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;
    .locals 1

    .line 5
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;
    .locals 1

    .line 5
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->$VALUES:[Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    invoke-virtual {v0}, [Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarspeech/clientsdk/model/NaviIntents;

    return-object v0
.end method
