.class final Lcom/tencent/tai/pal/client/cs/a/g;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "NetworkManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALNetworkManager;


# static fields
.field private static final a:Ljava/lang/String; = "g"


# instance fields
.field private b:Lcom/tencent/tai/pal/network/a;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tai/pal/network/b;

.field private g:Lcom/tencent/tai/pal/network/c;

.field private h:Lcom/tencent/tai/pal/network/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.NETWORK"

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    .line 28
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/g$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/g$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/g;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->f:Lcom/tencent/tai/pal/network/b;

    .line 42
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/g$2;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/g$2;-><init>(Lcom/tencent/tai/pal/client/cs/a/g;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->g:Lcom/tencent/tai/pal/network/c;

    .line 52
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/g$3;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/g$3;-><init>(Lcom/tencent/tai/pal/client/cs/a/g;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->h:Lcom/tencent/tai/pal/network/d;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/tai/pal/client/cs/a/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteANTCListener networkApiAidl == null"

    .line 429
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 433
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->f:Lcom/tencent/tai/pal/network/b;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->a(Lcom/tencent/tai/pal/network/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 435
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteANTCListener networkApiAidl == null"

    .line 443
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->f:Lcom/tencent/tai/pal/network/b;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->b(Lcom/tencent/tai/pal/network/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 449
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteNACListener networkApiAidl == null"

    .line 457
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->g:Lcom/tencent/tai/pal/network/c;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->a(Lcom/tencent/tai/pal/network/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 464
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteNACListener networkApiAidl == null"

    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->g:Lcom/tencent/tai/pal/network/c;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->b(Lcom/tencent/tai/pal/network/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 479
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteNSSCListener networkApiAidl == null"

    .line 487
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 491
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->h:Lcom/tencent/tai/pal/network/d;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->a(Lcom/tencent/tai/pal/network/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 494
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteNSSCListener networkApiAidl == null"

    .line 502
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->h:Lcom/tencent/tai/pal/network/d;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/network/a;->b(Lcom/tencent/tai/pal/network/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 508
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 3

    .line 69
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Lcom/tencent/tai/pal/network/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/network/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    .line 71
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->g()V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->i()V

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->k()V

    :cond_2
    return-void
.end method

.method public enableMobileNetwork(Z)I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "enableMobileNetwork networkApiAidl == null"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 116
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/network/a;->b(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public enableWifi(Z)I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "enableWifi networkApiAidl == null"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 100
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/network/a;->a(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method protected f()V
    .locals 2

    .line 84
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->h()V

    .line 86
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->j()V

    .line 87
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->l()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    return-void
.end method

.method public getActiveNetworkType()I
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_getActiveNetworkType_supported:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getActiveNetworkType networkApiAidl == null"

    .line 192
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 197
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/network/a;->e()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 188
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "getActiveNetworkType"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMobileConnectionState()I
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getMobileConnectionState networkApiAidl == null"

    .line 127
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 132
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/network/a;->a()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getNetworkSignalStrength(I)F
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_getNetworkSignalStrength_supported:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getNetworkSignalStrength networkApiAidl == null"

    .line 360
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 365
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/network/a;->a(I)F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 367
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 356
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "getNetworkSignalStrength"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWifiConnectionState()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getWifiConnectionState networkApiAidl == null"

    .line 143
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 148
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/network/a;->b()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_isNetworkAvailable_supported:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "isNetworkAvailable networkApiAidl == null"

    .line 274
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 279
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/network/a;->f()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 270
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "isNetworkAvailable"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public jumpToNetworkSettingPage()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->b:Lcom/tencent/tai/pal/network/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "jumpToNetworkSettingPage networkApiAidl == null"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->e()V

    .line 164
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/network/a;->d()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public registerOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 218
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "registerOnActiveNetworkTypeChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->g()V

    .line 229
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

    .line 215
    :cond_3
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "registerOnActiveNetworkTypeChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 300
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "registerOnNetworkAvailabilityChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->i()V

    .line 311
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

    .line 297
    :cond_3
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "registerOnNetworkAvailabilityChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 382
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 386
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "registerOnNetworkSignalStrengthChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->k()V

    .line 397
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

    .line 383
    :cond_3
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "registerOnNetworkSignalStrengthChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;)V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 247
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "unregisterOnActiveNetworkTypeChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->h()V

    .line 255
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 244
    :cond_2
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "unregisterOnActiveNetworkTypeChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;)V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 329
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "unregisterOnNetworkAvailabilityChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->j()V

    .line 337
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 326
    :cond_2
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "unregisterOnNetworkAvailabilityChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 415
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/g;->a:Ljava/lang/String;

    const-string p1, "unregisterOnNetworkSignalStrengthChangeListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->l()V

    .line 423
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 412
    :cond_2
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "unregisterOnNetworkSignalStrengthChangeListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
