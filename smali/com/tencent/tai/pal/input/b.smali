.class public Lcom/tencent/tai/pal/input/b;
.super Lcom/tencent/tai/pal/input/d$a;
.source "CabinKeyEventService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/input/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/tencent/tai/pal/input/d$a;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    .line 33
    new-instance v0, Lcom/tencent/tai/pal/input/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/input/b$1;-><init>(Lcom/tencent/tai/pal/input/b;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/input/b;->d:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;

    .line 123
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tencent/tai/pal/input/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 152
    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    .line 153
    iget-boolean v1, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/input/b;->d:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;->registerCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    .line 162
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

    .line 129
    instance-of v0, p1, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    if-eqz v0, :cond_1

    .line 130
    check-cast p1, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    .line 131
    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    .line 135
    iget-object v0, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/input/b;->d:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;->registerCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    .line 139
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

.method public b(Lcom/tencent/tai/pal/input/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 170
    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-boolean p1, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/tencent/tai/pal/input/b;->a:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/input/b;->d:Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;->unregisterCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/tencent/tai/pal/input/b;->c:Z

    .line 180
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
