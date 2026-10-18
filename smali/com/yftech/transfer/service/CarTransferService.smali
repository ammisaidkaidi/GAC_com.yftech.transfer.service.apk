.class public Lcom/yftech/transfer/service/CarTransferService;
.super Landroid/app/Service;
.source "CarTransferService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityChangedReceiver:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;

.field private testRecevier:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

.field private wifiReceiver:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->testRecevier:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    .line 49
    new-instance v0, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->wifiReceiver:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;

    .line 50
    new-instance v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->activityChangedReceiver:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;

    return-void
.end method

.method private isNeedToInitCarTransferMediaService()V
    .locals 3

    .line 109
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToInitPlatformAdapterService productDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x798d1bde

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CB_IHU19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/transfer/service/CarTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    return-void
.end method

.method private isNeedToInitPhoneLink()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToInitPhoneLink productDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CB_IHU23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "CBIHU12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "CB_IHU23_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 132
    :pswitch_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    new-instance v1, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->init(Landroid/content/Context;Lcom/carlife/client/ICarLifeClientCallbackInterface;)V

    .line 133
    invoke-static {}, Lcom/utils/CarPlayUtils;->checkCarplayCertificateState()V

    .line 134
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->init()V

    const-string v0, "car_phonelinkmedia"

    .line 135
    new-instance v1, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "car_phonelink"

    .line 136
    new-instance v1, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yftech/transfer/phonelink/CarLifeLinkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->activityChangedReceiver:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.activity.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yftech/transfer/service/CarTransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->testRecevier:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.transfer.test"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yftech/transfer/service/CarTransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/yftech/transfer/service/CarTransferService;->wifiReceiver:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/transfer/service/CarTransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/permission/CarPermission;->initAsync(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xbfc2db6 -> :sswitch_4
        0xc0ab996 -> :sswitch_3
        0x4d080eb8 -> :sswitch_2
        0x75ffad83 -> :sswitch_1
        0x798d1bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNeedToInitPki()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToInitPki productDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x798d1bde

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CB_IHU19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 87
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yftech/transfer/pki/PkiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    return-void
.end method

.method private isNeedToUnInitPki()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToUnInitPki productDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x798d1bde

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CB_IHU19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return-void
.end method

.method private isNeedToUninitPhoneLink()V
    .locals 3

    .line 155
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToUninitPhoneLink productDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CB_IHU23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "CBIHU12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "CB_IHU23_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 163
    :pswitch_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->uninit()V

    .line 164
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->activityChangedReceiver:Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->testRecevier:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->wifiReceiver:Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CarTransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xbfc2db6 -> :sswitch_4
        0xc0ab996 -> :sswitch_3
        0x4d080eb8 -> :sswitch_2
        0x75ffad83 -> :sswitch_1
        0x798d1bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    iget-object v0, p0, Lcom/yftech/transfer/service/CarTransferService;->TAG:Ljava/lang/String;

    const-string v1, "CarTransferService onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/yftech/transfer/service/CarTransferService;->isNeedToInitPhoneLink()V

    .line 62
    invoke-direct {p0}, Lcom/yftech/transfer/service/CarTransferService;->isNeedToInitPki()V

    .line 63
    invoke-direct {p0}, Lcom/yftech/transfer/service/CarTransferService;->isNeedToInitCarTransferMediaService()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    invoke-direct {p0}, Lcom/yftech/transfer/service/CarTransferService;->isNeedToUninitPhoneLink()V

    .line 75
    invoke-direct {p0}, Lcom/yftech/transfer/service/CarTransferService;->isNeedToUnInitPki()V

    return-void
.end method
