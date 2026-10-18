.class public Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;
.super Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
.source "CarLifeLinkHelper.java"


# static fields
.field private static final LAUNCH_HOME:Ljava/lang/String; = "home"

.field private static final LAUNCH_MAP:Ljava/lang/String; = "map"

.field private static final LAUNCH_MUSIC:Ljava/lang/String; = "music"

.field private static final LAUNCH_PHONE:Ljava/lang/String; = "phone"


# instance fields
.field private bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

.field private bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

.field private onStatusChangedListener:Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;-><init>()V

    .line 40
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    .line 55
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$2;-><init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    .line 65
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$3;-><init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->onStatusChangedListener:Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;

    return-void
.end method


# virtual methods
.method public acceptPhone()V
    .locals 0

    const-string p0, "carlife no support acceptPhone"

    .line 212
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public closeVR()V
    .locals 1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " closeVR()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->startCarlifeVR()V

    return-void
.end method

.method public connectByUsb()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->enable(Z)V

    .line 120
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    .line 122
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->storeCarLifeWhenHuaWei()V

    .line 124
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    const-string p0, "connectByUsb()"

    .line 125
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public connectByWireless()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->connectByUsb()V

    return-void
.end method

.method public connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->isConnected()Z

    move-result v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnect isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CB_IHU23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "CA1105"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "CBIHU12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "CB_IHU12_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 153
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 155
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p0, v0, :cond_2

    .line 157
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->donot_audoconnect()V

    .line 158
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->closeCarlifeActivety()V

    .line 159
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->resetUsb()V

    goto :goto_1

    .line 148
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->enable(Z)V

    .line 149
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->disconnect()V

    .line 150
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->closeCarlifeActivety()V

    :cond_2
    :goto_1
    return-void

    nop

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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enable(Z)V
    .locals 3

    .line 168
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enable:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",b:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x75ffad83

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "CA1105"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 178
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isCarlifePresent()Z

    move-result p0

    if-nez p0, :cond_3

    .line 181
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->donot_audoconnect()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 187
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->audoconnect()V

    goto :goto_1

    .line 189
    :cond_4
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->donot_audoconnect()V

    :goto_1
    return-void
.end method

.method public forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    return-void
.end method

.method public getAvailableCarLinkDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCallStatus()I
    .locals 3

    .line 237
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "starCallPage checkReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 243
    :cond_1
    invoke-static {}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->getCallStatus()I

    move-result v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " getCallStatus:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public getCarLinkDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedCarLinkDeviceList()Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVRStatus()I
    .locals 0

    .line 206
    invoke-static {}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->getVRStatus()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 105
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;)V

    .line 106
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->onStatusChangedListener:Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->registerStatusChangedListener(Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 92
    invoke-static {}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->getConnectStatus()I

    move-result v0

    .line 93
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carLifeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public linkName()Ljava/lang/String;
    .locals 0

    const-string p0, "carlife"

    return-object p0
.end method

.method public mute(Z)V
    .locals 0

    return-void
.end method

.method public next()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " next checkReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->music_next()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 331
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " pause checkReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->music_pause()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 322
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " play checkReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->music_play()V

    return-void
.end method

.method public previous()V
    .locals 2

    .line 304
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " previous checkReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->music_previous()V

    return-void
.end method

.method public rejectPhone()V
    .locals 0

    const-string p0, "carlife no support rejectPhone"

    .line 218
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setAndroidConnection(Z)V
    .locals 2

    .line 339
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " setAndroidConnection checkReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "1060"

    invoke-virtual {p0, v0, v1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->setAndroidConnection(ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 345
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string v0, "4817|13211|1060"

    invoke-virtual {p0, p1, v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->setAndroidConnection(ZLjava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "1060"

    invoke-virtual {p0, p1, v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->setAndroidConnection(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setiPhoneConnection(Z)V
    .locals 2

    .line 353
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result p0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setiPhoneConnection checkReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->setiPhoneConnection(Z)V

    return-void
.end method

.method public starCallPage()V
    .locals 3

    .line 224
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starCallPage checkReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "starCallPage"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "com.baidu.carlifevehicle"

    .line 229
    sget-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 230
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->enterpage(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startPage(I)V
    .locals 3

    .line 255
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->checkReady()Z

    move-result v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startPage checkReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " startPage:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string p1, "music"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string p1, "map"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :pswitch_3
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    move-result-object p0

    const-string p1, "home"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->launchCarlifeApp(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startVR()V
    .locals 1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " startVR()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->startCarlifeVR()V

    return-void
.end method

.method public uninit()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    .line 112
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->bluetoothMusicObservor:Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;

    invoke-static {v0}, Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothMusicCallBackImp$BluetoothMusicObservor;)V

    .line 113
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->onStatusChangedListener:Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->unregisterStatusChangedListener(Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;)V

    return-void
.end method
