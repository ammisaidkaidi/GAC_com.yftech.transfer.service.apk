.class Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;
.super Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener$Stub;
.source "LocationRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatellitesChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;

    invoke-static {v1}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->access$200(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi$3;->this$0:Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;

    invoke-static {v1}, Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;->access$200(Lcom/tencent/taes/remote/impl/location/LocationRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;

    .line 282
    invoke-interface {v1, p1}, Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;->onSatellitesChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
