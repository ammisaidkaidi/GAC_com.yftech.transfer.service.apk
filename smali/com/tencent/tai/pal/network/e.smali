.class public Lcom/tencent/tai/pal/network/e;
.super Lcom/tencent/tai/pal/network/a$a;
.source "NetworkService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Lcom/tencent/tai/pal/network/NetworkAdapter;

.field private final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/network/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/network/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/network/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;

.field private h:Z

.field private i:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;

.field private j:Z

.field private k:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/tencent/tai/pal/network/a$a;-><init>()V

    .line 20
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    .line 21
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    .line 22
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/tencent/tai/pal/network/e;->f:Z

    .line 25
    new-instance v1, Lcom/tencent/tai/pal/network/e$1;

    invoke-direct {v1, p0}, Lcom/tencent/tai/pal/network/e$1;-><init>(Lcom/tencent/tai/pal/network/e;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/network/e;->g:Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;

    .line 32
    iput-boolean v0, p0, Lcom/tencent/tai/pal/network/e;->h:Z

    .line 33
    new-instance v1, Lcom/tencent/tai/pal/network/e$2;

    invoke-direct {v1, p0}, Lcom/tencent/tai/pal/network/e$2;-><init>(Lcom/tencent/tai/pal/network/e;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/network/e;->i:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;

    .line 40
    iput-boolean v0, p0, Lcom/tencent/tai/pal/network/e;->j:Z

    .line 41
    new-instance v0, Lcom/tencent/tai/pal/network/e$3;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/network/e$3;-><init>(Lcom/tencent/tai/pal/network/e;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/network/e;->k:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;

    return-void
.end method

.method private a(IF)V
    .locals 6

    .line 84
    sget-object v0, Lcom/tencent/tai/pal/network/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkService:notifyNetworkSignalStrengthChange networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " signalStrength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/network/d;

    invoke-interface {v3, p1, p2}, Lcom/tencent/tai/pal/network/d;->a(IF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 91
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/network/e;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/network/e;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/network/e;IF)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/network/e;->a(IF)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/network/e;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/network/e;->c(Z)V

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 50
    sget-object v0, Lcom/tencent/tai/pal/network/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkService:notifyActiveNetworkTypeChange activeNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 55
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/network/b;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/network/b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 57
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private c(Z)V
    .locals 6

    .line 67
    sget-object v0, Lcom/tencent/tai/pal/network/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkService:notifyNetworkAvailabilityChange available:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 72
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/network/c;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/network/c;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 74
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 79
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
.method public a(I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->getNetworkSignalStrength(I)F

    move-result p0

    return p0
.end method

.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;->getMobileConnectionState()I

    move-result p0

    return p0
.end method

.method public a(Z)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->enableWifi(Z)I

    move-result p0

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/network/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 148
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 149
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->g:Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->registerOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->f:Z

    .line 153
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

.method public a(Lcom/tencent/tai/pal/network/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 177
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 178
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->i:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->registerOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->h:Z

    .line 182
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

.method public a(Lcom/tencent/tai/pal/network/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 206
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 207
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->k:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->registerOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->j:Z

    .line 211
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

    if-eqz p1, :cond_1

    .line 231
    instance-of v0, p1, Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Lcom/tencent/tai/pal/network/NetworkAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    return-void

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param not NetworkAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter should not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;->getWifiConnectionState()I

    move-result p0

    return p0
.end method

.method public b(Z)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->enableMobileNetwork(Z)I

    move-result p0

    return p0
.end method

.method public b(Lcom/tencent/tai/pal/network/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 160
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->g:Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->unregisterOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->f:Z

    .line 165
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

.method public b(Lcom/tencent/tai/pal/network/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 189
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 190
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->i:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->unregisterOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->h:Z

    .line 194
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

.method public b(Lcom/tencent/tai/pal/network/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 218
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/network/e;->k:Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/network/NetworkAdapter;->unregisterOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/tencent/tai/pal/network/e;->j:Z

    .line 223
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

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;->jumpToNetworkSettingPage()Z

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;->getActiveNetworkType()I

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e;->b:Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method
