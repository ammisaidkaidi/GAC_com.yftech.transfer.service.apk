.class Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;
.source "BluetoothAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothCallLogDownloadPositionChanged(II)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadPositionChanged(II)V

    return-void
.end method

.method public onBluetoothCallLogDownloadStateChanged(I)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogDownloadStateChanged(I)V

    return-void
.end method

.method public onBluetoothCallLogListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/CallLog;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothCallLogListChanged(Ljava/util/List;)V

    return-void
.end method

.method public onBluetoothContactsDownloadPositionChanged(II)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothContactsDownloadPositionChanged(II)V

    return-void
.end method

.method public onBluetoothContactsDownloadStateChanged(I)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothContactsDownloadStateChanged: sate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x64

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    new-instance p0, Lcom/yftech/btphone/lib/sample/SampleDataProvider;

    invoke-direct {p0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/btphone/lib/sample/SampleDataProvider;->getContacts()Ljava/util/ArrayList;

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBluetoothContactsListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothContactsListChanged: listPeople = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-virtual {v0, p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->transferContacts(Ljava/util/List;)V

    .line 210
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$2;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$000(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyPhoneContact(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;Z)V

    :cond_0
    return-void
.end method

.method public onBluetoothMissedPhoneCallCountChanged(I)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothMissedPhoneCallCountChanged(I)V

    return-void
.end method

.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
