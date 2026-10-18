.class Lcom/tencent/tai/pal/client/cs/a/a$a;
.super Ljava/lang/Object;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/a;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/a;)V
    .locals 2

    .line 505
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a$a;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Lcom/tencent/tai/pal/client/cs/a/a$a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/tai/pal/client/cs/a/a$a$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/a$a;Landroid/os/Looper;Lcom/tencent/tai/pal/client/cs/a/a;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$a;->b:Landroid/os/Handler;

    return-object p0
.end method
