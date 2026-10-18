.class public Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "RouteGuideRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "RouteGuideRemoteApi"


# instance fields
.field private mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 30
    invoke-static {p1}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

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

.method public getNaviStatus()I
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getNaviStatus"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getNaviStatus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPassNodeNum()I
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getPassNodeNum"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getPassNodeNum()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPoiDetailNaviCoordinate()Ljava/lang/String;
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getPoiDetailNaviCoordinate"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getPoiDetailNaviCoordinate()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRouteGuideSpeakMute()I
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getRouteGuideSpeakMute"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getRouteGuideSpeakMute()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRoutePlanCount()I
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getRoutePlanCount  "

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getRoutePlanCount()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRoutePlanDestNode()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getRoutePlanDestNode  "

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getRoutePlanDestNode()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;

    invoke-static {p0, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getWeCarNaviRoadConditionInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getWeCarNaviRoadConditionInfo"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getWeCarNaviRoadConditionInfo()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    invoke-static {p0, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarSnapShotInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;
    .locals 2

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "getWeCarSnapShotInfo"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->getWeCarSnapShotInfo()Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;

    invoke-static {p0, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V
    .locals 3

    const-string v0, "RouteGuideRemoteApi"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchRouteCondInfo  distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    invoke-virtual {p2}, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;->getInnerListener()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V
    .locals 7
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

    const-string v0, "RouteGuideRemoteApi"

    const-string v1, "searchRoutePlanResult"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;->mRouteGuideService:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;

    new-instance v6, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;

    invoke-direct {v6, p0, p5}, Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/routeguide/RouteGuideRemoteApi;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService;->searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
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

    const-class v1, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
