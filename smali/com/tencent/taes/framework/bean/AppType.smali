.class public final enum Lcom/tencent/taes/framework/bean/AppType;
.super Ljava/lang/Enum;
.source "AppType.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/taes/framework/bean/AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/taes/framework/bean/AppType;

.field public static final enum MoreApp:Lcom/tencent/taes/framework/bean/AppType;

.field public static final enum Moss:Lcom/tencent/taes/framework/bean/AppType;

.field public static final enum TeamTrip:Lcom/tencent/taes/framework/bean/AppType;

.field public static final enum UnUsed:Lcom/tencent/taes/framework/bean/AppType;

.field public static final enum WeChat:Lcom/tencent/taes/framework/bean/AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/tencent/taes/framework/bean/AppType;

    const-string v1, "UnUsed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/taes/framework/bean/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->UnUsed:Lcom/tencent/taes/framework/bean/AppType;

    .line 11
    new-instance v0, Lcom/tencent/taes/framework/bean/AppType;

    const-string v1, "Moss"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/taes/framework/bean/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->Moss:Lcom/tencent/taes/framework/bean/AppType;

    .line 12
    new-instance v0, Lcom/tencent/taes/framework/bean/AppType;

    const-string v1, "WeChat"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/taes/framework/bean/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->WeChat:Lcom/tencent/taes/framework/bean/AppType;

    .line 13
    new-instance v0, Lcom/tencent/taes/framework/bean/AppType;

    const-string v1, "TeamTrip"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/taes/framework/bean/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->TeamTrip:Lcom/tencent/taes/framework/bean/AppType;

    .line 14
    new-instance v0, Lcom/tencent/taes/framework/bean/AppType;

    const-string v1, "MoreApp"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/taes/framework/bean/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->MoreApp:Lcom/tencent/taes/framework/bean/AppType;

    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lcom/tencent/taes/framework/bean/AppType;

    sget-object v1, Lcom/tencent/taes/framework/bean/AppType;->UnUsed:Lcom/tencent/taes/framework/bean/AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/taes/framework/bean/AppType;->Moss:Lcom/tencent/taes/framework/bean/AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/taes/framework/bean/AppType;->WeChat:Lcom/tencent/taes/framework/bean/AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/taes/framework/bean/AppType;->TeamTrip:Lcom/tencent/taes/framework/bean/AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/taes/framework/bean/AppType;->MoreApp:Lcom/tencent/taes/framework/bean/AppType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/taes/framework/bean/AppType;->$VALUES:[Lcom/tencent/taes/framework/bean/AppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/taes/framework/bean/AppType;
    .locals 1

    .line 8
    const-class v0, Lcom/tencent/taes/framework/bean/AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/framework/bean/AppType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/taes/framework/bean/AppType;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/taes/framework/bean/AppType;->$VALUES:[Lcom/tencent/taes/framework/bean/AppType;

    invoke-virtual {v0}, [Lcom/tencent/taes/framework/bean/AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/taes/framework/bean/AppType;

    return-object v0
.end method
