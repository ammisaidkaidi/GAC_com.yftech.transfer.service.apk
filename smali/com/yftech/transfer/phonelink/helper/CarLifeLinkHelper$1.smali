.class Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;
.super Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;
.source "CarLifeLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothAvrcpConnectStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->getEnableState()I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnectAudio()V

    :cond_0
    return-void
.end method
