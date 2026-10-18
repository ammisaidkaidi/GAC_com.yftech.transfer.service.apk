.class final Lcom/tencent/tai/pal/client/cs/a/d;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "ExtensibleManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALExtensibleManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/extensible/b;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/extensible/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.EXTENSIBLE"

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->b:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/d$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/d$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/d;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->d:Lcom/tencent/tai/pal/extensible/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->a:Lcom/tencent/tai/pal/extensible/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteListener extensibleApiAidl == null"

    .line 45
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->d:Lcom/tencent/tai/pal/extensible/c;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/extensible/b;->a(Lcom/tencent/tai/pal/extensible/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 51
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->a:Lcom/tencent/tai/pal/extensible/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteListener extensibleApiAidl == null"

    .line 59
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->d:Lcom/tencent/tai/pal/extensible/c;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/extensible/b;->b(Lcom/tencent/tai/pal/extensible/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 65
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/tencent/tai/pal/extensible/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/extensible/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->a:Lcom/tencent/tai/pal/extensible/b;

    .line 73
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->g()V

    :cond_0
    return-void
.end method

.method public callExtensibleApi(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->a:Lcom/tencent/tai/pal/extensible/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "callExtensibleApi extensibleApiAidl == null"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->e()V

    .line 93
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/extensible/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 95
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method protected f()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->h()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->a:Lcom/tencent/tai/pal/extensible/b;

    return-void
.end method

.method public registerExtensibleListener(Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "ExtensibleManagerImpl"

    const-string p1, "registerExtensibleListener listener is null"

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->g()V

    .line 115
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

.method public unregisterExtensibleListener(Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "ExtensibleManagerImpl"

    const-string p1, "unregisterExtensibleListener listener is null"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->h()V

    .line 130
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
