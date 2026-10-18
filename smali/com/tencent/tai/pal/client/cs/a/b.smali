.class final Lcom/tencent/tai/pal/client/cs/a/b;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "BluetoothManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALBluetoothManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/bluetooth/b;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/bluetooth/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.BLUETOOTH"

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->b:Ljava/lang/Object;

    .line 29
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    .line 97
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/b$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/b$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/b;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->d:Lcom/tencent/tai/pal/bluetooth/c$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/b;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteListener bluetoothApiAidl == null"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->d:Lcom/tencent/tai/pal/bluetooth/c$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/bluetooth/b;->a(Lcom/tencent/tai/pal/bluetooth/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 78
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteListener bluetoothApiAidl == null"

    .line 86
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->d:Lcom/tencent/tai/pal/bluetooth/c$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/bluetooth/b;->b(Lcom/tencent/tai/pal/bluetooth/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 92
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 182
    invoke-static {p1}, Lcom/tencent/tai/pal/bluetooth/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/bluetooth/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    .line 183
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->g()V

    :cond_0
    return-void
.end method

.method public enableBluetooth(Z)I
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "enableBluetooth bluetoothApiAidl == null"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->e()V

    .line 117
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 118
    iget-boolean p0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_enableBluetooth_supported:Z

    if-eqz p0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "PALBluetoothManager.enableBluetooth"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/bluetooth/b;->a(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method protected f()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->h()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    return-void
.end method

.method public getConnectionState()I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getConnectionState bluetoothApiAidl == null"

    .line 133
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->e()V

    .line 138
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/bluetooth/b;->a()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 140
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDeviceMac bluetoothApiAidl == null"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->e()V

    .line 172
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/bluetooth/b;->d()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 174
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->a:Lcom/tencent/tai/pal/bluetooth/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDeviceName bluetoothApiAidl == null"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->e()V

    .line 155
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/bluetooth/b;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 157
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public registerBluetoothDeviceConnectionStateListener(Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "BluetoothManagerImpl"

    const-string p1, "registerBluetoothDeviceConnectionStateListener listener is null"

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->g()V

    .line 49
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

.method public unregisterBluetoothDeviceConnectionStateListener(Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "BluetoothManagerImpl"

    const-string p1, "unregisterBluetoothDeviceConnectionStateListener listener is null"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->h()V

    .line 65
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
