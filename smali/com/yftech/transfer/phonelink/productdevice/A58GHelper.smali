.class public Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;
.super Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;
.source "A58GHelper.java"


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

.field private carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

.field private carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

.field protected curPhoneType:I

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

.field private prePhoneLink:Ljava/lang/String;

.field private sendCarplayMsgTime:J

.field private systemUIBootTipObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;-><init>()V

    const-string v0, "none"

    .line 49
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->prePhoneLink:Ljava/lang/String;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->curPhoneType:I

    .line 61
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$2;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    .line 132
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$3;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$3;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    .line 142
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$4;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    .line 165
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    const v0, 0x927c0

    .line 442
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->ACCOFFTIMING_TIME:I

    .line 502
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$9;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$9;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-void
.end method

.method private accOffWhenCarplayCertificateOn()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 485
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$8;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$8;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    const-wide/32 v1, 0x927c0

    .line 486
    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private accOnWhenCarplayCertificateOn()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOnD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 451
    :cond_0
    invoke-static {}, Lcom/utils/WIfiUtils;->isApEnable()Z

    move-result v0

    .line 452
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

    .line 454
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$7;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$7;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 468
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-static {v1, p0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 470
    :goto_0
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 472
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->sendCarplayMsgTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->sendCarPlayMsg()V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isAvm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->phoneLinkInit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOnWhenCarplayCertificateOn()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->enableLinkSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOffWhenCarplayCertificateOn()V

    return-void
.end method

.method static synthetic access$802(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isResetUsbIng:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-object p0
.end method

.method private changeBlueTootchState(Ljava/lang/String;)V
    .locals 1

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeBlueTootchState status:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x210a0108

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "carplay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    .line 326
    :cond_2
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnect()V

    :goto_2
    return-void
.end method

.method private enableLinkSwitch()V
    .locals 2

    const-string p0, "boot_warn_ui"

    .line 259
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 260
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

    .line 265
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 266
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v1, p0, :cond_1

    return-void

    .line 268
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "easyconn"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 269
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carplay"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    return-void
.end method

.method private phoneLinkInit(Ljava/lang/String;)V
    .locals 2

    const-string p0, "boot_warn_ui"

    .line 154
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneLinkInit phoneLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneLinkInit boot_warn_ui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 158
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 160
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_0
    return-void
.end method

.method private sendCarPlayMsg()V
    .locals 3

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->sendCarplayMsgTime:J

    .line 249
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "sendCarPlayMsg()"

    .line 250
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

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

    .line 380
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 381
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    return-void
.end method

.method public enablePhoneLink()V
    .locals 4

    const-string p0, "boot_warn_ui"

    .line 366
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 367
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

    .line 371
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    .line 372
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object v1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePhoneLink phoneLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",hwpicked:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 374
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "easyconn"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 375
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carplay"

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    return-void
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

    .line 338
    iget p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->curPhoneType:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 341
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "none"

    .line 342
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    .line 354
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 349
    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "carplay"

    .line 350
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 346
    :pswitch_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#init()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 201
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->registerObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 202
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 203
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_warn_ui"

    .line 205
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public isAvm()Z
    .locals 0

    .line 419
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isAvm:Z

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

    .line 212
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneLinkChanged curPhoneLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",prePhoneLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->prePhoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v1, "none"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "carplay"

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->prePhoneLink:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "carplay"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carplay"

    .line 220
    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    .line 221
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->cancelAutoShow()I

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 226
    :cond_1
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedStatusChanged(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->changeBlueTootchState(Ljava/lang/String;)V

    const-string v1, "none"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->enableLinkSwitch()V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disableOtherPhoneLink()V

    .line 233
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->prePhoneLink:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->prePhoneLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storePreviousPhoneLinkStatus(Ljava/lang/String;)V

    const-string v1, "carplay"

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->sendCarPlayMsg()V

    .line 239
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 240
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

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

    return-void
.end method

.method public pickHiCarWhenHuaWei()V
    .locals 0

    return-void
.end method

.method public pickIOSPriorityLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetUsb()V
    .locals 3

    .line 275
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isUpgrading()Z

    move-result v0

    .line 276
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

    .line 279
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isUsbAttach()Z

    move-result v0

    .line 280
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

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUsb isUsbResting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isResetUsbIng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isResetUsbIng:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->isResetUsbIng:Z

    .line 287
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$6;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$6;-><init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startPriorityLinkAction()V
    .locals 0

    return-void
.end method

.method public uninit()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 430
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->unregisterObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 431
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 432
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->systemUIBootTipObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 434
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
