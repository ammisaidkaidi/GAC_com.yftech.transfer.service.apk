.class public Lcom/yftech/transfer/phonelink/manager/CarLocationManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "CarLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;
    }
.end annotation


# static fields
.field public static final STATUS_EFFECT:Ljava/lang/String; = "A"

.field public static final STATUS_NO_EFFECT:Ljava/lang/String; = "V"

.field public static final ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

.field private static isInit:Z

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gpsObservor:Lcom/so/GpsManager$GpsObservor;

.field private mContext:Landroid/content/Context;

.field private mEffectStatus:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mStatusListener:Landroid/location/GpsStatus$Listener;

.field private nmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private nmeaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->isInit:Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaMap:Ljava/util/Map;

    const-string v0, "V"

    .line 41
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mEffectStatus:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$1;-><init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->gpsObservor:Lcom/so/GpsManager$GpsObservor;

    .line 144
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$2;-><init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationListener:Landroid/location/LocationListener;

    .line 200
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$3;-><init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 245
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$4;-><init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mStatusListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/location/Location;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .line 27
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)Landroid/location/LocationManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mEffectStatus:Ljava/lang/String;

    return-object p1
.end method

.method public static isInit()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->isInit:Z

    return v0
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;)Z
    .locals 1

    .line 60
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getEffectStatus()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mEffectStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getGps2CarLife()Ljava/lang/String;
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    .line 128
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0|"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocation:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0|"

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0|"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGpsStatus()Landroid/location/GpsStatus;
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGpsStatus gpsStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .line 120
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastKnownLocation location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public getNmeaValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public init()V
    .locals 7

    .line 94
    invoke-static {}, Lcom/so/GpsManager;->getInstance()Lcom/so/GpsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/so/GpsManager;->init()V

    .line 95
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->gpsObservor:Lcom/so/GpsManager$GpsObservor;

    invoke-static {v0}, Lcom/so/GpsManager;->registerObservor(Lcom/so/GpsManager$GpsObservor;)V

    .line 96
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 104
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x40a00000    # 5.0f

    iget-object v6, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 105
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 106
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isNmeaPropFalse()Z

    move-result v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init isNmeaPropFalse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    :cond_1
    const/4 p0, 0x1

    .line 110
    sput-boolean p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->isInit:Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "gps-Permission_Not_Granted"

    .line 100
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public refreshGpsInfo()V
    .locals 4

    const-string v0, "gpgga"

    .line 80
    invoke-static {v0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gprmc"

    .line 81
    invoke-static {v1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaMap:Ljava/util/Map;

    const-string v3, "$GPGGA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaMap:Ljava/util/Map;

    const-string v0, "$GPRMC"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public uninit()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->gpsObservor:Lcom/so/GpsManager$GpsObservor;

    invoke-static {v0}, Lcom/so/GpsManager;->unregisterObservor(Lcom/so/GpsManager$GpsObservor;)V

    .line 271
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 272
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 273
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isNmeaPropFalse()Z

    move-result v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninit isNmeaPropFalse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    :cond_0
    return-void
.end method
