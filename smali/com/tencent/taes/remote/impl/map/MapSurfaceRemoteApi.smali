.class public Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "MapSurfaceRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "MapSurfaceRemoteApi"


# instance fields
.field private mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

.field private mStyleModeChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 36
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    .line 40
    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 330
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object p3, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :try_start_0
    iget-object p3, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    new-instance v0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;-><init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;J)V

    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->setStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/IStyleModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 353
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    .line 51
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchPoi;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/os/Bundle;",
            "Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;",
            ")J"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    new-instance v7, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;

    invoke-direct {v7, p0, p6}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;-><init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 277
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    new-instance v7, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$1;

    invoke-direct {v7, p0, p6}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/IMapSurfaceListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMapMode(J)I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->getMapMode(J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getStyleMode(J)I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->getStyleMode(J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isDisplayingArMap(I)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->isDisplayingArMap(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 408
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisplayingMap(I)Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->isDisplayingMap(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning(J)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->isRunning(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->isValid()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause(J)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->onPause(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume(J)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->onResume(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(JLandroid/view/MotionEvent;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->onTouchEvent(JLandroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeLayer(JJ)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->removeLayer(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 366
    iget-object p3, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mStyleModeChangedListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->setStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/IStyleModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removedSurface(J)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->removedSurface(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCenterOffset(JII)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->setCenterOffset(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFollow(JZ)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->setFollow(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setStyleMode(JI)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->setStyleMode(JI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 420
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showARMap(IZ)Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->showARMap(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startMapMonitorTask(JILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    new-instance v1, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;

    invoke-direct {v1, p0, p4}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;-><init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->startMapMonitorTask(JILcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
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

    .line 45
    new-instance p0, Landroid/util/Pair;

    const-string v0, "MapService"

    const-class v1, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    new-instance v7, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;

    invoke-direct {v7, p0, p6}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;-><init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)V

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/IMapSurfaceListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public zoomToPois(JLjava/util/List;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchPoi;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->mMapSurfaceService:Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;->zoomToPois(JLjava/util/List;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
