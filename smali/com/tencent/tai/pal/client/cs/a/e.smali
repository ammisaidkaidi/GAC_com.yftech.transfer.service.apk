.class final Lcom/tencent/tai/pal/client/cs/a/e;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "InsManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALInsManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/ins/a;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/ins/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.INS"

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->b:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    .line 26
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/e$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/e$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/e;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->d:Lcom/tencent/tai/pal/ins/b$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/e;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->a:Lcom/tencent/tai/pal/ins/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteListener insApiAidl==null"

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->d:Lcom/tencent/tai/pal/ins/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/ins/a;->a(Lcom/tencent/tai/pal/ins/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 97
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->a:Lcom/tencent/tai/pal/ins/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteListener insApiAidl==null"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->d:Lcom/tencent/tai/pal/ins/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/ins/a;->b(Lcom/tencent/tai/pal/ins/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 111
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/tencent/tai/pal/ins/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/ins/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->a:Lcom/tencent/tai/pal/ins/a;

    .line 119
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->g()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->h()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->a:Lcom/tencent/tai/pal/ins/a;

    return-void
.end method

.method public registerInsInfoListener(Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "InsManagerImpl"

    const-string p1, "registerInsInfoListener listener is null "

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->g()V

    .line 70
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterInsInfoListener(Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "InsManagerImpl"

    const-string p1, "unregisterInsInfoListener listener is null "

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->h()V

    .line 85
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
