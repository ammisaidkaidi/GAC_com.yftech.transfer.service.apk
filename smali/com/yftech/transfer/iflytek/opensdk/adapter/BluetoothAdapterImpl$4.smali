.class Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;
.super Ljava/lang/Object;
.source "BluetoothAdapterImpl.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;


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

    .line 253
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept(Ljava/lang/String;)I
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->answer()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, -0x3eb

    :goto_0
    return p0
.end method

.method public onCall(Ljava/lang/String;)I
    .locals 3

    .line 311
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->dial(Ljava/lang/String;)Z

    move-result p0

    .line 312
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCall: number;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, -0x3eb

    :goto_0
    return p0
.end method

.method public onGetBluetoothDevice()Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetCallLogList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetConnectionState()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getRemoteDevices()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getContactsDownloadState()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onGetContactByName(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetContactByNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetContactList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetContactList: lise.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {v2}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onGetName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onHang(Ljava/lang/String;)I
    .locals 3

    .line 323
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHang: number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->hangup()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onLaunchActivity(I)I
    .locals 1

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "com.yftech.intent.action.bluetooth.ui.dial"

    .line 379
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string p1, "com.yftech.intent.action.bluetooth.ui.calllog"

    .line 375
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string p1, "com.yftech.intent.action.bluetooth.ui.contacts"

    .line 372
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :goto_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$100(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRecall()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onReject(Ljava/lang/String;)I
    .locals 3

    .line 330
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReject: s\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->hangup()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onServiceStatusChanged(I)V
    .locals 3

    .line 256
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iflytek BluetoothService onServiceStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;Z)Z

    .line 269
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bind IFlytek BluetoothPhone Service Successful"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;Z)Z

    .line 261
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$500(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSyncPhoneBook(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 405
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl$4;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;)Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestContactsList()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 407
    :goto_0
    invoke-static {}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSyncPhoneBook: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   result = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, -0x3eb

    :goto_1
    return v0
.end method

.method public onTransfer()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
