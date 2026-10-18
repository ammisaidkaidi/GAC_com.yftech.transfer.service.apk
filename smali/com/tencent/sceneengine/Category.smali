.class public final enum Lcom/tencent/sceneengine/Category;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/sceneengine/Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tencent/sceneengine/Category;

.field public static final enum CHARGING:Lcom/tencent/sceneengine/Category;

.field public static final enum FOOD:Lcom/tencent/sceneengine/Category;

.field public static final enum FUEL:Lcom/tencent/sceneengine/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/sceneengine/Category;

    const-string v1, "CHARGING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/sceneengine/Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/sceneengine/Category;->CHARGING:Lcom/tencent/sceneengine/Category;

    new-instance v0, Lcom/tencent/sceneengine/Category;

    const-string v1, "FOOD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/sceneengine/Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/sceneengine/Category;->FOOD:Lcom/tencent/sceneengine/Category;

    new-instance v0, Lcom/tencent/sceneengine/Category;

    const-string v1, "FUEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/sceneengine/Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/sceneengine/Category;->FUEL:Lcom/tencent/sceneengine/Category;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/sceneengine/Category;

    sget-object v1, Lcom/tencent/sceneengine/Category;->CHARGING:Lcom/tencent/sceneengine/Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/sceneengine/Category;->FOOD:Lcom/tencent/sceneengine/Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/sceneengine/Category;->FUEL:Lcom/tencent/sceneengine/Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/sceneengine/Category;->$VALUES:[Lcom/tencent/sceneengine/Category;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/sceneengine/Category;
    .locals 1

    const-class v0, Lcom/tencent/sceneengine/Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/sceneengine/Category;

    return-object p0
.end method

.method public static values()[Lcom/tencent/sceneengine/Category;
    .locals 1

    sget-object v0, Lcom/tencent/sceneengine/Category;->$VALUES:[Lcom/tencent/sceneengine/Category;

    invoke-virtual {v0}, [Lcom/tencent/sceneengine/Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/sceneengine/Category;

    return-object v0
.end method
