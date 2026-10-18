.class public Lcom/tencent/taes/remote/api/location/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final COORDINATE_TYPE_GCJ02:I = 0x1

.field public static final COORDINATE_TYPE_WGS84:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/location/bean/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCDEFAULT:D = 4.9E-324

.field public static final LOC_TYPE_NETWORK:I = 0x1

.field public static final LOC_TYPE_NMEA:I = 0x3

.field public static final LOC_TYPE_SYSTEM:I = 0x2

.field public static final LOC_TYPE_UNKNOWN:I


# instance fields
.field public accuracy:F

.field public altitude:D

.field public azimuth:D

.field public city:Ljava/lang/String;

.field public direction:F

.field public district:Ljava/lang/String;

.field public elevation:D

.field public fixmode:I

.field public gpsQuality:I

.field public hdop:D

.field public inPark:I

.field public isSimulateLoc:Z

.field public latitude:D

.field public loctype:I

.field public longitude:D

.field public pdop:D

.field public phonedir:D

.field public provider:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public satellitesNum:I

.field public speed:F

.field public street:Ljava/lang/String;

.field public time:J

.field public type:I

.field public vdop:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/bean/LocationBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 34
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    .line 39
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 34
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    .line 39
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    .line 249
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private isFloatEqual(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 170
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clone()Lcom/tencent/taes/remote/api/location/bean/LocationBean;
    .locals 3

    .line 299
    new-instance v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;-><init>()V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    .line 302
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    .line 303
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->speed:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->speed:F

    .line 304
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->direction:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->direction:F

    .line 305
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->accuracy:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->accuracy:F

    .line 306
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->satellitesNum:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->satellitesNum:I

    .line 307
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->altitude:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->altitude:D

    .line 308
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->type:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->type:I

    .line 309
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->time:J

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->time:J

    .line 310
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->gpsQuality:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->gpsQuality:I

    .line 311
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->loctype:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->loctype:I

    .line 312
    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    iput-boolean v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    .line 313
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->provider:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->provider:Ljava/lang/String;

    .line 314
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->inPark:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->inPark:I

    .line 315
    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->fixmode:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->fixmode:I

    .line 316
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    .line 317
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->vdop:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->vdop:D

    .line 318
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->pdop:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->pdop:D

    .line 319
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->phonedir:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->phonedir:D

    .line 320
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->azimuth:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->azimuth:D

    .line 321
    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->elevation:D

    iput-wide v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->elevation:D

    .line 322
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->province:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->province:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->city:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->district:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->district:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->street:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->street:Ljava/lang/String;

    .line 326
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->clone()Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    const-wide/16 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isFloatEqual(DD)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isFloatEqual(DD)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->speed:F

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->direction:F

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->accuracy:F

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->satellitesNum:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->altitude:D

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->type:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->time:J

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->gpsQuality:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->loctype:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->provider:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->inPark:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->fixmode:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->vdop:D

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->pdop:D

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->phonedir:D

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->azimuth:D

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->elevation:D

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->province:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->city:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->district:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->street:Ljava/lang/String;

    return-void
.end method

.method public toGeoPoint()Lcom/tencent/taes/remote/api/location/bean/LatLng;
    .locals 5

    .line 179
    new-instance v0, Lcom/tencent/taes/remote/api/location/bean/LatLng;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    iget-wide v3, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/taes/remote/api/location/bean/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationBean{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->direction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", satellitesNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->satellitesNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gpsQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->gpsQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loctype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->loctype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSimulateLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", inPark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->inPark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->fixmode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", vdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->vdop:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", hdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", phonedir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->phonedir:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", azimuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->azimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->elevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", street="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->street:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 191
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 192
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->speed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 193
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->direction:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 194
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->accuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 195
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->satellitesNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 197
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->gpsQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->loctype:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->isSimulateLoc:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->inPark:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->fixmode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->hdop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 206
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->vdop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 207
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->pdop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 208
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->phonedir:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 209
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->azimuth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 210
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->elevation:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 211
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->district:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->street:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
