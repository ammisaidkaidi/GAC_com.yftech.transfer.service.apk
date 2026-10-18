.class Lcom/tencent/wecarbase/client/TAIConfigManager$SingletonHolder;
.super Ljava/lang/Object;
.source "TAIConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/TAIConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/wecarbase/client/TAIConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/tencent/wecarbase/client/TAIConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/client/TAIConfigManager;-><init>(Lcom/tencent/wecarbase/client/TAIConfigManager$1;)V

    sput-object v0, Lcom/tencent/wecarbase/client/TAIConfigManager$SingletonHolder;->INSTANCE:Lcom/tencent/wecarbase/client/TAIConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarbase/client/TAIConfigManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/tencent/wecarbase/client/TAIConfigManager$SingletonHolder;->INSTANCE:Lcom/tencent/wecarbase/client/TAIConfigManager;

    return-object v0
.end method
