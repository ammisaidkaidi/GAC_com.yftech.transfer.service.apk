.class public Lcom/tencent/taes/impl/map/MapApiImpl;
.super Lcom/tencent/taes/impl/base/BaseConnectApi;
.source "MapApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/map/IMapApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/taes/impl/base/BaseConnectApi<",
        "Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;",
        ">;",
        "Lcom/tencent/taes/api/map/IMapApi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapApiImp"


# instance fields
.field private mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;-><init>()V

    .line 39
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    new-instance v2, Lcom/tencent/taes/impl/map/MapApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/map/MapApiImpl$1;-><init>(Lcom/tencent/taes/impl/map/MapApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/map/MapApiImpl;)Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    return-object p0
.end method

.method private getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    const-class v2, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    .line 57
    iget-object v0, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/map/MapApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    goto :goto_0

    :cond_0
    const-string v1, "MapApiImp"

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApi Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    return-object p0
.end method


# virtual methods
.method public addStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->addStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V

    :cond_0
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

    if-eqz p3, :cond_2

    .line 170
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_2
    :goto_0
    const-string p0, "MapApiImp"

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createPoiLayer params error poiList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " bitmap="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
    .locals 8

    .line 84
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/map/MapApiImpl;->unregisterInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->unregisterConnectListener()V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getMapMode(J)I
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->getMapMode(J)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getStyleMode(J)I
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->getStyleMode(J)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isDisplayingArMap(I)Z
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->isDisplayingArMap(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisplayingMap(I)Z
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->isDisplayingMap(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning(J)Z
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->isRunning(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->isValid()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause(J)Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->onPause(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume(J)Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->onResume(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(JLandroid/view/MotionEvent;)Z
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->onTouchEvent(JLandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/tencent/taes/impl/base/BaseConnectApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    .line 68
    iget-object p1, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    if-nez p1, :cond_0

    const-string p1, "MapApiImp"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInnerConnectListener Exception\uff1amMapSurfaceApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/tencent/taes/impl/map/MapApiImpl;->mMapSurfaceApi:Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/map/MapApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    return-void
.end method

.method public removeLayer(JJ)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->removeLayer(JJ)V

    :cond_0
    return-void
.end method

.method public removeStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->removeStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V

    :cond_0
    return-void
.end method

.method public removedSurface(J)Z
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->removedSurface(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCenterOffset(JII)V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->setCenterOffset(JII)V

    :cond_0
    return-void
.end method

.method public setFollow(JZ)V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->setFollow(JZ)V

    :cond_0
    return-void
.end method

.method public setStyleMode(JI)Z
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->setStyleMode(JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showARMap(IZ)Z
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->showARMap(IZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startMapMonitorTask(JILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->startMapMonitorTask(JILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V

    :cond_0
    return-void
.end method

.method public updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
    .locals 8

    .line 92
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z

    move-result p0

    return p0

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

    if-eqz p3, :cond_2

    .line 190
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/tencent/taes/impl/map/MapApiImpl;->getMapSurfaceApi()Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;->zoomToPois(JLjava/util/List;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "MapApiImp"

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "zoomToPois params error poiList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
