.class Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;
.super Lcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener$Stub;
.source "MapSurfaceRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->startMapMonitorTask(JILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;->val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinish(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$3;->val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapSurfaceMonitorListener;->onTaskFinish(IJ)V

    return-void
.end method
