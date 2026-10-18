.class public Lcom/tencent/taes/remote/api/location/bean/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/location/bean/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_VALUE:D = 4.9E-324

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGTITUDE:Ljava/lang/String; = "longtitude"


# instance fields
.field public latitude:D

.field public longitude:D

.field protected mExtBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/tencent/taes/remote/api/location/bean/LatLng$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/bean/LatLng$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    .line 48
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p3, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    .line 73
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    return-void
.end method

.method public constructor <init>(DDLandroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p3, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    .line 78
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    .line 79
    iput-object p5, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/taes/remote/api/location/bean/LatLng;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/bean/LatLng;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    .line 59
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/bean/LatLng;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    .line 60
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/bean/LatLng;->getExtBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtBundle()Landroid/os/Bundle;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getLongitude()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 4

    .line 124
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public isValid()Z
    .locals 6

    .line 136
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    cmpg-double p0, v0, v4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExtBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    return-void
.end method

.method public setLatitudeE6(I)V
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 128
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    return-void
.end method

.method public setLongitudeE6(I)V
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 132
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "longtitude"

    .line 176
    iget-wide v2, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "latitude"

    .line 177
    iget-wide v2, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatLng{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 151
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/bean/LatLng;->mExtBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
