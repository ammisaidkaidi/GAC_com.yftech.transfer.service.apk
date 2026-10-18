.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;
.source "SampleBluetoothSettingsCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;-><init>()V

    const-string v0, "SampleBluetoothSettingsCallback"

    .line 26
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothAutoAcceptPhoneCallStateChanged(Z)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoAcceptPhoneCallStateChanged(Z)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoAcceptPhoneCallStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 197
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoAcceptPhoneCallStateChanged(Z)V

    goto :goto_0

    .line 199
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

.method public onBluetoothAutoConnectStateChanged(Z)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoConnectStateChanged(Z)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 209
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoConnectStateChanged(Z)V

    goto :goto_0

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

.method public onBluetoothAutoDownloadCallLogStateChanged(Z)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoDownloadCallLogStateChanged(Z)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoDownloadCallLogStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 185
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoDownloadCallLogStateChanged(Z)V

    goto :goto_0

    .line 187
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

.method public onBluetoothAutoDownloadContactsStateChanged(Z)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAutoDownloadContactsStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 173
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    goto :goto_0

    .line 175
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

.method public onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 216
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 221
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 223
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 225
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

.method public onBluetoothConnectStateChangedEx(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothConnectStateChangedEx(Landroid/bluetooth/BluetoothDevice;II)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothConnectStateChanged,state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bluetooth:,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onDisconnectReason(Landroid/bluetooth/BluetoothDevice;II)V

    .line 235
    iget-object p2, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 237
    invoke-interface {v0, p1, p3}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDisconnectReason(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 239
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 80
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDeviceBandStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 85
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 87
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 89
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

.method public onBluetoothDiscoveryStateChanged(II)V
    .locals 2

    .line 157
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothDiscoveryStateChanged(II)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDiscoveryStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 161
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothDiscoveryStateChanged(II)V

    goto :goto_0

    .line 163
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

.method public onBluetoothNameChanged(Ljava/lang/String;)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothNameChanged(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 248
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothNameChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 250
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

.method public onBluetoothPairedListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothPairedListChanged(Ljava/util/List;)V

    const-string v0, "onBluetoothPairedListChanged:"

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onPairedListChanged(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 116
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothPairedListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 118
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

.method public onBluetoothScanModeChanged(I)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothScanModeChanged(I)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothScanModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 73
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothScanModeChanged(I)V

    goto :goto_0

    .line 75
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

.method public onBluetoothScanningStateChanged(Z)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothScanningStateChanged(Z)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothScanningStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 150
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothScanningStateChanged(Z)V

    goto :goto_0

    .line 152
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

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothStateChanged(I)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onStateChanged(I)V

    .line 53
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 55
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothStateChanged(I)V

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

.method public onBluetoothUnpairedListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothUnpairedListChanged(Ljava/util/List;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothUnpairedListChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->onUnpairedListChanged(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;

    .line 134
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;->onBluetoothUnpairedListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 136
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

.method protected onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->deleteUnpairedDevice(Landroid/bluetooth/BluetoothDevice;)V

    const/4 p0, 0x0

    const/16 v0, 0xa

    if-ne v0, p2, :cond_0

    .line 96
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hidePairWindow()V

    .line 97
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p2, :cond_1

    .line 99
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    if-ne p1, p2, :cond_2

    .line 101
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hidePairWindow()V

    .line 102
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->setRequestPairDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 254
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    const/16 v0, 0x1000

    const/4 v1, -0x1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onDisconnectReason(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "onDisconnectReason, ignore"

    .line 265
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->log(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    const/16 p2, 0x1000

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onPairedListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateDevices(ILjava/util/List;)V

    return-void
.end method

.method protected onStateChanged(I)V
    .locals 0

    const/16 p0, 0xa

    if-ne p0, p1, :cond_0

    .line 62
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->resetData()V

    :cond_0
    return-void
.end method

.method protected onUnpairedListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateDevices(ILjava/util/List;)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

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

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothSettingsListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothSettingsCallback;->mListeners:Ljava/util/ArrayList;

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
