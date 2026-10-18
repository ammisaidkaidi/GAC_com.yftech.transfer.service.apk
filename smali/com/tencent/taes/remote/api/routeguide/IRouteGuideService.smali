.class public interface abstract Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;
.super Ljava/lang/Object;
.source "IRouteGuideService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNaviStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPassNodeNum()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPoiDetailNaviCoordinate()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRouteGuideSpeakMute()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRoutePlanCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRoutePlanDestNode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWeCarNaviRoadConditionInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWeCarSnapShotInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "I",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            ">;",
            "Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
