.class public abstract Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;
.super Landroid/os/Binder;
.source "IPoiSearchService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/search/IPoiSearchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/search/IPoiSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.search.IPoiSearchService"

.field static final TRANSACTION_cancelSearch:I = 0x2

.field static final TRANSACTION_searchKeyWord:I = 0x1

.field static final TRANSACTION_searchKeyWordByRoad:I = 0x7

.field static final TRANSACTION_searchNearbyLatLng:I = 0x6

.field static final TRANSACTION_showPoiDetail:I = 0x5

.field static final TRANSACTION_showPoiResult:I = 0x3

.field static final TRANSACTION_showSearchResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.search.IPoiSearchService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/IPoiSearchService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.search.IPoiSearchService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.tencent.taes.remote.api.search.IPoiSearchService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 127
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener;

    move-result-object p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 108
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 113
    sget-object p4, Lcom/tencent/taes/remote/api/location/bean/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/tencent/taes/remote/api/location/bean/LatLng;

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    move-result-object p2

    .line 120
    invoke-virtual {p0, p1, v1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 94
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    sget-object p1, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;

    .line 102
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 80
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    sget-object p1, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;

    .line 88
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->showSearchResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 71
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->showPoiResult(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->cancelSearch(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 50
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 45
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
