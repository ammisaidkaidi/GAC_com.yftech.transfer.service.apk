.class Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "EaseConnLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    iget-object v2, v2, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#mReceiver action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "net.easyconn.bluetooth.call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "net.easyconn.link.in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "net.easyconn.a2dp.acquire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "net.easyconn.link.out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "net.easyconn.app.resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "net.easyconn.bt.checkstatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "net.easyconn.app.pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 124
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 126
    new-instance p1, Landroid/content/Intent;

    const-string p2, "net.easyconn.bt.connected"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "name"

    .line 129
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 120
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-static {p0, v4}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->access$002(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;Z)Z

    .line 121
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    goto/16 :goto_1

    .line 108
    :pswitch_2
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA58G()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p2, "carplay"

    invoke-virtual {p1, p2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    .line 116
    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-static {p0, v3}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->access$002(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;Z)Z

    .line 117
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    goto/16 :goto_1

    .line 99
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_APP_PAUSE isConnected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 101
    sget-object p2, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->enable()V

    const-string p2, "activity"

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const-string p2, "net.easyconn"

    .line 103
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "kill net.easyconn"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :pswitch_4
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    goto :goto_1

    .line 93
    :pswitch_5
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->play()V

    goto :goto_1

    :pswitch_6
    const-string p1, "phoneNum"

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#mReceiver phoneNum:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 90
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->call(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59b35be6 -> :sswitch_6
        -0x43fe5633 -> :sswitch_5
        0x26e90e89 -> :sswitch_4
        0x2a9afd09 -> :sswitch_3
        0x40c49654 -> :sswitch_2
        0x64789c0a -> :sswitch_1
        0x761c700d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
