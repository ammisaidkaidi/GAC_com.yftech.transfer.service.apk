.class public Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "PoiSearchRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/search/IPoiSearchApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "PoiSearchRemoteApi"


# instance fields
.field private mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 30
    invoke-static {p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    .line 41
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public cancelSearch(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSearch, taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->cancelSearch(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PoiSearchListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-virtual {p2}, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;->getInnerListener()Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchKeyWordByRoad, keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    new-instance v1, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V

    invoke-interface {v0, p1, v1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchNearbyLatLng : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", latLng: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", PoiSearchListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-virtual {p3}, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;->getInnerListener()Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPoiDetail, searchPoi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showPoiResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPoiResult, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->showSearchResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showPoiResult(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PoiSearchRemoteApi"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPoiResult, taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->mPoiSearchService:Lcom/tencent/taes/remote/api/search/IPoiSearchService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchService;->showPoiResult(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeModuleBinder()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance p0, Landroid/util/Pair;

    const-string v0, "MapService"

    const-class v1, Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
