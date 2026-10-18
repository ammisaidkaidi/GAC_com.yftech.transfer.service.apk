.class public Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;
.super Lcom/carlife/client/ICarLifeServerInterface$Stub;
.source "CarLifeServerInterfaceStub.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/carlife/client/ICarLifeServerInterface$Stub;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public back_hardkey_event()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->back_hardkey_event()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bluetoothcall_event(Z)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetoothcall_event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->bluetoothcall_event(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public buttonbeep()V
    .locals 3

    .line 165
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio"

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_2
    return-void
.end method

.method public camera(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->camera(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getActiveUsbBusNumber()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveUsbBusNumber ProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, 0x4d080eb8    # 1.42666624E8f

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "CBIHU12"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "/dev/bus/usb/001"

    return-object p0
.end method

.method public getCUID()Ljava/lang/String;
    .locals 2

    .line 336
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "getCUID:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 341
    :cond_0
    invoke-static {v0}, Lcom/baidu/android/common/util/CommonParam;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCarSpeed()I
    .locals 2

    .line 376
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getCarlifeInfVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "6.0"

    return-object p0
.end method

.method public getChannelNumber()Ljava/lang/String;
    .locals 2

    .line 220
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 221
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

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "20492157"

    return-object p0

    :pswitch_1
    const-string p0, "20492154"

    return-object p0

    :pswitch_2
    const-string p0, "20492152"

    return-object p0

    .line 225
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->isA8E()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "20492156"

    return-object p0

    :cond_1
    const-string p0, "20492153"

    return-object p0

    :pswitch_4
    const-string p0, "20492149"

    return-object p0

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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEAPReadStrategy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFullScreenOption()I
    .locals 0

    const/16 p0, 0x1706

    return p0
.end method

.method public getGPSData()Ljava/lang/String;
    .locals 2

    .line 366
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->isInit()Z

    move-result v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "getGPSData isInit:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 371
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->getGps2CarLife()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMusicStreamType()I
    .locals 2

    .line 264
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMusicStreamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getNaviTTSStreamType()I
    .locals 2

    .line 286
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVRVoiceStreamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getReturnLastPageWhenVRDoubleClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVRVoiceStreamType()I
    .locals 2

    .line 275
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVRVoiceStreamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getWritableDirectory()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public home_hardkey_event()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->home_hardkey_event()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isA8E()Z
    .locals 2

    const-string p0, "ro.build.display.id"

    const-string v0, ""

    .line 242
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA8E displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "A8E"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExitActivityWhenGotoDesktop()Z
    .locals 3

    .line 399
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xbfc2db6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CB_IHU12_C1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isWGS84Crood()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public play_pause_hardkey_event()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->play_pause_hardkey_event()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/carlife/client/ICarLifeServerCallbackInterface;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    return-void
.end method

.method public resetusb(Ljava/lang/String;)V
    .locals 3

    .line 178
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->isInit()Z

    move-result v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resetusb isInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "resetusb:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 184
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->resetUsb()V

    return-void
.end method

.method public setbuttonBeep(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->setbuttonBeep(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sleepStatus(Z)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleepStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->sleepStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sleepStatus error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportAndroid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportBgConnect()Z
    .locals 3

    .line 207
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x75ffad83

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CA1105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public supportButtonBeep()Z
    .locals 2

    .line 249
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "sound_effects_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public supportFocusUI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportGPS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportIPhone()Z
    .locals 3

    const-string p0, "supportIPhone"

    .line 190
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x75ffad83

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CA1105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public supportTBT()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportVelocity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportWIFI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportWakeup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public switched_devicemode(Z)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switched_devicemode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->switched_devicemode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switched_devicemode error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    return-void
.end method

.method public vr_hardkey_event()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->callBack:Lcom/carlife/client/ICarLifeServerCallbackInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeServerCallbackInterface;->vr_hardkey_event()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
