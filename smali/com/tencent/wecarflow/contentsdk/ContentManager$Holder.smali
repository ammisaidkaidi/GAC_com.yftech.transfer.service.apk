.class Lcom/tencent/wecarflow/contentsdk/ContentManager$Holder;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/wecarflow/contentsdk/ContentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/ContentManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarflow/contentsdk/ContentManager;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentManager$1;)V

    sput-object v0, Lcom/tencent/wecarflow/contentsdk/ContentManager$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/ContentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarflow/contentsdk/ContentManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/tencent/wecarflow/contentsdk/ContentManager$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/ContentManager;

    return-object v0
.end method
