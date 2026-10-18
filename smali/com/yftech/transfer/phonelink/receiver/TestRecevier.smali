.class public Lcom/yftech/transfer/phonelink/receiver/TestRecevier;
.super Landroid/content/BroadcastReceiver;
.source "TestRecevier.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.transfer.test"


# instance fields
.field private final ACCOFFTIMING_TIME:I

.field private accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

.field private tryConnectedD:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0x2710

    .line 120
    iput v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->ACCOFFTIMING_TIME:I

    return-void
.end method

.method private accOffWhenCarplayCertificateOn()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 144
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$3;-><init>(Lcom/yftech/transfer/phonelink/receiver/TestRecevier;)V

    const-wide/16 v1, 0x2710

    .line 145
    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private accOnWhenCarplayCertificateOn()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-string v0, "accOffWhenCarplayCertificateOn"

    .line 128
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$2;-><init>(Lcom/yftech/transfer/phonelink/receiver/TestRecevier;)V

    const/4 p0, 0x1

    invoke-static {p0, v0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 135
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "type"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string p0, "activity"

    .line 109
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string p1, "net.easyconn"

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string p0, "kill net.easyconn"

    .line 111
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :pswitch_2
    new-instance p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;

    invoke-direct {p0, p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->getWifiConnectionState()I

    move-result p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestReceiver#mReceiver wifiConnectionState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eq p1, v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->enableWifi(Z)I

    goto/16 :goto_0

    .line 90
    :pswitch_3
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result p0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "accOffWhenCarplayCertificateOn isCarplayCertificateOn:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accOffWhenCarplayCertificateOn curProductDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p2, "CB_IHU12_C1"

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "accOffWhenCarplayCertificateOn a79 !isCarplayCertificateOn return"

    .line 96
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOn()V

    goto :goto_0

    .line 84
    :pswitch_5
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->rejectPhone()V

    goto :goto_0

    :pswitch_6
    const-string p0, "123"

    .line 81
    invoke-static {v0, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendHicarReConnectStateChange(ZLjava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_7
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 49
    :pswitch_8
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 77
    :pswitch_9
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 78
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->initGps()V

    goto :goto_0

    .line 56
    :pswitch_a
    new-instance p1, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$1;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$1;-><init>(Lcom/yftech/transfer/phonelink/receiver/TestRecevier;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/yftech/transfer/service/utils/AppUtil;->interval(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 44
    :pswitch_b
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    .line 45
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "usbExists1:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",usbExists2:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
