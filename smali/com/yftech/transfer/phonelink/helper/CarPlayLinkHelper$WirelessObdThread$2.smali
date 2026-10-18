.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->startObdLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)V
    .locals 0

    .line 2696
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2699
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x3e8

    .line 2700
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "persist.carplay.peer.mac"

    const/4 v1, 0x0

    .line 2701
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2707
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/vendor/bin/wl -i wlan0 rssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2709
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->getInstance()Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;

    move-result-object v1

    .line 2712
    :try_start_0
    iget-object v1, v1, Landroid/hardware/audioadapter/V1_0/CmdExeInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2718
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v2

    .line 2719
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    iget-object v3, v3, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v3, v3, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", carplaymac: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mBadRssiCount: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    .line 2720
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", screen: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2719
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x50

    if-ge v1, v0, :cond_2

    .line 2723
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3708(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;)I

    goto :goto_1

    .line 2725
    :cond_2
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    invoke-static {v0, v4}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->access$3702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;I)I

    :goto_1
    const-string v0, "carplay.socket.debug"

    .line 2728
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v1, "obd loop reconnect Carplay\uff0ccarplay.socket.debug"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "carplay.socket.debug"

    const-string v1, "false"

    .line 2730
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 2714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2733
    :cond_3
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$WirelessObdThread;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    const-string v0, "obd loop task stopped."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
