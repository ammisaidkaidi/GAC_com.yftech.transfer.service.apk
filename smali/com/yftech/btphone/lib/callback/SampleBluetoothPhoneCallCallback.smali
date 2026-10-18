.class public Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "SampleBluetoothPhoneCallCallback.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    const-string v0, "SampleBluetoothPhoneCallCallback"

    .line 28
    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothHfpConnectStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 68
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 70
    invoke-interface {v1, p1, p2}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 72
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

.method public onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothIndicatorChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 56
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothIndicatorChanged(Lcom/yftech/car/bluetooth/model/Indicator;)V

    goto :goto_0

    .line 58
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

.method public onBluetoothPhoneCallAudioStateChanged(Z)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallAudioStateChanged(Z)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallAudioStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 133
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallAudioStateChanged(Z)V

    goto :goto_0

    .line 135
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

.method public onBluetoothPhoneCallMicStateChanged(Z)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallMicStateChanged(Z)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallMicStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 145
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallMicStateChanged(Z)V

    goto :goto_0

    .line 147
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

.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged, phone size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->onPhoneCallChanged(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;

    .line 102
    invoke-interface {v1, p1}, Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

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

.method protected onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 77
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->resetHfpData()V

    .line 80
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    const/16 v0, 0x10

    invoke-interface {p0, p1, v0, p2}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updateProfileState(Landroid/bluetooth/BluetoothDevice;II)Lcom/yftech/btphone/lib/bean/Device;

    .line 85
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    const/4 v1, -0x1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method protected onPhoneCallChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->updatePhoneCalls(Ljava/util/List;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 111
    :cond_0
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    .line 112
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowFull(Z)V

    .line 114
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    const-string p1, "############ setShouldShowOSD(false)"

    .line 115
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->log(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->setShouldShowOSD(Z)V

    .line 119
    :cond_2
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getDataProviderManager()Lcom/yftech/btphone/lib/listener/IDataProviderProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/btphone/lib/listener/IDataProviderProxy;->isExistValidPhone()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 120
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getWindowManager()Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/btphone/lib/listener/IWindowManagerProxy;->hideConnectFailed()V

    .line 123
    :cond_3
    invoke-static {}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getInstance()Lcom/yftech/btphone/lib/sample/SampleApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleApplication;->getPhoneCallWindowManager()Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;

    move-result-object p0

    invoke-interface {p0, v1, v1}, Lcom/yftech/btphone/lib/listener/IPhoneCallWindowProxy;->sendMessageCheckPhoneWindow(ZZ)V

    return-void
.end method

.method public registerListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Lcom/yftech/btphone/lib/listener/IBluetoothPhoneCallListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/yftech/btphone/lib/callback/SampleBluetoothPhoneCallCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
