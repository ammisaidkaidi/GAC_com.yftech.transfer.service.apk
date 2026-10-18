.class public Lcom/tencent/wecarbase/wecarnavi/TNPoi;
.super Ljava/lang/Object;
.source "TNPoi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/wecarnavi/TNPoi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private childPoiCount:I

.field private childPoiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarbase/wecarnavi/TNPoi;",
            ">;"
        }
    .end annotation
.end field

.field private coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

.field private distanceToCenter:F

.field private districtID:I

.field private isHasStreetScape:Z

.field private naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

.field private poiAliasName:Ljava/lang/String;

.field private poiID:Ljava/lang/String;

.field private poiName:Ljava/lang/String;

.field private poiType:Ljava/lang/String;

.field private telephone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNPoi$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNPoi$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 21
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 21
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/wecarbase/wecarnavi/TNPoi$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/wecarnavi/TNPoi;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/wecarbase/wecarnavi/TNPoi;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 21
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 36
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->copy(Lcom/tencent/wecarbase/wecarnavi/TNPoi;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->setLatitude(D)V

    .line 48
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->setLongitude(D)V

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->setLatitude(D)V

    .line 50
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->setLongitude(D)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->distanceToCenter:F

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->isHasStreetScape:Z

    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/wecarbase/wecarnavi/TNPoi;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    .line 118
    :goto_0
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 121
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    .line 123
    :goto_1
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 126
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    .line 128
    :goto_2
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    if-eqz v0, :cond_4

    .line 129
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>(Lcom/tencent/wecarbase/wecarnavi/TNLatLng;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    goto :goto_3

    .line 131
    :cond_4
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 133
    :goto_3
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    if-eqz v0, :cond_5

    .line 134
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>(Lcom/tencent/wecarbase/wecarnavi/TNLatLng;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    goto :goto_4

    .line 136
    :cond_5
    new-instance v0, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-direct {v0}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 138
    :goto_4
    iget v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    .line 140
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 141
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const-string v0, ""

    .line 143
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    .line 145
    :goto_5
    iget-object v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 146
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string v0, ""

    .line 148
    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    .line 150
    :goto_6
    iget v0, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->distanceToCenter:F

    iput v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->distanceToCenter:F

    .line 152
    iget-boolean p1, p1, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->isHasStreetScape:Z

    iput-boolean p1, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->isHasStreetScape:Z

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getCoordinate()Lcom/tencent/wecarbase/wecarnavi/TNLatLng;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    return-object p0
.end method

.method public getDistrictID()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    return p0
.end method

.method public getNaviCoordinate()Lcom/tencent/wecarbase/wecarnavi/TNLatLng;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    return-object p0
.end method

.method public getPoiID()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    return-object p0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    return-object p0
.end method

.method public getPoiType()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TNPoi{poiID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poiName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poiType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", coordinate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 64
    invoke-virtual {v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", naviCoordinate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    .line 65
    invoke-virtual {v2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", districtID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", telephone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", distanceToCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->distanceToCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isHasStreetScape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->isHasStreetScape:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 90
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiID:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->poiType:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->coordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->naviCoordinate:Lcom/tencent/wecarbase/wecarnavi/TNLatLng;

    invoke-virtual {p2}, Lcom/tencent/wecarbase/wecarnavi/TNLatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 97
    iget p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->districtID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, ""

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->telephone:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, ""

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->address:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget p2, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->distanceToCenter:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget-boolean p0, p0, Lcom/tencent/wecarbase/wecarnavi/TNPoi;->isHasStreetScape:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
