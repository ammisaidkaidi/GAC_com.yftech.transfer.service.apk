.class public Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;
.super Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
.source "HiCarLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;,
        Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

.field private callBack:Lcom/yftech/hicar/sdk/IStateChange;

.field private curPhoneName:Ljava/lang/String;

.field private defalutBindCallBack:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;-><init>()V

    .line 41
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;-><init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->defalutBindCallBack:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;

    .line 54
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;-><init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->callBack:Lcom/yftech/hicar/sdk/IStateChange;

    .line 478
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$3;-><init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->curPhoneName:Ljava/lang/String;

    return-object p1
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)Z
    .locals 1

    .line 472
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V
    .locals 1

    .line 464
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;)V
    .locals 1

    .line 468
    sget-object v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public acceptPhone()V
    .locals 2

    .line 268
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->callSwitch(Z)Z

    move-result p0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptPhone result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public closeVR()V
    .locals 2

    .line 252
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->voiceSwitch(Z)Z

    move-result p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeVR result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public connectByUsb()V
    .locals 4

    const-string v0, "connectByUsb"

    .line 157
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->enable(Z)V

    .line 159
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/yftech/transfer/service/utils/AppUtil;->startHiCarUsbConnect(Landroid/content/Context;)V

    .line 161
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->storeHiCarWhenHuaWei()V

    .line 162
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xbfc2db6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v0, 0x4d080eb8    # 1.42666624E8f

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CBIHU12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 167
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public connectByWireless()V
    .locals 4

    const-string v0, "connectByWireless"

    .line 176
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->enable(Z)V

    .line 180
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->storeHiCarWhenHuaWei()V

    .line 181
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xbfc2db6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v0, 0x4d080eb8    # 1.42666624E8f

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CBIHU12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 186
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->requestReConnect(Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect()V
    .locals 6

    .line 196
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isBlueToothConnected()Z

    move-result v2

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect powerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect powerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect blueToothConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 202
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 203
    :goto_0
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v5

    .line 207
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect isUserManual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->disConnectDevice(Z)Z

    move-result v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xbfc2db6

    if-eq v2, v3, :cond_5

    const v3, 0x4d080eb8    # 1.42666624E8f

    if-eq v2, v3, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "CBIHU12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v4

    goto :goto_4

    :cond_5
    const-string v2, "CB_IHU12_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v5

    :cond_6
    :goto_4
    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 214
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->enable(Z)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public enable(Z)V
    .locals 3

    .line 222
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 223
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

    .line 227
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isHicarPresent()Z

    move-result p0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable isHicarPresent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_2

    .line 231
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->enableUSB(Z)Z

    move-result p0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable isEnable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->enableUSB(Z)Z

    move-result p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 1

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forgetCarLinkDevice:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->deleteDevice(Ljava/lang/String;)Z

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
    .locals 4

    .line 286
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 288
    :cond_0
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->callState()I

    move-result v0

    .line 289
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :goto_0
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCarLinkDeviceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 338
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;

    .line 339
    new-instance v2, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v2}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    const-string v3, "hicar"

    .line 340
    invoke-virtual {v2, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setPhoneType(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->getPhoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedStatus(I)V

    .line 344
    invoke-virtual {v1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->getPhoneBrMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->getConnectType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x1

    .line 347
    invoke-virtual {v2, v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedType(I)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    .line 350
    invoke-virtual {v2, v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedType(I)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    .line 353
    invoke-virtual {v2, v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setConnectedType(I)V

    .line 356
    :goto_1
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarLinkDeviceList device:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConnectedCarLinkDeviceList()Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->curPhoneName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->curPhoneName:Ljava/lang/String;

    return-object p0
.end method

.method public getVRStatus()I
    .locals 2

    .line 258
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->isVoiceWakeUp()Z

    move-result p0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVRStatus,isVoiceWakeUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 3

    const-string v0, "init()"

    .line 148
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v0

    sget-object v1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->defalutBindCallBack:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->bindService(Landroid/content/Context;Lcom/yftech/hicar/sdk/IBindCallBack;)V

    .line 150
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->callBack:Lcom/yftech/hicar/sdk/IStateChange;

    invoke-virtual {v0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->registerChangeListener(Lcom/yftech/hicar/sdk/IStateChange;)V

    .line 151
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->registerObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 132
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->connectState()Lcom/yftech/hicar/sdk/ConnectStateEntity;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected connectStateEntity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/ConnectStateEntity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hicar"

    .line 137
    invoke-static {v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeHuaWeiPhoneLinkPicked(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/ConnectStateEntity;->isConnected()Z

    move-result p0

    return p0
.end method

.method public linkName()Ljava/lang/String;
    .locals 0

    const-string p0, "hicar"

    return-object p0
.end method

.method public mute(Z)V
    .locals 1

    .line 310
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mute(IZ)V

    return-void
.end method

.method public next()V
    .locals 0

    const-string p0, "next"

    .line 401
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->nextMedia()Z

    return-void
.end method

.method public pause()V
    .locals 1

    const-string p0, "pause"

    .line 413
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mediaSwitch(Z)Z

    return-void
.end method

.method public play()V
    .locals 1

    const-string p0, "play"

    .line 407
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mediaSwitch(Z)Z

    return-void
.end method

.method public previous()V
    .locals 0

    const-string p0, "previous"

    .line 395
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->previousMedia()Z

    return-void
.end method

.method public rejectPhone()V
    .locals 2

    .line 274
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->callSwitch(Z)Z

    move-result p0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectPhone result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public requestNewConnect()Z
    .locals 2

    .line 431
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->requestNewConnect()Z

    move-result p0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNewConnect result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public requestReConnect(Ljava/lang/String;)Z
    .locals 2

    .line 425
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->requestReConnect(Ljava/lang/String;)Z

    move-result p0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestReConnect address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public starCallPage()V
    .locals 2

    .line 280
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const-string v0, "TEL"

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    move-result p0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starCallPage result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public startPage(I)V
    .locals 1

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const-string p1, "TEL"

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const-string p1, "MEDIA"

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const-string p1, "NAVIGATION"

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    goto :goto_0

    .line 321
    :pswitch_3
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const-string p1, "HOME"

    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startVR()V
    .locals 2

    .line 245
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->voiceSwitch(Z)Z

    move-result p0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVR result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public supportWireless()Z
    .locals 1

    .line 419
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->supportWireless()Z

    move-result p0

    const-string v0, "supportWireless"

    .line 420
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public uninit()V
    .locals 2

    .line 388
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->callBack:Lcom/yftech/hicar/sdk/IStateChange;

    invoke-virtual {v0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->unregisterChangeListener(Lcom/yftech/hicar/sdk/IStateChange;)V

    .line 389
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->bluetoothSettingsObservor:Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp;->unregisterObservor(Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;)V

    return-void
.end method
