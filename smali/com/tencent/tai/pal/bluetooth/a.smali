.class public Lcom/tencent/tai/pal/bluetooth/a;
.super Lcom/tencent/tai/pal/bluetooth/b$a;
.source "BluetoothService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Z

.field private b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

.field private final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/bluetooth/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/tencent/tai/pal/bluetooth/b$a;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    .line 26
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    .line 28
    new-instance v0, Lcom/tencent/tai/pal/bluetooth/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/bluetooth/a$1;-><init>(Lcom/tencent/tai/pal/bluetooth/a;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->d:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "PAL_BluetoothService"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothService:notifyDeviceConnectionStateChange connectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deviceMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 67
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/bluetooth/c;

    .line 68
    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/tai/pal/bluetooth/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_BluetoothService"

    const-string v5, "notify client failed"

    .line 70
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/bluetooth/a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tai/pal/bluetooth/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result p0

    const-string v0, "PAL_BluetoothService"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothService:getConnectionState adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public a(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->enableBluetooth(Z)I

    move-result p0

    const-string p1, "PAL_BluetoothService"

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothService:enableBluetooth adapter result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/bluetooth/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 40
    iget-boolean p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/bluetooth/a;->d:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->registerOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    .line 44
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

    .line 80
    instance-of v0, p1, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    .line 82
    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    .line 86
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->d:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->registerOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    .line 90
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

.method public b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_BluetoothService"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothService:getDeviceName adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public b(Lcom/tencent/tai/pal/bluetooth/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 51
    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 52
    iget-boolean p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/bluetooth/a;->d:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->unregisterOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/tencent/tai/pal/bluetooth/a;->a:Z

    .line 56
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

.method public d()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a;->b:Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;->getDeviceMac()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_BluetoothService"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothService:getDeviceMac adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
