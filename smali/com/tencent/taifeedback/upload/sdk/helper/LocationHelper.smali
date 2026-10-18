.class public Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationListener"

.field private static locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;


# instance fields
.field private bestProvider:Ljava/lang/String;

.field private latitude:D

.field private location:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private longitude:D

.field private speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->latitude:D

    .line 30
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->longitude:D

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    return-void
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    .line 23
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->latitude:D

    .line 67
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->longitude:D

    .line 68
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    .line 70
    :cond_1
    iget-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-string p0, "N/A"

    return-object p0

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    .line 83
    :cond_1
    iget v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-string p0, "N/A"

    return-object p0

    .line 86
    :cond_2
    iget p0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    const v0, 0x40666666    # 3.6f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 37
    :cond_0
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :try_start_0
    const-string v1, "network"

    .line 46
    iput-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    const-string v1, "LocationListener"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x41200000    # 10.0f

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 55
    iget-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->bestProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 57
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    const-string v0, "LocationListener"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->locationService:Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;

    iput-object p1, v0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->location:Landroid/location/Location;

    .line 96
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->latitude:D

    .line 97
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->longitude:D

    .line 98
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    iput p1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/LocationHelper;->speed:F

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
