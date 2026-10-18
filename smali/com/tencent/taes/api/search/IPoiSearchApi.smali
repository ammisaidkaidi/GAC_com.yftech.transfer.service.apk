.class public interface abstract Lcom/tencent/taes/api/search/IPoiSearchApi;
.super Ljava/lang/Object;
.source "IPoiSearchApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/search/IPoiSearchApi;
.implements Lcom/tencent/taes/api/base/BaseApi;


# virtual methods
.method public abstract goFavoritePage()V
.end method

.method public abstract goPoiDetailPage(Ljava/lang/String;Ljava/lang/String;DD)V
.end method

.method public abstract searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
.end method

.method public abstract searchKeyword(Ljava/lang/String;)V
.end method

.method public abstract searchNearby(ILjava/lang/String;)V
.end method

.method public abstract searchNearby(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;)V
.end method
