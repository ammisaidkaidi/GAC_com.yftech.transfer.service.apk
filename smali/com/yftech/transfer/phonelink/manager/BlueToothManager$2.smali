.class Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;
.super Ljava/lang/Object;
.source "BlueToothManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$202(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;Z)Z

    .line 159
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$300(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$400(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;Landroid/os/Handler;)V

    .line 160
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$500(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$400(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 161
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$600(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$400(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 162
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$2;->this$0:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$700(Lcom/yftech/transfer/phonelink/manager/BlueToothManager;)Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 163
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->access$800()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 164
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;

    .line 166
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager$BlueToothObservor;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
