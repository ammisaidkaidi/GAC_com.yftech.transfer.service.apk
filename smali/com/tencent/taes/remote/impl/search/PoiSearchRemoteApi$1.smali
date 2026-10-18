.class Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;
.super Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener$Stub;
.source "PoiSearchRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;->searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/search/listener/IPoiSearchByRoadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/search/PoiSearchRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
