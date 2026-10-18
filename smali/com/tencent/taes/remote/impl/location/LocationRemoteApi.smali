.class public Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "LocationRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/location/ILocationApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationRemoteApi"


# instance fields
.field private districtChangedListener:Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

.field private locationListener:Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

.field private mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/taes/remote/api/location/listener/GeoDistrictChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/taes/remote/api/location/listener/GeoLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

.field private mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;",
            ">;"
        }
    .end annotation
.end field

.field private satellitesListener:Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 33
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 219
    new-instance p2, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$1;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->locationListener:Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

    .line 251
    new-instance p2, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$2;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$2;-><init>(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->districtChangedListener:Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

    .line 274
    new-instance p2, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;-><init>(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->satellitesListener:Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;

    .line 45
    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/ILocationService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    .line 46
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->registerService()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private registerService()V
    .locals 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->locationListener:Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/location/ILocationService;->registerLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationRemoteApi"

    const-string v2, "registerRemoteLocationInfoListener exception caught"

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->districtChangedListener:Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/location/ILocationService;->registerDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LocationRemoteApi"

    const-string v2, "registerRemoteDistrictInfoListener exception caught"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->satellitesListener:Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;

    invoke-interface {v0, p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->registerSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "LocationRemoteApi"

    const-string v1, "registerRemoteSatellitesChangedInfoListener exception caught"

    .line 95
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private unregisterService()V
    .locals 3

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->locationListener:Lcom/tencent/taes/remote/api/location/listener/ILocationListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/location/ILocationService;->unregisterLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationRemoteApi"

    const-string v2, "unregisterRemoteLocationInfoListener exception caught"

    .line 110
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->districtChangedListener:Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;

    invoke-interface {v0, v1}, Lcom/tencent/taes/remote/api/location/ILocationService;->unregisterDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LocationRemoteApi"

    const-string v2, "unregisterRemoteDistrictInfoListener exception caught"

    .line 119
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->satellitesListener:Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;

    invoke-interface {v0, p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->unregisterSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "LocationRemoteApi"

    const-string v1, "unregisterRemoteSatellitesChangedInfoListener exception caught"

    .line 128
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    .line 56
    invoke-static {p1}, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/location/ILocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    .line 57
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->unregisterService()V

    .line 58
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->registerService()V

    .line 59
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 376
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getGpsSignalLevel()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getGpsSignalLevel()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public getGpsTime()J
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getGpsTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 412
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getLastValidDistrict()Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getLastValidDistrict()Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 358
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLastValidLocation()Lcom/tencent/taes/remote/api/location/bean/LatLng;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getLastValidLocation()Lcom/tencent/taes/remote/api/location/bean/LatLng;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 394
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLocationSDKVersion()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 499
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getLocationSDKVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 501
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSatellitesNum()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->getSatellitesNum()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSensor()Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->hasSensor()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 465
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasWecarId()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->hasWecarId()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGpsAvailable()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->isGpsAvailable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimulateLocation()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->isSimulateLocation()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 586
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportIns()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 481
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->isSupportIns()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoDistrictChangedListener;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public registerLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public registerSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public restartWithWeCarId(Ljava/lang/String;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 533
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService;->restartWithWeCarId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 535
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsUseCarSpeed(Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService;->setIsUseCarSpeed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 447
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startLocation(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService;->startLocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 304
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startSimulateLocation(Ljava/lang/String;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 550
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/location/ILocationService;->startSimulateLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 552
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopSimulateLocation()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    if-eqz v0, :cond_0

    .line 566
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationService:Lcom/tencent/taes/remote/api/location/ILocationService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationService;->stopSimulateLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 568
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeModuleBinder()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p0, Landroid/util/Pair;

    const-string v0, "Location"

    const-class v1, Lcom/tencent/taes/remote/api/location/ILocationService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public unregisterDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoDistrictChangedListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mDistrictChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mLocationListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->mSatellitesChangedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
