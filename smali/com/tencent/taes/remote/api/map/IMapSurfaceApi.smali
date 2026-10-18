.class public interface abstract Lcom/tencent/taes/remote/api/map/IMapSurfaceApi;
.super Ljava/lang/Object;
.source "IMapSurfaceApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# static fields
.field public static final SURFACE_TYPE_CUSTOM:I = 0x3

.field public static final SURFACE_TYPE_DASBOARD:I = 0x2

.field public static final SURFACE_TYPE_WIDGET:I = 0x1


# virtual methods
.method public abstract addStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
.end method

.method public abstract createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J
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
.end method

.method public abstract createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
.end method

.method public abstract getMapMode(J)I
.end method

.method public abstract getStyleMode(J)I
.end method

.method public abstract isDisplayingArMap(I)Z
.end method

.method public abstract isDisplayingMap(I)Z
.end method

.method public abstract isRunning(J)Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract onPause(J)Z
.end method

.method public abstract onResume(J)Z
.end method

.method public abstract onTouchEvent(JLandroid/view/MotionEvent;)Z
.end method

.method public abstract removeLayer(JJ)V
.end method

.method public abstract removeStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
.end method

.method public abstract removedSurface(J)Z
.end method

.method public abstract setCenterOffset(JII)V
.end method

.method public abstract setFollow(JZ)V
.end method

.method public abstract setStyleMode(JI)Z
.end method

.method public abstract showARMap(IZ)Z
.end method

.method public abstract startMapMonitorTask(JILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V
.end method

.method public abstract updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
.end method

.method public abstract zoomToPois(JLjava/util/List;Landroid/graphics/Rect;)V
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
.end method
