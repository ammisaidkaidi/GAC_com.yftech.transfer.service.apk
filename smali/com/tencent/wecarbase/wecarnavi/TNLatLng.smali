.class public Lcom/tencent/wecarbase/wecarnavi/TNLatLng;
.super Ljava/lang/Object;
.source "TNLatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COORDINATE_SYSTEM_GCJ02:I = 0x1

.field public static final COORDINATE_SYSTEM_WGS84:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/wecarnavi/TNLatLng;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_VALUE:D = 4.9E-324


# instance fields
.field private mCoordinateSystem:I

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    const-wide/16 v0, 0x1

    .line 25
    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    .line 26
    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    .line 46
    iput-wide p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    .line 47
    iput-wide p3, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    int-to-double v0, p1

    .line 41
    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    int-to-double p1, p2

    .line 42
    iput-wide p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/wecarbase/wecarnavi/TNLatLng$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/wecarbase/wecarnavi/TNLatLng;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    .line 30
    iget-wide v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    .line 31
    iget-wide v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    iput-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    check-cast p1, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    iget-wide v3, p1, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    sub-double/2addr v1, v3

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    iget-wide p0, p1, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    sub-double/2addr v1, p0

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getCoordinateSystem()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    add-double/2addr v0, v2

    mul-double/2addr v0, v2

    .line 89
    iget-wide v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public isValid()Z
    .locals 6

    .line 126
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    cmpg-double p0, v0, v4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCoordinateSystem(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mCoordinateSystem:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 107
    iget-wide v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
