.class public final enum Lcom/tencent/taes/remote/api/account/bean/UIMode;
.super Ljava/lang/Enum;
.source "UIMode.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/remote/api/account/bean/UIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/remote/api/account/bean/UIMode;

.field public static final enum day:Lcom/tencent/taes/remote/api/account/bean/UIMode;

.field public static final enum night:Lcom/tencent/taes/remote/api/account/bean/UIMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;

    const-string v1, "day"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/taes/remote/api/account/bean/UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;->day:Lcom/tencent/taes/remote/api/account/bean/UIMode;

    .line 11
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;

    const-string v1, "night"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/taes/remote/api/account/bean/UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;->night:Lcom/tencent/taes/remote/api/account/bean/UIMode;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/tencent/taes/remote/api/account/bean/UIMode;

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/UIMode;->day:Lcom/tencent/taes/remote/api/account/bean/UIMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/taes/remote/api/account/bean/UIMode;->night:Lcom/tencent/taes/remote/api/account/bean/UIMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/UIMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/UIMode;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/remote/api/account/bean/UIMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/remote/api/account/bean/UIMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/taes/remote/api/account/bean/UIMode;->$VALUES:[Lcom/tencent/taes/remote/api/account/bean/UIMode;

    invoke-virtual {v0}, [Lcom/tencent/taes/remote/api/account/bean/UIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/remote/api/account/bean/UIMode;

    return-object v0
.end method
