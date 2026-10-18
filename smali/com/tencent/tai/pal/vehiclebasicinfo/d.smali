.class public Lcom/tencent/tai/pal/vehiclebasicinfo/d;
.super Lcom/tencent/tai/pal/vehiclebasicinfo/b$a;
.source "VehicleBasicInfoService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/vehiclebasicinfo/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/vehiclebasicinfo/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

.field private f:Z

.field private g:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b$a;-><init>()V

    .line 21
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    .line 22
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    .line 25
    new-instance v1, Lcom/tencent/tai/pal/vehiclebasicinfo/d$1;

    invoke-direct {v1, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/d$1;-><init>(Lcom/tencent/tai/pal/vehiclebasicinfo/d;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

    .line 31
    iput-boolean v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    .line 32
    new-instance v0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;-><init>(Lcom/tencent/tai/pal/vehiclebasicinfo/d;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->g:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    return-void
.end method

.method private a(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 316
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->a(Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 321
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private a(IZ)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:notifySeatBeltBuckledChanged whichSeat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " buckled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 264
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    invoke-interface {v3, p1, p2}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->a(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 266
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private a(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->getSpeedInMetersPerSecond()F

    move-result v0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const-string v3, "PAL_SDK"

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VehicleBasicInfoService:notifySpeedChanged speedInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " speed:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " count:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 282
    :try_start_1
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/tencent/tai/pal/vehiclebasicinfo/a;

    invoke-interface {p1, v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/a;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v3, "PAL_SDK"

    const-string v4, "exception caught"

    .line 284
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d(I)V

    return-void
.end method

.method private c(I)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:notifyDayOrNightModeChanged dayNightMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 232
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 234
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 6

    const-string v0, "PAL_SDK"

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:notifyGearChanged changedGear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 248
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 250
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private e(I)V
    .locals 5

    const-string v0, "PAL_SDK"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:onPowerEventChange event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 299
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/tencent/tai/pal/vehiclebasicinfo/c;

    invoke-interface {v2, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/c;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "PAL_SDK"

    const-string v4, "exception caught"

    .line 301
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 305
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(II)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "VehicleBasicInfoService:getDeviceId adapter null"

    .line 86
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getDeviceId adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->toGearString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 4

    .line 202
    instance-of v0, p1, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-eqz v0, :cond_2

    .line 203
    check-cast p1, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    .line 204
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 207
    iput-boolean v2, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    .line 208
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object v3, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->g:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    invoke-virtual {v0, v3}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->registerOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V

    goto :goto_0

    .line 210
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    .line 212
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 214
    :try_start_1
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 216
    iput-boolean v2, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    .line 217
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->registerOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V

    goto :goto_1

    .line 219
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    .line 221
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 212
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/tencent/tai/pal/vehiclebasicinfo/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:registerSpeedListener listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 148
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 149
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->registerOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    .line 153
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

.method public a(Lcom/tencent/tai/pal/vehiclebasicinfo/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:registerCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 62
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 63
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->g:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->registerOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    .line 67
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

.method public b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "VehicleBasicInfoService:getVehicleId adapter null"

    .line 97
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getVehicleId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getVehicleId adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public b(Lcom/tencent/tai/pal/vehiclebasicinfo/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:unregisterSpeedListener listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 161
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->unregisterOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->d:Z

    .line 166
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

.method public b(Lcom/tencent/tai/pal/vehiclebasicinfo/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAL_SDK"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:unregisterCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 75
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->g:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->unregisterOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->f:Z

    .line 80
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

.method public b(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getSeatBeltBuckled(I)Z

    move-result p0

    const-string p1, "PAL_SDK"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleBasicInfoService:getSeatBeltBuckled adapter result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public d()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public e()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "VehicleBasicInfoService:getSpeed adapter null"

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getSpeed()Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->getSpeedInMetersPerSecond()F

    move-result v1

    :goto_0
    const-string v0, "PAL_SDK"

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VehicleBasicInfoService:getSpeed adapter speedInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " speed:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public f()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getDayNightMode()I

    move-result p0

    const-string v0, "PAL_SDK"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getDayNightMode adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public g()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getGear()I

    move-result p0

    const-string v0, "PAL_SDK"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getGear adapter result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getPermanentPartitionPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getPermanentPartitionPath return path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getChannel()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getChannel return channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;->getVehicleModel()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoService:getVehicleModel return vehicleModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
