.class Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;
.super Lcom/tencent/taes/remote/api/map/IMapSurfaceListener$Stub;
.source "MapSurfaceRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;->val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MapSurfaceRemoteApi"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurface:surfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;->val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$2;->val$listener:Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnMapContextListener;->onResult(JZ)V

    :cond_0
    return-void
.end method
