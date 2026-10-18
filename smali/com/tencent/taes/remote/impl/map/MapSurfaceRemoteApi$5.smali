.class Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;
.super Lcom/tencent/taes/remote/api/map/IStyleModeChangedListener$Stub;
.source "MapSurfaceRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->addStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

.field final synthetic val$surfaceId:J


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;J)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    iput-wide p2, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->val$surfaceId:J

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/map/IStyleModeChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStyleModeChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    invoke-static {v0}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->val$surfaceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "MapSurfaceRemoteApi"

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStyleModeChanged mStyleModeChangedListenerMap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->this$0:Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;

    invoke-static {v3}, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", surfaceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/taes/remote/impl/map/MapSurfaceRemoteApi$5;->val$surfaceId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", styleMode = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;

    .line 344
    invoke-interface {v0, p1}, Lcom/tencent/taes/remote/api/map/MapSurfaceListener$OnStyleModeChangedListener;->onStyleModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
