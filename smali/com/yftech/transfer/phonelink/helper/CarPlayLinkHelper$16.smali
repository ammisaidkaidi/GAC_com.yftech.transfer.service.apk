.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;
.super Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothA2dpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 1422
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isAVRCP_CONTROLLERConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1424
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 1426
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x75ffad83

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CA1105"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1433
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result p1

    .line 1434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAVRCP_CONTROLLERConnected connected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1436
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->disconnect()V

    goto :goto_1

    .line 1428
    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1429
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 1447
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isA2DP_SINKConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1449
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p1

    .line 1450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isA2DP_SINKConnected curProductDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x75ffad83

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CA1105"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1459
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result p1

    .line 1460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isA2DP_SINKConnected isConnected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1462
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->disconnect()V

    goto :goto_1

    .line 1454
    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$16;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1455
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    :cond_3
    :goto_1
    return-void
.end method
