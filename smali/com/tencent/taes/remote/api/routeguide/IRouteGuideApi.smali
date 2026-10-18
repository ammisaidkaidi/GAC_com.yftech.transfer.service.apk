.class public interface abstract Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;
.super Ljava/lang/Object;
.source "IRouteGuideApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# virtual methods
.method public abstract getNaviStatus()I
.end method

.method public abstract getPassNodeNum()I
.end method

.method public abstract getPoiDetailNaviCoordinate()Ljava/lang/String;
.end method

.method public abstract getRouteGuideSpeakMute()I
.end method

.method public abstract getRoutePlanCount()I
.end method

.method public abstract getRoutePlanDestNode()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;
.end method

.method public abstract getWeCarNaviRoadConditionInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;
.end method

.method public abstract getWeCarSnapShotInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;
.end method

.method public abstract searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V
.end method

.method public abstract searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "I",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            ">;",
            "Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;",
            ")V"
        }
    .end annotation
.end method
