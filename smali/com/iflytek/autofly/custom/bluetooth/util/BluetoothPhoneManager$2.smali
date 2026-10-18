.class Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;
.super Ljava/lang/Object;
.source "BluetoothPhoneManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "BtPhoneManager.Custom"

    const-string v0, "onService Connected"

    .line 653
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$402(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    .line 656
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$400(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$500(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 659
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$400(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$500(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->registerListener(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 662
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 667
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$202(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)I

    .line 668
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$200(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$300(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "BtPhoneManager.Custom"

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onService Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$202(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)I

    .line 647
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$200(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$300(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)V

    .line 648
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;->this$0:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->access$402(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-void
.end method
