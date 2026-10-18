.class public Lcom/yftech/transfer/phonelink/manager/CarControlManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "CarControlManager.java"


# static fields
.field private static final KEY_KEEP_MUTE_WARNING_ENABLE:Ljava/lang/String; = "Keep_Mute_Warning_Enable"

.field public static final VALUE_KEEP_MUTE_WARNING_NO_CHANGED:I = 0x0

.field public static final VALUE_KEEP_MUTE_WARNING_SILENT:I = 0x1

.field public static final ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;


# instance fields
.field private carAudioListenerImp:Lcom/yftech/transfer/callback/CarAudioListenerImp;

.field private carDataCallBackImp:Lcom/yftech/transfer/callback/CarDataCallBackImp;

.field private carInfoListenerImp:Lcom/yftech/transfer/callback/CarInfoListenerImp;

.field private carInputListenerImp:Lcom/yftech/transfer/callback/CarInputListenerImp;

.field private carLightListenerImp:Lcom/yftech/transfer/callback/CarLightListenerImp;

.field private carMiscListenerImp:Lcom/yftech/transfer/callback/CarMiscListenerImp;

.field private carPowerListenerImp:Lcom/yftech/transfer/callback/CarPowerListenerImp;

.field private carScreenListenerImp:Lcom/yftech/transfer/callback/CarScreenListenerImp;

.field private carSwcCallBackImp:Lcom/yftech/transfer/callback/CarSwcCallBackImp;

.field private carTBoxListenerImp:Lcom/yftech/transfer/callback/CarTBoxListenerImp;

.field private carTireListenerImp:Lcom/yftech/transfer/callback/CarTireListenerImp;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    .line 43
    new-instance v0, Lcom/yftech/transfer/callback/CarInputListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarInputListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInputListenerImp:Lcom/yftech/transfer/callback/CarInputListenerImp;

    .line 44
    new-instance v0, Lcom/yftech/transfer/callback/CarPowerListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarPowerListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carPowerListenerImp:Lcom/yftech/transfer/callback/CarPowerListenerImp;

    .line 45
    new-instance v0, Lcom/yftech/transfer/callback/CarAudioListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarAudioListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carAudioListenerImp:Lcom/yftech/transfer/callback/CarAudioListenerImp;

    .line 46
    new-instance v0, Lcom/yftech/transfer/callback/CarMiscListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarMiscListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carMiscListenerImp:Lcom/yftech/transfer/callback/CarMiscListenerImp;

    .line 47
    new-instance v0, Lcom/yftech/transfer/callback/CarInfoListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarInfoListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInfoListenerImp:Lcom/yftech/transfer/callback/CarInfoListenerImp;

    .line 48
    new-instance v0, Lcom/yftech/transfer/callback/CarScreenListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarScreenListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carScreenListenerImp:Lcom/yftech/transfer/callback/CarScreenListenerImp;

    .line 49
    new-instance v0, Lcom/yftech/transfer/callback/CarLightListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarLightListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carLightListenerImp:Lcom/yftech/transfer/callback/CarLightListenerImp;

    .line 50
    new-instance v0, Lcom/yftech/transfer/callback/CarDataCallBackImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarDataCallBackImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carDataCallBackImp:Lcom/yftech/transfer/callback/CarDataCallBackImp;

    .line 51
    new-instance v0, Lcom/yftech/transfer/callback/CarSwcCallBackImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarSwcCallBackImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carSwcCallBackImp:Lcom/yftech/transfer/callback/CarSwcCallBackImp;

    .line 52
    new-instance v0, Lcom/yftech/transfer/callback/CarTireListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarTireListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTireListenerImp:Lcom/yftech/transfer/callback/CarTireListenerImp;

    .line 53
    new-instance v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;

    invoke-direct {v0}, Lcom/yftech/transfer/callback/CarTBoxListenerImp;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTBoxListenerImp:Lcom/yftech/transfer/callback/CarTBoxListenerImp;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public closeScreenBrightnessTransient()V
    .locals 1

    .line 290
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/screen/CarScreenManager;->closeScreenBrightness(I)Z

    return-void
.end method

.method public getAudioSourceListener()Ljava/lang/String;
    .locals 2

    .line 153
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ","

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 157
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 158
    aget-object p0, p0, v0

    const-string v0, "null"

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public getAudioSourcePackage()Ljava/lang/String;
    .locals 2

    .line 128
    :try_start_0
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ","

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 132
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 133
    aget-object p0, p0, v0

    const-string v0, "null"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public getCarInfoDayNightMode()Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
    .locals 2

    .line 197
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getDayNightMode()Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    move-result-object p0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarInfoDayNightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 0

    .line 338
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p0

    return-object p0
.end method

.method public getKEY_KEEP_MUTE_WARNING_ENABLE()I
    .locals 3

    .line 67
    new-instance p0, Lcom/yftech/car/data/CarData;

    new-instance v0, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v1, "Keep_Mute_Warning_Enable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    invoke-static {p0}, Lcom/yftech/car/data/CarDataManager;->get(Lcom/yftech/car/data/CarData;)Lcom/yftech/car/data/CarData;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 70
    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueInt()I

    move-result p0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_KEEP_MUTE_WARNING_ENABLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0

    :cond_0
    return v2
.end method

.method public getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;
    .locals 2

    .line 168
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPowerMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 2

    .line 174
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPowerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getRearGearState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
    .locals 2

    .line 327
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getRearGearState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    move-result-object p0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rearGearState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getScreenDayNightMode()I
    .locals 2

    .line 191
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/screen/CarScreenManager;->getDayNightMode()I

    move-result p0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDayNightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getSwcAngle()F
    .locals 2

    .line 268
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSwcManager;->get()Lcom/yftech/vehicle/sdk/CarSwcManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSwcAngle()F

    move-result p0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSwcAngle swcAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getSwcAngleVdEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 2

    .line 274
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSwcManager;->get()Lcom/yftech/vehicle/sdk/CarSwcManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSwcAngleVdEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSwcAngleVdEnableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getVehicleSpeed()I
    .locals 2

    .line 349
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVehicleSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getWheelSpeedFL()F
    .locals 2

    .line 212
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getWheelSpeedFL()F

    move-result p0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWheelSpeedFL result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getWheelSpeedFR()F
    .locals 2

    .line 227
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getWheelSpeedFR()F

    move-result p0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWheelSpeedFR result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getWheelSpeedRL()F
    .locals 2

    .line 242
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getWheelSpeedRL()F

    move-result p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWheelSpeedRL result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public getWheelSpeedRR()F
    .locals 2

    .line 257
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getWheelSpeedRR()F

    move-result p0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWheelSpeedRR result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public init()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInputListenerImp:Lcom/yftech/transfer/callback/CarInputListenerImp;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/input/CarInputManager;->registerCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;Landroid/os/Handler;)V

    .line 87
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carPowerListenerImp:Lcom/yftech/transfer/callback/CarPowerListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 88
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carAudioListenerImp:Lcom/yftech/transfer/callback/CarAudioListenerImp;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 89
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carMiscListenerImp:Lcom/yftech/transfer/callback/CarMiscListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->registerListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V

    .line 90
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInfoListenerImp:Lcom/yftech/transfer/callback/CarInfoListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 91
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carScreenListenerImp:Lcom/yftech/transfer/callback/CarScreenListenerImp;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/screen/CarScreenManager;->registerCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;Landroid/os/Handler;)V

    .line 92
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carLightListenerImp:Lcom/yftech/transfer/callback/CarLightListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarLightManager;->registerListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    .line 93
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carDataCallBackImp:Lcom/yftech/transfer/callback/CarDataCallBackImp;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/yftech/car/data/CarDataManager;->registerCarDataCallback(Lcom/yftech/car/data/CarDataManager$CarDataCallback;Landroid/os/Handler;)V

    .line 94
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSwcManager;->get()Lcom/yftech/vehicle/sdk/CarSwcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carSwcCallBackImp:Lcom/yftech/transfer/callback/CarSwcCallBackImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->registerListener(Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;)V

    .line 95
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTireListenerImp:Lcom/yftech/transfer/callback/CarTireListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarTireManager;->registerListener(Lcom/yftech/vehicle/sdk/CarTireManager$CarTireListener;)V

    .line 96
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTBoxListenerImp:Lcom/yftech/transfer/callback/CarTBoxListenerImp;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->registerListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    return-void
.end method

.method public isCarlifePresent()Z
    .locals 2

    .line 382
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarlifePresent()Z

    move-result p0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarlifePresent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isCarplayPresent()Z
    .locals 2

    .line 371
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarplayPresent()Z

    move-result p0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarplayPresent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isEngineBoxOn()Z
    .locals 3

    .line 299
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEngineBoxOn curProductDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 301
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

    .line 303
    :cond_2
    new-instance p0, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v0, "com.android.systemui.EnginehoodWarningOpen"

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;Z)V

    .line 304
    new-instance v0, Lcom/yftech/car/data/CarData;

    invoke-direct {v0, p0}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    .line 305
    invoke-static {v0}, Lcom/yftech/car/data/CarDataManager;->get(Lcom/yftech/car/data/CarData;)Lcom/yftech/car/data/CarData;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "com.android.systemui.EnginehoodWarningOpen"

    .line 307
    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueBoolean()Z

    move-result p0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEngineBoxOn valueBoolean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0

    :cond_3
    const-string p0, "getEngineBoxOn obj is null return false"

    .line 314
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return v1
.end method

.method public isHicarPresent()Z
    .locals 2

    .line 393
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isHicarPresent()Z

    move-result p0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHicarPresent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return p0
.end method

.method public isPowerStateShouldAblePhoneLink()Z
    .locals 2

    .line 185
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPowerStateShouldAblePhoneLink powerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isUpgrading()Z
    .locals 2

    .line 431
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getCurUpgradingInfo()Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object p0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUpgrading curUpgradingInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method public isUsbAttach()Z
    .locals 4

    .line 404
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsbAttach curProductDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xbfc2db6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0xc0ab996

    if-eq v0, v1, :cond_2

    const v1, 0x4d080eb8    # 1.42666624E8f

    if-eq v0, v1, :cond_1

    const v1, 0x798d1bf7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CB_IHU23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "CBIHU12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "CB_IHU23_C1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_1

    :cond_3
    const-string v0, "CB_IHU12_C1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 410
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsbAttach PRODUCT_CB_IHU12_C1 usbExists:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    return v2

    .line 415
    :cond_5
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    .line 416
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsbAttach usbExists0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",usbExists1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_6

    return v2

    :cond_6
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mute(IZ)V
    .locals 1

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mute:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/audio/CarAudioManager;->onlyMuteOneStream(IZI)Z

    return-void
.end method

.method public openScreenBrightnessTransient()V
    .locals 1

    .line 283
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/screen/CarScreenManager;->openScreenBrightness(I)Z

    return-void
.end method

.method public shouldEnablePhoneLink()Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldEnablePhoneLink powerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public uninit()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInputListenerImp:Lcom/yftech/transfer/callback/CarInputListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/input/CarInputManager;->unregisterCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;)V

    .line 102
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carPowerListenerImp:Lcom/yftech/transfer/callback/CarPowerListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 103
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carAudioListenerImp:Lcom/yftech/transfer/callback/CarAudioListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 104
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carMiscListenerImp:Lcom/yftech/transfer/callback/CarMiscListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V

    .line 105
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carInfoListenerImp:Lcom/yftech/transfer/callback/CarInfoListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 106
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carScreenListenerImp:Lcom/yftech/transfer/callback/CarScreenListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->unregisterCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;)V

    .line 107
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carLightListenerImp:Lcom/yftech/transfer/callback/CarLightListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarLightManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    .line 108
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carDataCallBackImp:Lcom/yftech/transfer/callback/CarDataCallBackImp;

    invoke-static {v0}, Lcom/yftech/car/data/CarDataManager;->unregisterCarDataCallback(Lcom/yftech/car/data/CarDataManager$CarDataCallback;)V

    .line 109
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSwcManager;->get()Lcom/yftech/vehicle/sdk/CarSwcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carSwcCallBackImp:Lcom/yftech/transfer/callback/CarSwcCallBackImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;)V

    .line 110
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTireManager;->get()Lcom/yftech/vehicle/sdk/CarTireManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTireListenerImp:Lcom/yftech/transfer/callback/CarTireListenerImp;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarTireManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarTireManager$CarTireListener;)V

    .line 111
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->carTBoxListenerImp:Lcom/yftech/transfer/callback/CarTBoxListenerImp;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    return-void
.end method
