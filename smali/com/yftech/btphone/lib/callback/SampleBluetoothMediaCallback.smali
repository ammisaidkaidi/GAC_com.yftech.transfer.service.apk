.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
.source "SampleBluetoothMediaCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    const-string v0, "SampleBluetoothMediaCallback"

    .line 23
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    const/16 v0, 0xc

    invoke-interface {p0, p1, v0, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 63
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    const/4 v1, -0x1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 45
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAvrcpConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->log(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->onAvrcpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 50
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;

    .line 52
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 54
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

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothMediaListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothMediaCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
