.class public Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;
.super Ljava/lang/Object;
.source "PoiSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_RESULT_CODE_INVALID:I = -0x1

.field public static final SEARCH_RESULT_CODE_NET_ERR:I = 0x1

.field public static final SEARCH_RESULT_CODE_OK:I


# instance fields
.field public mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchCity;",
            ">;"
        }
    .end annotation
.end field

.field public mPoiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchPoi;",
            ">;"
        }
    .end annotation
.end field

.field public searchErrorCode:I

.field public searchKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchErrorCode:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mPoiList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mCityList:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchErrorCode:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mPoiList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mCityList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchErrorCode:I

    .line 45
    sget-object v0, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mPoiList:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/tencent/taes/remote/api/search/bean/SearchCity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mCityList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget p2, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    iget-object p2, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    iget-object p0, p0, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->searchKeyword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
