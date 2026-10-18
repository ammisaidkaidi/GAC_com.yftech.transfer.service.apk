.class public Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;
.super Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;
.source "BluetoothAdapterImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockObj:Ljava/lang/Object;

.field private mOnDeviceConnectionStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mOnDeviceConnectionStateChangeListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mLockObj:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public enableBluetooth(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mOnDeviceConnectionStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mOnDeviceConnectionStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterOnDeviceConnectionStateChange(Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mOnDeviceConnectionStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/BluetoothAdapterImpl;->mOnDeviceConnectionStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
