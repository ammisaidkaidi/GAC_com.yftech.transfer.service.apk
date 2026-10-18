.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;
.source "SampleBluetoothContactsCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;-><init>()V

    const-string v0, "SampleBluetoothContactsCallback"

    .line 26
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 2

    .line 109
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadPositionChanged(II)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadPositionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 114
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogDownloadPositionChanged(II)V

    goto :goto_0

    .line 116
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

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadStateChanged(I)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 90
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogDownloadStateChanged(I)V

    goto :goto_0

    .line 92
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

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothCallLogListChanged"

    .line 68
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onCallLogListChanged(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 74
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 76
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

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsDownloadPositionChanged(II)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothCallLogDownloadPositionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 126
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsDownloadPositionChanged(II)V

    goto :goto_0

    .line 128
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

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsDownloadStateChanged(I)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothContactsDownloadStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 102
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsDownloadStateChanged(I)V

    goto :goto_0

    .line 104
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

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothContactsListChanged"

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onContactsListChanged(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 55
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothContactsListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 57
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

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 133
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPbapConnectStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bluetoothDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->log(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 138
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;

    .line 140
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 142
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

.method protected onCallLogListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateCallLog(Ljava/util/List;)V

    return-void
.end method

.method protected onContactsListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateContactsList(Ljava/util/List;)V

    return-void
.end method

.method protected onPbapStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    const/16 v0, 0x11

    invoke-interface {p0, p1, v0, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 148
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    const/4 v1, -0x1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothContactsListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothContactsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
