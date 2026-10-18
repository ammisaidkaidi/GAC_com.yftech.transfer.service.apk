.class Lcom/tencent/taes/framework/TAESFrameworkManager$CoreFrameworkManagerHolder;
.super Ljava/lang/Object;
.source "TAESFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/TAESFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoreFrameworkManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/taes/framework/TAESFrameworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/tencent/taes/framework/TAESFrameworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/taes/framework/TAESFrameworkManager;-><init>(Lcom/tencent/taes/framework/TAESFrameworkManager$1;)V

    sput-object v0, Lcom/tencent/taes/framework/TAESFrameworkManager$CoreFrameworkManagerHolder;->INSTANCE:Lcom/tencent/taes/framework/TAESFrameworkManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/taes/framework/TAESFrameworkManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/tencent/taes/framework/TAESFrameworkManager$CoreFrameworkManagerHolder;->INSTANCE:Lcom/tencent/taes/framework/TAESFrameworkManager;

    return-object v0
.end method
