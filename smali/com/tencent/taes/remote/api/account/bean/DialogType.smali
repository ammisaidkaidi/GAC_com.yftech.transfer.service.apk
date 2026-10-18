.class public final enum Lcom/tencent/taes/remote/api/account/bean/DialogType;
.super Ljava/lang/Enum;
.source "DialogType.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/remote/api/account/bean/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/remote/api/account/bean/DialogType;

.field public static final enum login:Lcom/tencent/taes/remote/api/account/bean/DialogType;

.field public static final enum logout:Lcom/tencent/taes/remote/api/account/bean/DialogType;

.field public static final enum qrscan:Lcom/tencent/taes/remote/api/account/bean/DialogType;

.field public static final enum relogin:Lcom/tencent/taes/remote/api/account/bean/DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    const-string v1, "login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/taes/remote/api/account/bean/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->login:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    .line 11
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    const-string v1, "qrscan"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/taes/remote/api/account/bean/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->qrscan:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    .line 12
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    const-string v1, "relogin"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/taes/remote/api/account/bean/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->relogin:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    .line 13
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    const-string v1, "logout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/taes/remote/api/account/bean/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->logout:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/tencent/taes/remote/api/account/bean/DialogType;

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/DialogType;->login:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/DialogType;->qrscan:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/DialogType;->relogin:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/DialogType;->logout:Lcom/tencent/taes/remote/api/account/bean/DialogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/DialogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/DialogType;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/remote/api/account/bean/DialogType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/remote/api/account/bean/DialogType;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/taes/remote/api/account/bean/DialogType;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/DialogType;

    invoke-virtual {v0}, [Lcom/tencent/taes/remote/api/account/bean/DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/remote/api/account/bean/DialogType;

    return-object v0
.end method
