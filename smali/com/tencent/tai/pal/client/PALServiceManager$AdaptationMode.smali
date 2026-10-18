.class public final enum Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;
.super Ljava/lang/Enum;
.source "PALServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdaptationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;",
        ">;",
        "Lcom/tencent/tai/pal/INoProguardClass;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

.field public static final enum LOCAL_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

.field public static final enum LOCAL_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

.field public static final enum REMOTE_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

.field public static final enum REMOTE_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

.field private static final synthetic a:[Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 316
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const-string v1, "REMOTE_ADAPTATION_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->REMOTE_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    .line 323
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const-string v1, "REMOTE_ADAPTATION_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->REMOTE_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    .line 331
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const-string v1, "LOCAL_ADAPTATION_FIRST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->LOCAL_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    .line 338
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const-string v1, "LOCAL_ADAPTATION_ONLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->LOCAL_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    .line 344
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const-string v1, "DEFAULT_ADAPTATION_ONLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->DEFAULT_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    const/4 v0, 0x5

    .line 308
    new-array v0, v0, [Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    sget-object v1, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->REMOTE_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->REMOTE_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->LOCAL_ADAPTATION_FIRST:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->LOCAL_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->DEFAULT_ADAPTATION_ONLY:Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->a:[Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;
    .locals 1

    .line 308
    const-class v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;
    .locals 1

    .line 308
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->a:[Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    invoke-virtual {v0}, [Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;

    return-object v0
.end method
