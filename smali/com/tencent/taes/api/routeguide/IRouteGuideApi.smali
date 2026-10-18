.class public interface abstract Lcom/tencent/taes/api/routeguide/IRouteGuideApi;
.super Ljava/lang/Object;
.source "IRouteGuideApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;
.implements Lcom/tencent/taes/api/base/BaseApi;


# virtual methods
.method public abstract addPassnode(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)Z
.end method

.method public abstract addPassnode(Ljava/lang/String;Ljava/lang/String;DD)Z
.end method

.method public abstract chooseNaviOverView()V
.end method

.method public abstract deleteAllPassNode()Z
.end method

.method public abstract getPassNodeNum()I
.end method

.method public abstract goCompany()V
.end method

.method public abstract goHome()V
.end method

.method public abstract goHomeOrCompany(II)V
.end method

.method public abstract naviToHere()Z
.end method

.method public abstract requestRoutePlanOrNavi(ILcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/ArrayList;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            ">;",
            "Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V
.end method

.method public abstract selectRoutePlanIndex(IZ)V
.end method

.method public abstract setCruiseSpeakType(Z)V
.end method

.method public abstract setRouteGuideSpeakMute(Z)V
.end method

.method public abstract setRoutePreference(I)Z
.end method

.method public abstract startCruise(Z)V
.end method

.method public abstract startNavi(ZZDD)V
.end method

.method public abstract startNavi(ZZDDDD)V
.end method

.method public abstract startNavi(ZZLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchPoi;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract stopCruise(Z)V
.end method

.method public abstract stopNavi(Z)V
.end method

.method public abstract updateNaviDest(DD)V
.end method
