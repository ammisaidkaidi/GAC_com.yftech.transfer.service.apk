.class public Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;
.super Ljava/lang/Object;
.source "WeCarInfoManager.java"

# interfaces
.implements Lcom/tencent/wecarbase/carinfo/base/IWeCarManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeCarInfoManager"

.field private static volatile me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPendingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

.field private mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    .line 33
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mPendingListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static destory()V
    .locals 2

    .line 119
    sget-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    if-eqz v0, :cond_1

    .line 120
    const-class v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->dispose()V

    .line 124
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 126
    sput-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    return-void
.end method

.method private dispose()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;
    .locals 2

    .line 38
    sget-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->me:Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;

    return-object v0
.end method


# virtual methods
.method public getAccData()Lcom/tencent/wecarbase/carinfo/model/AccModel;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getAccData()Lcom/tencent/wecarbase/carinfo/model/AccModel;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryVoltageData()F
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getBatteryVoltageData()F

    move-result p0

    return p0
.end method

.method public getBrakeState()Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getBrakeState()Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;

    move-result-object p0

    return-object p0
.end method

.method public getCANBUSVersion()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getCANBUSVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCarSpeedData()F
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getCarSpeedData()F

    move-result p0

    return p0
.end method

.method public getCarType()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getCarType()I

    move-result p0

    return p0
.end method

.method public getDoorStatus()Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getDoorStatus()Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;

    move-result-object p0

    return-object p0
.end method

.method public getEnduranceMileageData()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getEnduranceMileageData()I

    move-result p0

    return p0
.end method

.method public getEngineSpeedData()F
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getEngineSpeedData()F

    move-result p0

    return p0
.end method

.method public getFuelData()Lcom/tencent/wecarbase/carinfo/model/FuelModel;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getFuelData()Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    move-result-object p0

    return-object p0
.end method

.method public getGearData()Lcom/tencent/wecarbase/carinfo/model/GearModel;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getGearData()Lcom/tencent/wecarbase/carinfo/model/GearModel;

    move-result-object p0

    return-object p0
.end method

.method public getLampStatus()Lcom/tencent/wecarbase/carinfo/model/LampModel;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getLampStatus()Lcom/tencent/wecarbase/carinfo/model/LampModel;

    move-result-object p0

    return-object p0
.end method

.method public getLeanWaterData()Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getLeanWaterData()Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;

    move-result-object p0

    return-object p0
.end method

.method public getOutsideTemperatureData()Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getOutsideTemperatureData()Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;

    move-result-object p0

    return-object p0
.end method

.method public getSeatBeltState()Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getSeatBeltState()Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;

    move-result-object p0

    return-object p0
.end method

.method public getTotalMileageData()J
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->getTotalMileageData()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeCarInfoImpl()Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-direct {v0, p1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    :cond_0
    return-void
.end method

.method public isShowCarInfo()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->isShowCarInfo()Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    .line 79
    sget-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "WeCarInfoIF is null, add listener to pending list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mPendingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mPendingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 87
    iget-object v2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {v2, v1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mPendingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    :cond_4
    return-void
.end method

.method public sendString2Dashboard(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->sendString2Dashboard(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCarType(I)I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setCarType(I)I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayA2DP()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayA2DP()I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayAUX()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayAUX()I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayAudioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$AudioModel;)I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayAudioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$AudioModel;)I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayHFPData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$HFPModel;)I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayHFPData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$HFPModel;)I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayMediaStop()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayMediaStop()I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayRadioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$RadioModel;)I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayRadioData(Lcom/tencent/wecarbase/carinfo/model/DashboardModel$RadioModel;)I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayTimeFormatSync()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayTimeFormatSync()I

    move-result p0

    return p0
.end method

.method public setDashboardDisplayVolume(I)I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->setDashboardDisplayVolume(I)I

    move-result p0

    return p0
.end method

.method public setWeCarInfoImpl(Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    .line 70
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->detach()V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mWeCarInfoIF:Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoInterface;->unregisterListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoManager;->mSimulator:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->unregisterListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V

    :cond_1
    return-void
.end method
