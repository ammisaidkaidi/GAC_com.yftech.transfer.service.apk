.class public interface abstract Lcom/tencent/taes/remote/api/search/IPoiSearchApi;
.super Ljava/lang/Object;
.source "IPoiSearchApi.java"


# virtual methods
.method public abstract cancelSearch(Ljava/lang/String;)V
.end method

.method public abstract searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
.end method

.method public abstract searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
.end method

.method public abstract searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
.end method

.method public abstract showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
.end method

.method public abstract showPoiResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
.end method

.method public abstract showPoiResult(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
