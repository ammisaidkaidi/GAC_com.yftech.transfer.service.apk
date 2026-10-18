.class Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;
.super Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener$Stub;
.source "MapSurfaceRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;->val$listener:Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;->val$listener:Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$4;->val$listener:Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;->onClick(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V

    :cond_0
    return-void
.end method
