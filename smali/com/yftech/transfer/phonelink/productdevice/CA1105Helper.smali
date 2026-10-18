.class public Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;
.super Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;
.source "CA1105Helper.java"


# static fields
.field public static final KEY_CA1105_ANDROID_PRIORITY_CONNECT:Ljava/lang/String; = "KEY_CA1105_ANDROID_PRIORITY_CONNECT"

.field public static final KEY_CA1105_IOS_PRIORITY_CONNECT:Ljava/lang/String; = "KEY_CA1105_IOS_PRIORITY_CONNECT"

.field public static final KEY_CA1105_IS_PHONELINK_ENABLE:Ljava/lang/String; = "KEY_CA1105_IS_PHONELINK_ENABLE"

.field public static final KEY_POWER_STANDBY:Ljava/lang/String; = "yf.false.standby.state"

.field private static final PACKAGE_MEDIA:Ljava/lang/String; = "com.yftech.multimedia"

.field public static final VALUE_CA1105_PHONELINK_DISABLE:Ljava/lang/String; = "DISABLE"

.field public static final VALUE_CA1105_PHONELINK_ENABLE:Ljava/lang/String; = "ENABLE"

.field public static final VALUE_POWER_STANDBY_OFF:I = 0x0

.field public static final VALUE_POWER_STANDBY_ON:I = 0x1


# instance fields
.field private avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

.field private bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

.field private btSwitchD:Lio/reactivex/disposables/Disposable;

.field private carDataObservor:Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;

.field private carLifeD:Lio/reactivex/disposables/Disposable;

.field private carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

.field private carLifeSetAndroidObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

.field private carMiscObservor:Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;

.field private carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

.field private carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

.field private carplayUploadTimer:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private curPhoneType:I

.field private hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

.field private iosChangedModeD:Lio/reactivex/disposables/Disposable;

.field private isAvm:Z

.field private isBlueToothEnable:Z

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private powerStandbyObserver:Landroid/database/ContentObserver;

.field private prePhoneLink:Ljava/lang/String;

.field private resetUsbD:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;-><init>()V

    .line 57
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->context:Landroid/content/Context;

    const-string v0, "none"

    .line 66
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->prePhoneLink:Ljava/lang/String;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    .line 79
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    .line 96
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    .line 124
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    .line 152
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$4;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    .line 173
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$5;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$5;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeSetAndroidObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    .line 190
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carMiscObservor:Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;

    .line 230
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$7;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$7;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    .line 254
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    .line 320
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$9;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->powerStandbyObserver:Landroid/database/ContentObserver;

    .line 340
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$10;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carDataObservor:Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->isAvm:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->changeBlueTootchState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->setIosMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsbD:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->mute()V

    return-void
.end method

.method private btSwitchLater(Ljava/lang/String;)V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->btSwitchD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->btSwitchD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 875
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;

    invoke-direct {v0, p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->btSwitchD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private carlifeAction()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 916
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$15;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$15;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private changeBlueTootchState(Ljava/lang/String;)V
    .locals 3

    .line 891
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeBlueTootchState status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x33af38

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_2

    const v0, 0x5eac733

    if-eq p0, v0, :cond_1

    const v0, 0x210a0108

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "carplay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p0, "hicar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_2
    const-string p0, "none"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 901
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    goto :goto_2

    .line 897
    :pswitch_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private iosChangedMode(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 960
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;

    invoke-direct {v0, p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private mute()V
    .locals 2

    .line 363
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isEngineBoxOn()Z

    move-result p0

    const-string v0, "yf.false.standby.state"

    .line 364
    invoke-static {v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    :cond_1
    return-void
.end method

.method private sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 727
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;

    invoke-direct {v0, p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Lcom/yftech/car/phonelink/PhoneLink;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setIosMode(Ljava/lang/String;)V
    .locals 4

    .line 969
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iosChangedMode type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 972
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/sys/carplay/carplayenablestatus"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 975
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 982
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 984
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    .line 977
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iosChangedMode error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 982
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    const/4 p0, -0x1

    .line 987
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x210824d0

    if-eq v0, v1, :cond_2

    const v1, 0x210a0108

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    :cond_3
    :goto_2
    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 993
    :pswitch_0
    invoke-static {}, Lcom/utils/IphoneLinkUtils;->startIAPD()V

    const-string p0, "iosChangedMode Runtime: start iapd"

    .line 994
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 989
    :pswitch_1
    invoke-static {}, Lcom/utils/IphoneLinkUtils;->stopIAPD()V

    const-string p0, "iosChangedMode Runtime: stop iapd"

    .line 990
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_4

    .line 982
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 986
    :cond_4
    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeDis_ioc_ctrl()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1006
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$17;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$17;-><init>()V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onThread(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disablePhoneLink()V
    .locals 1

    const-string p0, "disablePhoneLink()"

    .line 531
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "KEY_CA1105_IS_PHONELINK_ENABLE"

    const-string v0, "DISABLE"

    .line 532
    invoke-static {p0, v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    return-void
.end method

.method public enablePhoneLink()V
    .locals 2

    const-string v0, "enablePhoneLink()"

    .line 517
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "KEY_CA1105_IS_PHONELINK_ENABLE"

    const-string v1, "ENABLE"

    .line 518
    invoke-static {v0, v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsb()V

    .line 520
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    .line 521
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;->onServiceConnected()V

    .line 522
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    return-void
.end method

.method public getAndroidPriorityLink()Ljava/lang/String;
    .locals 1

    const-string p0, "KEY_CA1105_ANDROID_PRIORITY_CONNECT"

    .line 411
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "KEY_CA1105_ANDROID_PRIORITY_CONNECT"

    const-string v0, "hicar"

    .line 413
    invoke-static {p0, v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hicar"

    return-object p0
.end method

.method public getIOSPriorityLink()Ljava/lang/String;
    .locals 1

    const-string p0, "KEY_CA1105_IOS_PRIORITY_CONNECT"

    .line 469
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "KEY_CA1105_IOS_PRIORITY_CONNECT"

    const-string v0, "carplay"

    .line 471
    invoke-static {p0, v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "carplay"

    return-object p0
.end method

.method public getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;
    .locals 2

    .line 826
    iget p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 829
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "none"

    .line 830
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    .line 844
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "carlife"

    .line 845
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "hicar"

    .line 846
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 838
    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "carplay"

    .line 839
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "carlife"

    .line 840
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v1, Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {v1, v0, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    .line 834
    :pswitch_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "carlife"

    .line 835
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
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

    .line 379
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init checkcarlifeReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    .line 383
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeSetAndroidObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->registerObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 386
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->registerObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 387
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->registerObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V

    .line 388
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carMiscObservor:Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarMiscListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;)V

    .line 389
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->registerObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 390
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeSetAndroidObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->registerObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 391
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 392
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    .line 393
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carDataObservor:Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarDataCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;)V

    .line 396
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->putIOSPriorityLink(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yf.false.standby.state"

    .line 400
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->powerStandbyObserver:Landroid/database/ContentObserver;

    .line 399
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public isAvm()Z
    .locals 0

    .line 487
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->isAvm:Z

    return p0
.end method

.method public isPhoneLinkEnable()Z
    .locals 3

    const-string v0, "KEY_CA1105_IS_PHONELINK_ENABLE"

    const-string v1, "ENABLE"

    .line 504
    invoke-static {v0, v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneLinkEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ENABLE"

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPowerStandBy()Z
    .locals 2

    const-string p0, "yf.false.standby.state"

    .line 492
    invoke-static {p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPowerStandBy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public phoneLinkChanged()V
    .locals 3

    .line 742
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneLinkChanged prePhoneLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->prePhoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v1, "none"

    .line 746
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "carplay"

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->prePhoneLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "carplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carplay"

    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->cancelAutoShow()I

    .line 750
    :cond_0
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedStatusChanged(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->btSwitchLater(Ljava/lang/String;)V

    const-string v1, "none"

    .line 752
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    .line 754
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    .line 755
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;->onServiceConnected()V

    const/4 v0, 0x0

    .line 756
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendVRStatusChanged(I)V

    .line 757
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carplayUploadTimer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3

    .line 758
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carplayUploadTimer:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 760
    :cond_1
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disableOtherPhoneLink()V

    .line 762
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->prePhoneLink:Ljava/lang/String;

    .line 763
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->prePhoneLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storePreviousPhoneLinkStatus(Ljava/lang/String;)V

    const-string v1, "carplay"

    .line 764
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carplayUploadTimer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carplayUploadTimer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 767
    :cond_2
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$12;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$12;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    const-wide/16 v1, 0x1f4

    .line 768
    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->interval(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carplayUploadTimer:Lio/reactivex/disposables/Disposable;

    :cond_3
    :goto_0
    return-void
.end method

.method public pickAndroidPriorityLink(Ljava/lang/String;)V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickAndroidPriorityLink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5eac733

    if-eq v0, v1, :cond_1

    const v1, 0x210824d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    .line 542
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->putAndroidPriorityLink(Ljava/lang/String;)V

    .line 543
    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendAndroidPriorityPhoneLinkChanged(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickIOSPriorityLink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x210824d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x210a0108

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "carplay"

    .line 561
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->putIOSPriorityLink(Ljava/lang/String;)V

    const-string p0, "carplay"

    .line 562
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendIOSPriorityPhoneLinkChanged(Ljava/lang/String;)V

    .line 564
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    :pswitch_1
    const-string p1, "carlife"

    .line 556
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->putIOSPriorityLink(Ljava/lang/String;)V

    const-string p0, "carlife"

    .line 557
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendIOSPriorityPhoneLinkChanged(Ljava/lang/String;)V

    .line 558
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putAndroidPriorityLink(Ljava/lang/String;)V
    .locals 4

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putAndroidPriorityLink type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "hicar"

    :cond_0
    const-string p0, "KEY_CA1105_ANDROID_PRIORITY_CONNECT"

    .line 447
    invoke-static {p0, p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    const/4 v0, -0x1

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5eac733

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x210824d0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "carlife"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "hicar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x1

    .line 456
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->setAndroidConnection(Z)V

    .line 457
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->setAndroidConnection(Z)V

    .line 452
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_1
    return-void
.end method

.method public putIOSPriorityLink(Ljava/lang/String;)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putIOSPriorityLink type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "carplay"

    :cond_0
    const-string v0, "KEY_CA1105_IOS_PRIORITY_CONNECT"

    .line 430
    invoke-static {v0, p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->iosChangedModeD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->iosChangedModeD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 433
    :cond_1
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->iosChangedMode(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->iosChangedModeD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public resetUsb()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsbD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsbD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 787
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$13;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$13;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTimeOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsbD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startPriorityLinkAction()V
    .locals 3

    .line 573
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPriorityLinkAction connectedLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "none"

    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByUsb()V

    return-void

    .line 579
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object v0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPriorityLinkAction phoneLink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 586
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getAndroidPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 587
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByUsb()V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 594
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByUsb()V

    goto :goto_0

    .line 583
    :pswitch_2
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByUsb()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unMute()V
    .locals 1

    .line 370
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isEngineBoxOn()Z

    move-result p0

    const-string v0, "yf.false.standby.state"

    .line 371
    invoke-static {v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    .line 373
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->avmserviceObservor:Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;)V

    .line 854
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPlayObservor:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->unregisterObservor(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;)V

    .line 855
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->hiCarObservor:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->unregisterObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V

    .line 856
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carMiscObservor:Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarMiscListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;)V

    .line 857
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->unregisterObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 858
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeSetAndroidObservor:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->unregisterObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V

    .line 859
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carPowerObservor:Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;)V

    .line 860
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carDataObservor:Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/CarDataCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;)V

    .line 861
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->bluetoothPhoneObservor:Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothPhoneCallBackImp$BluetoothPhoneObservor;)V

    .line 862
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->powerStandbyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public usbAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbAttached curPhoneLinkUsbDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x18d1

    if-eq v0, v1, :cond_1

    return-void

    .line 617
    :cond_1
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-virtual {v0, p1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->getPhoneTypeFromHub(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached newType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v1, v0, :cond_3

    .line 620
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->isIphoneVid(I)Z

    move-result p1

    .line 621
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached -1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "carlife"

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carlifeAction()V

    :cond_2
    return-void

    .line 629
    :cond_3
    iput v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    .line 631
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 632
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    .line 634
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->isPhoneLinkEnable()Z

    move-result v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached phoneLink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isPhoneLinkEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_4

    return-void

    .line 639
    :cond_4
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->shouldEnablePhoneLink()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 644
    :cond_5
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    .line 645
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 653
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getAndroidPriorityLink()Ljava/lang/String;

    move-result-object p1

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAttached  PHONE_TYPE_HUAWEI androidPriorityLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v2, "carlife"

    .line 655
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 657
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "hicar"

    invoke-virtual {p1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "hicar"

    .line 658
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 660
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 666
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object p1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAttached  PHONE_TYPE_IPHONE iosPriorityLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v2, "carlife"

    .line 668
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 669
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v2, "carplay"

    invoke-virtual {p1, v2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "carplay"

    .line 670
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 671
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 676
    :cond_8
    :goto_0
    :pswitch_2
    iget p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    if-ne p0, v1, :cond_9

    .line 677
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p0, v1}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->switched_devicemode(Z)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public usbDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 685
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbDetached curPhoneLinkUsbDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1

    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 694
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    .line 695
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    .line 696
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    .line 697
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    if-ne v1, v3, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 704
    :goto_0
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v1

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbDetached phonelink status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->carLifeD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 710
    :cond_3
    iget v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    if-ne v0, p1, :cond_4

    .line 711
    sget-object p1, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p1, v4}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->switched_devicemode(Z)V

    :cond_4
    const/4 p1, -0x1

    .line 712
    iput p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneType:I

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->curPhoneLinkUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 714
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p1

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbDetached link:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    :cond_5
    return-void
.end method
