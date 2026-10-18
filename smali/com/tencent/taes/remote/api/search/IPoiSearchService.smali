.class public interface abstract Lcom/tencent/taes/remote/api/search/IPoiSearchService;
.super Ljava/lang/Object;
.source "IPoiSearchService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/search/IPoiSearchService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelSearch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showPoiResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showSearchResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
