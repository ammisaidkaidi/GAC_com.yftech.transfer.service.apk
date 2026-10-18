.class public Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;
.super Ljava/lang/Object;
.source "LocationDistrict.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTRICT_INVALID_VALUE:I = -0x1

.field public static final DISTRICT_TYPE_CITY:I = 0x3

.field public static final DISTRICT_TYPE_COUNTRY:I = 0x1

.field public static final DISTRICT_TYPE_COUNTY:I = 0x4

.field public static final DISTRICT_TYPE_INVALID:I = -0x1

.field public static final DISTRICT_TYPE_PROVINCE:I = 0x2

.field public static final DISTRICT_TYPE_WORLD:I


# instance fields
.field public cityID:I

.field public cityName:Ljava/lang/String;

.field public districtID:I

.field public districtName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public provinceID:I

.field public provinceName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtID:I

    .line 22
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceID:I

    .line 23
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityID:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtID:I

    .line 22
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceID:I

    .line 23
    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityID:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->type:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtID:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceID:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityID:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->type:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtID:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceID:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityID:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->name:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 36
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->provinceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->cityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;->districtName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
