.class Lcom/tencent/tai/pal/client/cs/a/a$a$1;
.super Landroid/os/Handler;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/a/a$a;-><init>(Lcom/tencent/tai/pal/client/cs/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/a;

.field final synthetic b:Lcom/tencent/tai/pal/client/cs/a/a$a;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/a$a;Landroid/os/Looper;Lcom/tencent/tai/pal/client/cs/a/a;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a$a$1;->b:Lcom/tencent/tai/pal/client/cs/a/a$a;

    iput-object p3, p0, Lcom/tencent/tai/pal/client/cs/a/a$a$1;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a$a$1;->b:Lcom/tencent/tai/pal/client/cs/a/a$a;

    iget-object v0, v0, Lcom/tencent/tai/pal/client/cs/a/a$a;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/a;->b(Lcom/tencent/tai/pal/client/cs/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$a$1;->b:Lcom/tencent/tai/pal/client/cs/a/a$a;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$a;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Lcom/tencent/tai/pal/client/cs/a/a;Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p0

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 515
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 513
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
