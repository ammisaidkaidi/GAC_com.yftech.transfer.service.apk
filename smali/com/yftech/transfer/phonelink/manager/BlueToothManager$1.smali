.class Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;
.super Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;
.source "BlueToothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/manager/BlueToothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;->onBluetoothStateChanged(I)V

    .line 51
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$000(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",enableState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$100(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$100(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1

    .line 56
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {p0, v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$102(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;I)I

    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$100(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 60
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$100(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setEnabled(Z)Z

    .line 61
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {p0, v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$102(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;I)I

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
