.class public Lcom/tencent/tai/pal/extensible/a;
.super Lcom/tencent/tai/pal/extensible/b$a;
.source "ExtensibleService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/extensible/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/tencent/tai/pal/extensible/b$a;-><init>()V

    .line 16
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    .line 19
    new-instance v0, Lcom/tencent/tai/pal/extensible/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/extensible/a$1;-><init>(Lcom/tencent/tai/pal/extensible/a;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->d:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/extensible/a;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/extensible/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtensibleService:notifyExtensibleMsg bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/extensible/c;

    .line 84
    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/extensible/c;->a(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "notify client failed"

    .line 86
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;->callExtensibleApi(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtensibleService.callExtensibleApi bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " resultBundle:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public a(Lcom/tencent/tai/pal/extensible/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 41
    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 42
    iget-boolean p1, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/extensible/a;->d:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;->registerExtensibleListener(Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    if-eqz v0, :cond_1

    .line 64
    check-cast p1, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    .line 65
    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    .line 69
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/extensible/a;->d:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;->registerExtensibleListener(Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    .line 73
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lcom/tencent/tai/pal/extensible/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 53
    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-boolean p1, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/tencent/tai/pal/extensible/a;->a:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/extensible/a;->d:Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;->unregisterExtensibleListener(Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/tencent/tai/pal/extensible/a;->c:Z

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
