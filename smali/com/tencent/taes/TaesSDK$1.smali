.class final Lcom/tencent/taes/TaesSDK$1;
.super Ljava/util/HashMap;
.source "TaesSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/TaesSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Class<",
        "+",
        "Lcom/tencent/taes/impl/base/AbstractApi;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-class v0, Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;

    const-class v1, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-class v0, Lcom/tencent/taes/api/location/ILocationApi;

    const-class v1, Lcom/tencent/taes/impl/location/LocationApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-class v0, Lcom/tencent/taes/api/map/IMapApi;

    const-class v1, Lcom/tencent/taes/impl/map/MapApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-class v0, Lcom/tencent/taes/api/moss/IMossApi;

    const-class v1, Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-class v0, Lcom/tencent/taes/api/moss/IWeCarMasApi;

    const-class v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class v0, Lcom/tencent/taes/api/open/IOpenApi;

    const-class v1, Lcom/tencent/taes/impl/open/OpenApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-class v0, Lcom/tencent/taes/api/routeguide/IRouteGuideApi;

    const-class v1, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class v0, Lcom/tencent/taes/api/scene/ISceneApi;

    const-class v1, Lcom/tencent/taes/impl/scene/SceneApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-class v0, Lcom/tencent/taes/api/search/IPoiSearchApi;

    const-class v1, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class v0, Lcom/tencent/taes/api/account/IAccountApi;

    const-class v1, Lcom/tencent/taes/impl/account/AccountApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-class v0, Lcom/tencent/taes/api/tts/ITtsApi;

    const-class v1, Lcom/tencent/taes/impl/tts/TtsApiImpl;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/TaesSDK$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
