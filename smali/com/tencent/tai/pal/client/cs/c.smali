.class public final Lcom/tencent/tai/pal/client/cs/c;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/a;
.implements Lcom/tencent/tai/pal/client/cs/b$a;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/tencent/tai/pal/client/cs/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/tencent/tai/pal/client/cs/b;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/tencent/tai/pal/client/cs/a/f;

.field private volatile f:Lcom/tencent/tai/pal/PlatformSupportInfo;

.field private volatile g:Landroid/content/Context;

.field private volatile h:Lcom/tencent/tai/pal/b;

.field private i:Ljava/util/Timer;

.field private volatile j:Z

.field private volatile k:I

.field private l:I

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Lcom/tencent/tai/pal/client/cs/b;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/cs/b;-><init>(Lcom/tencent/tai/pal/client/cs/b$a;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->c:Lcom/tencent/tai/pal/client/cs/b;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->d:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/tencent/tai/pal/client/cs/a/f;

    invoke-direct {v0}, Lcom/tencent/tai/pal/client/cs/a/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->e:Lcom/tencent/tai/pal/client/cs/a/f;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 46
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->h:Lcom/tencent/tai/pal/b;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/tencent/tai/pal/client/cs/c;->j:Z

    .line 50
    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->k:I

    .line 51
    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    .line 52
    new-instance v0, Lcom/tencent/tai/pal/client/cs/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/cs/c$1;-><init>(Lcom/tencent/tai/pal/client/cs/c;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->m:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/tencent/tai/pal/client/cs/ServiceManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/cs/ServiceManager$2;-><init>(Lcom/tencent/tai/pal/client/cs/c;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;)I
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->e()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/tencent/tai/pal/client/cs/c;->k:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c;->h:Lcom/tencent/tai/pal/b;

    if-eqz v1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->h:Lcom/tencent/tai/pal/b;

    invoke-interface {p0, p1, p2}, Lcom/tencent/tai/pal/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ServiceManager not connected! binder is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ServiceManager not connected! binder is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/PlatformSupportInfo;)Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/b;)Lcom/tencent/tai/pal/b;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c;->h:Lcom/tencent/tai/pal/b;

    return-object p1
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/c;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->m:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/util/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 3

    .line 410
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 411
    invoke-virtual {p0}, Lcom/tencent/tai/pal/VersionInfo;->getMajorVersion()I

    move-result p0

    if-nez p0, :cond_8

    .line 412
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_notifyStreamMuteStateChanged_supported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_notifyStreamVolumeChanged_supported:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported:Z

    .line 416
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_notifyDeviceConnectionStateChange_supported:Z

    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported:Z

    .line 419
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_dispatchKeyEvent_supported:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_dispatchKeyLongPressEvent_supported:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported:Z

    .line 423
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_notifyAccelerometerInfoChanged_supported:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_notifyGyroscopeInfoChanged_supported:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_notifySpeedChanged_supported:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported:Z

    .line 428
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_notifyPowerLevelLow_supported:Z

    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported:Z

    .line 431
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_notifyDayNightModeChanged_supported:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_notifyGearChanged_supported:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_notifySeatBeltBuckledChanged_supported:Z

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    or-int/2addr p0, v1

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported:Z

    .line 436
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_notifySpeedChanged_supported:Z

    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported:Z

    .line 439
    iget-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported:Z

    iget-boolean v0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_notifyDrivingSafetyDisclaimerUpdated_supported:Z

    or-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported:Z

    .line 442
    iput-boolean v2, p1, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getChannel_supported:Z

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/client/cs/c;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/c;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;ZLcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/client/cs/c;->a(ZLcom/tencent/tai/pal/PlatformSupportInfo;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/cs/a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 314
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/tai/pal/client/cs/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/tai/pal/client/cs/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tencent/tai/pal/client/cs/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 312
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tai/pal/client/cs/a;->a(ZLandroid/os/IBinder;Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PAL_SDK"

    const-string v3, "exception caught"

    .line 317
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 321
    invoke-virtual {v1, v2, v3, v3}, Lcom/tencent/tai/pal/client/cs/a;->a(ZLandroid/os/IBinder;Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(ZLcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    if-eqz v1, :cond_0

    .line 290
    new-instance v2, Lcom/tencent/tai/pal/client/cs/c$4;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/tencent/tai/pal/client/cs/c$4;-><init>(Lcom/tencent/tai/pal/client/cs/c;ZLcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    invoke-static {v2}, Lcom/tencent/tai/pal/util/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/c;Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "PAL_SDK"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PALServiceManager.doVersionMatch server version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local client version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tai/pal/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 333
    invoke-static {p1}, Lcom/tencent/tai/pal/VersionInfo;->fromJsonString(Ljava/lang/String;)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/tencent/tai/pal/VersionInfo;->setRemoteVersion(Lcom/tencent/tai/pal/VersionInfo;)V

    if-eqz p1, :cond_5

    .line 336
    invoke-virtual {p1}, Lcom/tencent/tai/pal/VersionInfo;->getMajorVersion()I

    move-result p1

    .line 337
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tai/pal/VersionInfo;->getMajorVersion()I

    move-result v0

    .line 338
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/tai/pal/VersionInfo;->getPalAdapterVersion(Landroid/content/Context;)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "PAL_SDK"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pal adapter version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/tencent/tai/pal/VersionInfo;->getMajorVersion()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/tencent/tai/pal/VersionInfo;->getFeatureVersion()I

    move-result p0

    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcom/tencent/tai/pal/VersionInfo;->getFeatureVersion()I

    move-result v2

    if-ne p0, v2, :cond_0

    const-string p0, "PAL_SDK"

    const-string v2, "pal adapter version ==  local version"

    .line 346
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "pal adapter version != local version"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    if-ge p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    return p0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return p0

    :cond_5
    return v1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "STATUS_UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STATUS_CONNECTED"

    return-object p0

    :pswitch_1
    const-string p0, "STATUS_CONNECTING"

    return-object p0

    :pswitch_2
    const-string p0, "STATUS_DISCONNECTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/c;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->f()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/c;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/c;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/tai/pal/client/cs/c;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private c(I)V
    .locals 5

    .line 171
    iget v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :pswitch_0
    const-string v0, "\u7ed1\u5b9a\u670d\u52a1\u8fd4\u56de\u9519\u8bef\uff08\u4e00\u822c\u662f\u56e0\u4e3a\u65e0\u6cd5\u5173\u8054\u542f\u52a8\uff09"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u7ed1\u5b9a\u670d\u52a1\u5f02\u5e38\uff08\u7cfb\u7edf\u4e2d\u65e0\u6cd5\u627e\u5230\u76f8\u5173\u670d\u52a1\uff09"

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PAL\u9002\u914d\u9519\u8bef\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->k:I

    .line 189
    iget v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 190
    iput v1, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    .line 191
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/c;->d(I)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(J)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->h:Lcom/tencent/tai/pal/b;

    return-object p0
.end method

.method private d(I)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    if-eqz v1, :cond_0

    .line 276
    new-instance v2, Lcom/tencent/tai/pal/client/cs/c$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/tencent/tai/pal/client/cs/c$3;-><init>(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;I)V

    invoke-static {v2}, Lcom/tencent/tai/pal/util/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/tencent/tai/pal/client/cs/c;->k:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/client/cs/b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->c:Lcom/tencent/tai/pal/client/cs/b;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->c:Lcom/tencent/tai/pal/client/cs/b;

    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tai/pal/client/cs/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 160
    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/client/cs/c;->c(I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PAL_SDK"

    const-string v2, "exception caught"

    .line 165
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    .line 166
    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/client/cs/c;->c(I)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->k:I

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/tencent/tai/pal/client/cs/c;->l:I

    return-void
.end method

.method private h()Landroid/content/Context;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 463
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "tai_pal_core_service_start_up"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 8

    .line 472
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/Timer;

    const-string v1, "pal-keep-bound-timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->i:Ljava/util/Timer;

    .line 474
    new-instance v3, Lcom/tencent/tai/pal/client/cs/c$7;

    invoke-direct {v3, p0}, Lcom/tencent/tai/pal/client/cs/c$7;-><init>(Lcom/tencent/tai/pal/client/cs/c;)V

    .line 484
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/c;->i:Ljava/util/Timer;

    const-wide/16 v4, 0x7530

    const-wide/32 v6, 0x493e0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/cs/a;

    if-nez v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/cs/a;

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->e:Lcom/tencent/tai/pal/client/cs/a/f;

    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/tencent/tai/pal/client/cs/a/f;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/tencent/tai/pal/client/cs/a;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 225
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/tai/pal/client/cs/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tai/pal/client/cs/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tencent/tai/pal/client/cs/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 223
    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/tai/pal/client/cs/a;->a(ZLandroid/os/IBinder;Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "PAL_SDK"

    const-string v4, "exception caught"

    .line 228
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v0

    .line 213
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal argument! serviceClass=null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ServiceManager not connected!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceManager init context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/tai/pal/client/cs/c;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0, p2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    .line 147
    iget-boolean p2, p0, Lcom/tencent/tai/pal/client/cs/c;->j:Z

    if-nez p2, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c;->g:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->i()V

    .line 150
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->f()V

    .line 151
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->j()V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/tencent/tai/pal/client/cs/c;->j:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "PALServiceManager.onServiceConnected"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Lcom/tencent/tai/pal/client/cs/c$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tai/pal/client/cs/c$5;-><init>(Lcom/tencent/tai/pal/client/cs/c;Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/tencent/tai/pal/util/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 118
    new-instance v0, Lcom/tencent/tai/pal/client/cs/c$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tai/pal/client/cs/c$2;-><init>(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    invoke-static {v0}, Lcom/tencent/tai/pal/util/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/c;->e()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->f:Lcom/tencent/tai/pal/PlatformSupportInfo;

    return-object p0
.end method

.method public b(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c;->c:Lcom/tencent/tai/pal/client/cs/b;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "PALServiceManager.onServiceDisconnected"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Lcom/tencent/tai/pal/client/cs/c$6;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/cs/c$6;-><init>(Lcom/tencent/tai/pal/client/cs/c;)V

    invoke-static {v0}, Lcom/tencent/tai/pal/util/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
