.class final Lcom/tencent/tai/pal/client/cs/a/l;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "VehicleBasicInfoManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;

.field private f:Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.VEHICLE_BASIC_INFO"

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->b:Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    .line 111
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/l$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/l$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/l;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;

    .line 122
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/l$2;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/l$2;-><init>(Lcom/tencent/tai/pal/client/cs/a/l;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->f:Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteVehicleBasicInfoListener vehicleBasicInfo == null"

    .line 178
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->f:Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 184
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteVehicleBasicInfoListener vehicleBasicInfo == null"

    .line 192
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->f:Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->b(Lcom/tencent/tai/pal/vehiclebasicinfo/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 198
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerRemoteSpeedListener vehicleBasicInfo == null"

    .line 206
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 212
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterRemoteSpeedListener vehicleBasicInfo == null"

    .line 220
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->e:Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->b(Lcom/tencent/tai/pal/vehiclebasicinfo/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 226
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 233
    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    .line 234
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->g()V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->i()V

    :cond_1
    return-void
.end method

.method protected f()V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->h()V

    .line 245
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->j()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 4

    .line 393
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getChannel_supported:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "getChannel"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string p0, "PAL_SDK"

    const-string v0, "getChannel vehicleBasicInfo == null"

    .line 400
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 404
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 405
    invoke-virtual {v2}, Lcom/tencent/tai/pal/VersionInfo;->getMajorVersion()I

    move-result v2

    if-nez v2, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAL_SDK"

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VehicleBasicInfoManagerImpl.getChannel read from patch return channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "PAL_SDK"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBasicInfoManagerImpl.getChannel read from patch provider return channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    .line 416
    :cond_4
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VehicleBasicInfoManagerImpl.getChannel return channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 420
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getDayNightMode()I
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDayNightMode vehicleBasicInfo == null"

    .line 337
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 342
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->f()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 344
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getDeviceId vehicleBasicInfo == null"

    .line 253
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 258
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 260
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getGear()I
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getGear vehicleBasicInfo == null"

    .line 304
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 309
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->g()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 311
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getPermanentPartitionPath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_getPermanentPartitionPath_supported:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "getPermanentPartitionPath"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string p0, "PAL_SDK"

    const-string v0, "getPermanentPartitionPath vehicleBasicInfo == null"

    .line 376
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 381
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VehicleBasicInfoManagerImpl.getPermanentPartitionPath return path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 385
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getSeatBeltBuckled(I)Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getSeatBeltBuckled vehicleBasicInfo == null"

    .line 354
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 359
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->b(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 361
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getSpeed()F
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getSpeed vehicleBasicInfo == null"

    .line 287
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 292
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->e()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 294
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getVehicleId vehicleBasicInfo == null"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 275
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 277
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getVehicleModel vehicleBasicInfo == null"

    .line 431
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->e()V

    .line 436
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->j()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 438
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public registerVehicleBasicInfoListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "VehicleBasicInfoManager"

    const-string p1, "registerVehicleBasicInfoListener listener is null"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->g()V

    .line 52
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public registerVehicleSpeedListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "VehicleBasicInfoManager"

    const-string p1, "registerVehicleSpeedListener listener is null"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "registerVehicleSpeedListener"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->i()V

    .line 91
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public toGearString(I)Ljava/lang/String;
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/b;

    if-nez p0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "toGearString vehicleBasicInfo == null"

    .line 321
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "GEAR_UNKNOWN"

    return-object p0

    .line 325
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/b;->a(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 327
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p0, "GEAR_UNKNOWN"

    return-object p0
.end method

.method public unregisterVehicleBasicInfoListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "VehicleBasicInfoManager"

    const-string p1, "unregisterVehicleBasicInfoListener listener is null"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->h()V

    .line 68
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterVehicleSpeedListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "VehicleBasicInfoManager"

    const-string p1, "unregisterVehicleSpeedListener listener is null"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->j()V

    .line 107
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
