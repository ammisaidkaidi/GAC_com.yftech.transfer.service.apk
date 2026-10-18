.class public Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.super Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;
.source "CBIHU12Helper.java"


# static fields
.field private static final KEY_BOOT_UI_ISSHOW:Ljava/lang/String; = "boot_warn_ui"

.field private static final MSG_SEND_CARPLAY:I = 0x0

.field private static final MSG_SEND_UNPLOADINS:I = 0x1

.field private static final VALUE_BOOT_UI_HIDE:I = 0x0

.field private static final VALUE_BOOT_UI_SHOW:I = 0x1


# instance fields
.field private final ACCOFFTIMING_TIME:I

.field private accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

.field private avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

.field private carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

.field private carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

.field private carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

.field protected curPhoneType:I

.field private hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

.field private isAvm:Z

.field private isResetUsbIng:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private mPowerLaterDisposable:Lio/reactivex/disposables/Disposable;

.field private prePhoneLink:Ljava/lang/String;

.field private sendCarplayMsgTime:J

.field private systemUIBootTipObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;-><init>()V

    const-string v0, "none"

    .line 55
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->prePhoneLink:Ljava/lang/String;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    .line 68
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$2;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    .line 140
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    .line 151
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$4;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    .line 159
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$5;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$5;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    .line 168
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$6;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$6;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    .line 219
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    const v0, 0x927c0

    .line 650
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->ACCOFFTIMING_TIME:I

    .line 716
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$11;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$11;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-void
.end method

.method private accOffWhenCarplayCertificateOn()V
    .locals 4

    .line 685
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accOffWhenCarplayCertificateOn isCarplayCertificateOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 687
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v1

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accOffWhenCarplayCertificateOn curProductDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v2, "CB_IHU12_C1"

    .line 689
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string p0, "accOffWhenCarplayCertificateOn a79 !isCarplayCertificateOn return"

    .line 692
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 699
    :cond_1
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$10;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$10;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    const-wide/32 v1, 0x927c0

    .line 700
    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private accOnWhenCarplayCertificateOn()V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 659
    :cond_0
    invoke-static {}, Lcom/utils/WIfiUtils;->isApEnable()Z

    move-result v0

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accOnWhenCarplayCertificateOn isApEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 662
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$9;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$9;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 676
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-static {v1, p0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 678
    :goto_0
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 680
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->sendCarplayMsgTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->sendCarPlayMsg()V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isAvm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->phoneLinkInit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mPowerLaterDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mPowerLaterDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOnWhenCarplayCertificateOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->enableLinkSwitch()V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->accOffWhenCarplayCertificateOn()V

    return-void
.end method

.method static synthetic access$902(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isResetUsbIng:Z

    return p1
.end method

.method private changeBlueTootchState(Ljava/lang/String;)V
    .locals 1

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeBlueTootchState status:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x5eac733

    if-eq p0, v0, :cond_1

    const v0, 0x210a0108

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "carplay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p0, "hicar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 502
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnect()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private enableLinkSwitch()V
    .locals 2

    const-string p0, "boot_warn_ui"

    .line 430
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLinkSwitch boot_warn_ui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 436
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 437
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v1, p0, :cond_1

    return-void

    .line 439
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carlife"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 440
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carplay"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 441
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p0

    const-string v1, "hicar"

    .line 442
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 444
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "hicar"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :cond_2
    return-void
.end method

.method private phoneLinkInit(Ljava/lang/String;)V
    .locals 4

    const-string p0, "boot_warn_ui"

    .line 179
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneLinkInit phoneLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneLinkInit boot_warn_ui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5eac733

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x210824d0

    if-eq v0, v1, :cond_1

    const v1, 0x210a0108

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-ne v3, p0, :cond_4

    .line 206
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    return-void

    .line 209
    :cond_4
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p0

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phoneLinkInit huaWeiPhoneLinkPicked2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p1, "carlife"

    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 212
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 214
    :cond_5
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    :pswitch_1
    if-ne v3, p0, :cond_6

    .line 197
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 200
    :cond_6
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    :pswitch_2
    if-ne v3, p0, :cond_7

    .line 185
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    return-void

    .line 188
    :cond_7
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phoneLinkInit huaWeiPhoneLinkPicked:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p1, "hicar"

    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 191
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 193
    :cond_8
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendCarPlayMsg()V
    .locals 3

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->sendCarplayMsgTime:J

    .line 420
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "sendCarPlayMsg()"

    .line 421
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x226

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public disablePhoneLink()V
    .locals 0

    const-string p0, "disablePhoneLink"

    .line 582
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 583
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    return-void
.end method

.method public enablePhoneLink()V
    .locals 5

    const-string p0, "boot_warn_ui"

    .line 545
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enablePhoneLink boot_warn_ui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 550
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    .line 551
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePhoneLink phoneLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",hwpicked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    .line 574
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carlife"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 575
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carplay"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 p0, 0x0

    if-eqz v1, :cond_6

    .line 556
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 561
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x5eac733

    if-eq v3, v4, :cond_4

    const v4, 0x210824d0

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "carlife"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, p0

    goto :goto_0

    :cond_4
    const-string v3, "hicar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    :cond_5
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 567
    :pswitch_0
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carlife"

    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 568
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "hicar"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 563
    :pswitch_1
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carlife"

    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 564
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "hicar"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 557
    :cond_6
    :goto_1
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 558
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "hicar"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 559
    invoke-static {}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendShowHuaWeiConnectedDialog()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndroidPriorityLink()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIOSPriorityLink()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;
    .locals 2

    .line 514
    iget p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 517
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "none"

    .line 518
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    .line 531
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "carlife"

    .line 532
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "hicar"

    .line 533
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 526
    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "carplay"

    .line 527
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 522
    :pswitch_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "carlife"

    .line 523
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 270
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->registerObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 271
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->registerObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V

    .line 272
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->registerObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 273
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 274
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_warn_ui"

    .line 276
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 275
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isCarlifePresent()Z

    move-result v0

    .line 279
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isCarplayPresent()Z

    move-result v1

    .line 280
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isHicarPresent()Z

    move-result v2

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init isCarlifePresent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init isCarplayPresent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init isHicarPresent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->pickHiCarWhenHuaWei()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->pickHiCarWhenHuaWei()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->pickCarLifeWhenHuaWei()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isAvm()Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isAvm:Z

    return p0
.end method

.method public isPhoneLinkEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPowerStandBy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public phoneLinkChanged()V
    .locals 3

    .line 383
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneLinkChanged curPhoneLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",prePhoneLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->prePhoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v1, "none"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "carplay"

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->prePhoneLink:Ljava/lang/String;

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "carplay"

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carplay"

    .line 391
    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 392
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->cancelAutoShow()I

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 397
    :cond_1
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedStatusChanged(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->changeBlueTootchState(Ljava/lang/String;)V

    const-string v1, "none"

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->enableLinkSwitch()V

    goto :goto_0

    .line 402
    :cond_2
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disableOtherPhoneLink()V

    .line 404
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->prePhoneLink:Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->prePhoneLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storePreviousPhoneLinkStatus(Ljava/lang/String;)V

    const-string v1, "carplay"

    .line 406
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->sendCarPlayMsg()V

    .line 410
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 411
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public pickAndroidPriorityLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickCarLifeWhenHuaWei()V
    .locals 0

    const-string p0, "pickCarLifeWhenHuaWei"

    .line 613
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "carlife"

    .line 614
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeHuaWeiPhoneLinkPicked(Ljava/lang/String;)V

    return-void
.end method

.method public pickHiCarWhenHuaWei()V
    .locals 0

    const-string p0, "pickHiCarWhenHuaWei"

    .line 619
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "hicar"

    .line 620
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeHuaWeiPhoneLinkPicked(Ljava/lang/String;)V

    return-void
.end method

.method public pickIOSPriorityLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetUsb()V
    .locals 3

    .line 450
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isUpgrading()Z

    move-result v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsb isUpgrading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isUsbAttach()Z

    move-result v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsb usbAttach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUsb isUsbResting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isResetUsbIng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 459
    iget-boolean v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isResetUsbIng:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->isResetUsbIng:Z

    .line 462
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$8;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$8;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startPriorityLinkAction()V
    .locals 0

    return-void
.end method

.method public uninit()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 636
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->unregisterObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 637
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->unregisterObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V

    .line 638
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->unregisterObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 639
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 640
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 641
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 642
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public usbAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbAttached  pre curPhoneType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->getPhoneType(Landroid/hardware/usb/UsbDevice;Z)I

    move-result p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached  newType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    return-void

    .line 307
    :cond_1
    iput p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached  now curPhoneType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached phoneLink:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 311
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAttached connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 313
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbAttached powerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v3, "none"

    .line 316
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v2, p1, :cond_9

    const-string p1, "boot_warn_ui"

    .line 318
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    .line 320
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAttached hwpicked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p1, :cond_7

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x5eac733

    if-eq v2, v4, :cond_5

    const v4, 0x210824d0

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "carlife"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "hicar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v3

    :cond_6
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 337
    :pswitch_0
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 338
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 333
    :pswitch_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 334
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 327
    :cond_7
    :goto_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 328
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 329
    invoke-static {}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendShowHuaWeiConnectedDialog()V

    goto :goto_2

    .line 344
    :cond_8
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 349
    :cond_9
    :goto_2
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public usbDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 359
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/dev/bus/usb/001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 362
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "usbDetached curPhoneType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p1

    .line 364
    iget v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "hicar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 366
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 367
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v0

    const-string v1, "none"

    .line 368
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p1, :cond_2

    const-string p1, "boot_warn_ui"

    .line 369
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbDetached boot_warn_ui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 372
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :cond_2
    const/4 p1, -0x1

    .line 376
    iput p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->curPhoneType:I

    .line 377
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    return-void
.end method
