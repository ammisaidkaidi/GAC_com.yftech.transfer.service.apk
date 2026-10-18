.class Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$Holder;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;-><init>(Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$1;)V

    sput-object v0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;

    return-object v0
.end method
