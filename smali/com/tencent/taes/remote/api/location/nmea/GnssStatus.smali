.class public Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;
    }
.end annotation


# static fields
.field static final GPS_EVENT_FIRST_FIX:I = 0x3

.field static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field static final GPS_EVENT_STARTED:I = 0x1

.field static final GPS_EVENT_STOPPED:I = 0x2

.field public static final SIGNAL_LEVEL_1:I = 0x1

.field public static final SIGNAL_LEVEL_2:I = 0x2

.field public static final SIGNAL_LEVEL_3:I = 0x3

.field public static final SIGNAL_LEVEL_4:I = 0x4

.field public static final SIGNAL_LEVEL_5:I = 0x5


# instance fields
.field private HDOP:F

.field private PDOP:F

.field private VDOP:F

.field private altitude:D

.field private angle:F

.field private firstFixTimestamp:J

.field private fixMode:I

.field private fixTimestamp:J

.field private hasFixed:Z

.field private height:D

.field private latitude:D

.field private longitude:D

.field private mCurrentGnssSatelliteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssSatelliteListCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCopySatelliteList:Z

.field private mUsedSatelliteArray:Landroid/util/SparseIntArray;

.field private mUsedSatelliteNum:I

.field private mode:Ljava/lang/String;

.field private nbsat:I

.field private numSatellites:I

.field private precision:F

.field private quality:I

.field private speed:F

.field private startTimestamp:J

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mShouldCopySatelliteList:Z

    .line 58
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteArray:Landroid/util/SparseIntArray;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->hasFixed:Z

    return-void
.end method


# virtual methods
.method addNumSatellites(I)V
    .locals 1

    .line 353
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    return-void
.end method

.method addSatellite(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addUsedSatellite(I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method clear()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->clearTTFF()V

    .line 187
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->clearSatellitesList()V

    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->timestamp:J

    .line 189
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    .line 190
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixTimestamp:J

    const/high16 v0, 0x41200000    # 10.0f

    .line 191
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->precision:F

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->PDOP:F

    .line 193
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->HDOP:F

    .line 194
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->VDOP:F

    const-wide/16 v1, 0x0

    .line 195
    iput-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->latitude:D

    .line 196
    iput-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->longitude:D

    .line 197
    iput-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->altitude:D

    .line 198
    iput-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->height:D

    .line 199
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->speed:F

    .line 200
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->angle:F

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->nbsat:I

    .line 202
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    .line 203
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixMode:I

    .line 204
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->quality:I

    const-string v0, "N"

    .line 205
    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mode:Ljava/lang/String;

    return-void
.end method

.method clearSatellitesList()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method clearTTFF()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    return-void
.end method

.method clearUsedSatellite()V
    .locals 2

    const-string v0, "GSA"

    const-string v1, "clearUsedSatellite"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method declared-synchronized copySatellite()Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;
    .locals 5

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteNum:I

    .line 108
    iget-boolean v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mShouldCopySatelliteList:Z

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    .line 112
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getPrn()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 113
    :goto_1
    invoke-virtual {v2, v3}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->setUsedInFix(Z)V

    .line 114
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    new-instance v1, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$1;

    invoke-direct {v1, p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$1;-><init>(Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0

    throw v0
.end method

.method getAltitude()D
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->altitude:D

    return-wide v0
.end method

.method getBearing()D
    .locals 2

    .line 313
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->angle:F

    float-to-double v0, p0

    return-wide v0
.end method

.method getEmptyLocation()Landroid/location/Location;
    .locals 5

    .line 426
    new-instance p0, Landroid/location/Location;

    const-string v0, "gps"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 431
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 432
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p0, v2}, Landroid/location/Location;->setAccuracy(F)V

    const-wide/16 v3, 0x0

    .line 434
    invoke-virtual {p0, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 435
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "satellites"

    const/4 v3, 0x0

    .line 437
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 439
    invoke-virtual {p0, v2}, Landroid/location/Location;->setBearing(F)V

    .line 440
    invoke-virtual {p0, v2}, Landroid/location/Location;->setSpeed(F)V

    return-object p0
.end method

.method getFixLocation()Landroid/location/Location;
    .locals 4

    .line 213
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 218
    :cond_0
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 219
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 220
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->HDOP:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 221
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixTimestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 222
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->altitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 223
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "satellites"

    .line 224
    iget v3, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->nbsat:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 226
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->angle:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 227
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->speed:F

    invoke-virtual {v0, p0}, Landroid/location/Location;->setSpeed(F)V

    return-object v0
.end method

.method getFixMode()I
    .locals 0

    .line 357
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixMode:I

    return p0
.end method

.method public declared-synchronized getFixSatelliteCount()I
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mUsedSatelliteNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFixTimestamp()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixTimestamp:J

    return-wide v0
.end method

.method public getHDOP()D
    .locals 2

    .line 280
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->HDOP:F

    float-to-double v0, p0

    return-wide v0
.end method

.method getHeight()D
    .locals 2

    .line 297
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->height:D

    return-wide v0
.end method

.method getLatitude()D
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->latitude:D

    return-wide v0
.end method

.method getLongitude()D
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->longitude:D

    return-wide v0
.end method

.method getMode()Ljava/lang/String;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mode:Ljava/lang/String;

    return-object p0
.end method

.method getNbSat()I
    .locals 0

    .line 329
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->nbsat:I

    return p0
.end method

.method getNumSatellites()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    return p0
.end method

.method public getPDOP()D
    .locals 2

    .line 272
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->PDOP:F

    float-to-double v0, p0

    return-wide v0
.end method

.method getPrecision()F
    .locals 0

    .line 264
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->precision:F

    return p0
.end method

.method getQuality()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->quality:I

    return p0
.end method

.method public declared-synchronized getSatellites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    invoke-virtual {v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->copy()Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 102
    :catch_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignalLevel()I
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 395
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 396
    iget-object v5, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    .line 397
    invoke-virtual {v5}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getSnr()F

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v6, 0x42340000    # 45.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    const/high16 v6, 0x420c0000    # 35.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-lt v1, v0, :cond_5

    .line 413
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 v1, 0x2

    if-lt v2, v1, :cond_6

    .line 415
    monitor-exit p0

    return v1

    :cond_6
    if-lt v3, v1, :cond_7

    .line 417
    monitor-exit p0

    return v0

    :cond_7
    if-lt v4, v1, :cond_8

    const/4 v0, 0x4

    .line 419
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x5

    .line 421
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 390
    monitor-exit p0

    throw v0
.end method

.method getSpeed()F
    .locals 0

    .line 305
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->speed:F

    return p0
.end method

.method getTTFF()J
    .locals 6

    .line 137
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    iget-wide v4, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    iget-wide v2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method getTimestamp()J
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->timestamp:J

    return-wide v0
.end method

.method public getVDOP()D
    .locals 2

    .line 288
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->VDOP:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public hasFixed()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->hasFixed:Z

    return p0
.end method

.method setAltitude(D)V
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->altitude:D

    return-void
.end method

.method setBearing(F)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->angle:F

    return-void
.end method

.method setFixMode(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixMode:I

    return-void
.end method

.method setFixTimestamp(J)V
    .locals 4

    .line 151
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->timestamp:J

    .line 152
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->fixTimestamp:J

    .line 153
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 154
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->firstFixTimestamp:J

    :cond_0
    return-void
.end method

.method setFixed(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->hasFixed:Z

    return-void
.end method

.method setHDOP(F)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->HDOP:F

    return-void
.end method

.method setHeight(D)V
    .locals 0

    .line 301
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->height:D

    return-void
.end method

.method setLatitude(D)V
    .locals 0

    .line 243
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->latitude:D

    return-void
.end method

.method setLongitude(D)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->longitude:D

    return-void
.end method

.method setMode(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mode:Ljava/lang/String;

    return-void
.end method

.method setNbSat(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->nbsat:I

    return-void
.end method

.method setNumSatellites(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    return-void
.end method

.method setPDOP(F)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->PDOP:F

    return-void
.end method

.method setPrecision(F)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->precision:F

    return-void
.end method

.method setQuality(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->quality:I

    return-void
.end method

.method declared-synchronized setShouldCopySatelliteList(Z)V
    .locals 0

    monitor-enter p0

    .line 75
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mShouldCopySatelliteList:Z

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mCurrentGnssSatelliteList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->mGnssSatelliteListCopy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method setSpeed(F)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->speed:F

    return-void
.end method

.method setTimestamp(J)V
    .locals 4

    .line 159
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 160
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->startTimestamp:J

    .line 162
    :cond_0
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->timestamp:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->numSatellites:I

    .line 166
    :cond_1
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->timestamp:J

    return-void
.end method

.method setVDOP(F)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->VDOP:F

    return-void
.end method
