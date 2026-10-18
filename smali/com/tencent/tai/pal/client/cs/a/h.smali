.class final Lcom/tencent/tai/pal/client/cs/a/h;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "PowerManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALPowerManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/power/a;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/power/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.POWER"

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->b:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/h$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/h$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/h;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->d:Lcom/tencent/tai/pal/power/b$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteListener powerAidl == null"

    .line 79
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->d:Lcom/tencent/tai/pal/power/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/power/a;->a(Lcom/tencent/tai/pal/power/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 85
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteListener powerAidl == null"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->d:Lcom/tencent/tai/pal/power/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/power/a;->b(Lcom/tencent/tai/pal/power/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 99
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/tencent/tai/pal/power/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/power/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    .line 107
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->g()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->h()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    return-void
.end method

.method public getPowerInfo()Lcom/tencent/tai/pal/power/PowerInfo;
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getPowerInfo powerAidl == null"

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->e()V

    .line 145
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/power/a;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 147
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p0, v1

    .line 150
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/tencent/tai/pal/power/PowerInfo;->fromJson(Ljava/lang/String;)Lcom/tencent/tai/pal/power/PowerInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPowerLevelAfterDriving(I)I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getPowerLevelAfterDriving powerAidl == null"

    .line 160
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->e()V

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/power/a;->a(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 167
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getPowerType()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->a:Lcom/tencent/tai/pal/power/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getPowerType powerAidl == null"

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->e()V

    .line 127
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/power/a;->a()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 129
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public registerPowerLevelLowListener(Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "PowerManagerImpl"

    const-string p1, "registerPowerLevelLowListener is null"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->g()V

    .line 45
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

.method public unregisterPowerLevelLowListener(Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "PowerManagerImpl"

    const-string p1, "unregisterPowerLevelLowListener is null"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->h()V

    .line 61
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
