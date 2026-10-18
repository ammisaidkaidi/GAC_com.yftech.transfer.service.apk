.class public Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;
.super Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;
.source "VehicleBasicInfoAdapterImpl.java"


# static fields
.field private static final SN_KEY_STR:Ljava/lang/String; = "ro.serialno"

.field private static final SN_KEY_STR_TEST:Ljava/lang/String; = "persist.vehicle.sn.test"

.field private static final TEST:Z = false

.field private static final TEST_SN:Ljava/lang/String; = "QYTOTCARNO1906001201"

.field private static final TEST_VIN:Ljava/lang/String; = "DFLZMSX5G81800015"

.field private static final VIN_KEY_STR:Ljava/lang/String; = "persist.vehicle.vin"

.field private static final VIN_KEY_STR_TEST:Ljava/lang/String; = "persist.vehicle.vin.test"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurGear:I

.field private mCurSpeed:F

.field private mLockObj:Ljava/lang/Object;

.field private mOnVehicleBasicInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnVehicleSpeedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mContext:Landroid/content/Context;

    const p1, 0x41855556

    .line 35
    iput p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mCurSpeed:F

    return-void
.end method

.method private notifyDayNightModeChanged(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    .line 181
    invoke-interface {v1, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;->onDayNightModeChanged(I)V

    goto :goto_0

    .line 183
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifyGearChanged(I)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    .line 195
    invoke-interface {v1, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;->onGearChanged(I)V

    goto :goto_0

    .line 197
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifySpeedChanged(F)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

    .line 209
    new-instance v2, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;

    sget-object v3, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-direct {v2, p1, v3}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;-><init>(FLcom/tencent/tai/pal/SDKConstants$SpeedUnit;)V

    invoke-interface {v1, v2}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;->onSpeedChanged(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V

    goto :goto_0

    .line 211
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 0

    const-string p0, "h2Dq3yklYoU1C+5phbTre2FGxplWezCr4lfdbbgYUiwsE9sI/NL1RUnUFIG9PH8nT2sFmI1/Tg2DQj4f9+igRfmil978cBJYjgdlw4Szhj0="

    return-object p0
.end method

.method public getDayNightMode()I
    .locals 0

    const-string p0, "call getDayNightMode,return  value: 1"

    .line 99
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mContext:Landroid/content/Context;

    const-string v0, "ro.serialno"

    invoke-static {p0, v0}, Lcom/yftech/transfer/service/utils/SystemProperty;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "00000000000000000000"

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getDeviceId ,return value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isTest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-object p0
.end method

.method public getGear()I
    .locals 0

    const-string p0, "call getGear,return  value: 4"

    .line 123
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0
.end method

.method public getSeatBeltBuckled(I)Z
    .locals 0

    const-string p0, "call getSeatBeltBuckled,return  value: true"

    .line 149
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getSpeed()Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;
    .locals 2

    .line 87
    new-instance v0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;

    iget p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mCurSpeed:F

    sget-object v1, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;-><init>(FLcom/tencent/tai/pal/SDKConstants$SpeedUnit;)V

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mContext:Landroid/content/Context;

    const-string v0, "persist.vehicle.vin"

    invoke-static {p0, v0}, Lcom/yftech/transfer/service/utils/SystemProperty;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0000000000000000"

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getVehicleId ,return value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cisTest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-object p0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onVehicleGearsChange(I)V
    .locals 1

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "system value output :::: notifyGearChanged gear = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->notifyGearChanged(I)V

    return-void
.end method

.method public onVehicleSpeedChange(I)V
    .locals 0

    const p1, 0x41855556

    .line 81
    iput p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mCurSpeed:F

    .line 82
    iget p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mCurSpeed:F

    invoke-direct {p0, p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->notifySpeedChanged(F)V

    return-void
.end method

.method public registerOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleSpeedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleBasicInfoAdapterImpl;->mOnVehicleBasicInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
