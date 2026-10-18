.class public Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;
.super Lcom/tencent/taes/impl/base/BaseConnectApi;
.source "RouteGuideApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/routeguide/IRouteGuideApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/taes/impl/base/BaseConnectApi<",
        "Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;",
        ">;",
        "Lcom/tencent/taes/api/routeguide/IRouteGuideApi;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RouteGuideApiImp"


# instance fields
.field private mIntentAction:Ljava/lang/String;

.field private mIntentScheme:Ljava/lang/String;

.field private mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    .line 59
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiScheme"

    .line 61
    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiAction"

    .line 64
    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    new-instance v2, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl$1;-><init>(Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;)Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    return-object p0
.end method

.method private getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    const-class v2, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    .line 86
    iget-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    goto :goto_0

    :cond_0
    const-string v1, "RouteGuideApiImp"

    .line 88
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

    .line 91
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    return-object p0
.end method


# virtual methods
.method public addPassnode(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)Z
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v0

    const-string v1, "RouteGuideApiImp"

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naviStatus :  \u2014\u2014>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string p0, "RouteGuideApiImp"

    const-string p1, "addPassnode fail,not in navi"

    .line 286
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "RouteGuideApiImp"

    const-string p1, "addPassnode fail,searchPoi==null"

    .line 289
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v0, "RouteGuideApiImp"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPassnode : poi \u2014\u2014>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "addPassnode"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "passnode"

    .line 295
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 296
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public addPassnode(Ljava/lang/String;Ljava/lang/String;DD)Z
    .locals 7

    .line 323
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v0

    const-string v1, "RouteGuideApiImp"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naviStatus :  \u2014\u2014>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string p0, "RouteGuideApiImp"

    const-string p1, "addPassnode fail,not in navi"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 328
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p3, v3

    if-lez v0, :cond_2

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpg-double v0, p3, v5

    if-gez v0, :cond_2

    cmpl-double v0, p5, v3

    if-lez v0, :cond_2

    cmpg-double v0, p5, v5

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "RouteGuideApiImp"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPassnode : poi \u2014\u2014>> poiName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " poiAddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " latitude: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " longitude: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "addPassnode"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "poiName"

    .line 337
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "poiAddress"

    .line 338
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "latitude"

    .line 339
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "longitude"

    .line 340
    invoke-virtual {v0, p0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 341
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    :goto_0
    const-string p0, "RouteGuideApiImp"

    const-string p1, "addPassnode fail,poi param invaild"

    .line 330
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public chooseNaviOverView()V
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "chooseNaviOverView"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "chooseNaviOverView"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "from"

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 180
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public deleteAllPassNode()Z
    .locals 4

    .line 348
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v0

    const-string v1, "RouteGuideApiImp"

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naviStatus :  \u2014\u2014>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string p0, "RouteGuideApiImp"

    const-string v0, "deleteAllPassNode fail,not in navi"

    .line 351
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getPassNodeNum()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "RouteGuideApiImp"

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllPassNode fail,passNodeNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 359
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "deleteAllPassnode"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 361
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public dispose()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->unregisterInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    .line 634
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->unregisterConnectListener()V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getNaviStatus()I
    .locals 3

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getNaviStatus"

    .line 639
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getNaviStatus()I

    move-result p0

    const-string v0, "RouteGuideApiImp"

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNaviStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPassNodeNum()I
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getPassNodeNum"

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getPassNodeNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPoiDetailNaviCoordinate()Ljava/lang/String;
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getPoiDetailNaviCoordinate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRouteGuideSpeakMute()I
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getRouteGuideSpeakMute"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getRouteGuideSpeakMute()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRoutePlanCount()I
    .locals 3

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getRoutePlanCount"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getRoutePlanCount()I

    move-result p0

    const-string v0, "RouteGuideApiImp"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoutePlanCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRoutePlanDestNode()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getRoutePlanDestNode "

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getRoutePlanDestNode()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPoi;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarNaviRoadConditionInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "getNaviStatus"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getWeCarNaviRoadConditionInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarSnapShotInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->getWeCarSnapShotInfo()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public goCompany()V
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "goCompany"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "goHomeCompany"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "goHomeCompanyType"

    const/4 v1, 0x2

    .line 624
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "from"

    const/4 v1, 0x1

    .line 625
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 626
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 627
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goHome()V
    .locals 2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "goHome"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "goHomeCompany"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "goHomeCompanyType"

    const/4 v1, 0x1

    .line 611
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "from"

    .line 612
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 613
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 614
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goHomeOrCompany(II)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goHomeOrCompany actionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,poiType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "goHomeCompany"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "from"

    const/4 v1, 0x1

    .line 307
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "actionType"

    .line 308
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 309
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-string p0, "goHomeCompanyType"

    .line 312
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const-string p0, "goHomeCompanyType"

    const/4 p1, 0x2

    .line 316
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public naviToHere()Z
    .locals 8

    .line 485
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getPoiDetailNaviCoordinate()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "latitude"

    .line 489
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string p0, "longitude"

    .line 490
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 491
    invoke-static {}, Lcom/tencent/taes/TaesSDK;->getRouteGuideApi()Lcom/tencent/taes/api/routeguide/IRouteGuideApi;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/api/routeguide/IRouteGuideApi;->startNavi(ZZDD)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 494
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "RouteGuideApiImp"

    const-string v0, "naviToHere fail,reason: currently not in POI details page"

    .line 499
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/tencent/taes/impl/base/BaseConnectApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    .line 97
    iget-object p1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    if-nez p1, :cond_0

    const-string p1, "RouteGuideApiImp"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInnerConnectListener Exception\uff1amRouteGuideApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mRouteGuideApi:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    return-void
.end method

.method public requestRoutePlanOrNavi(ILcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/ArrayList;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            ">;",
            "Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    if-nez v3, :cond_0

    const-string v0, "RouteGuideApiImp"

    const-string v1, "requestRoutePlanOrNavi fail,destNode == null"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const-string v7, "RouteGuideApiImp"

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestRoutePlanOrNavi actionType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-wide v7, v3, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->latitude:D

    .line 404
    iget-wide v9, v3, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->longitude:D

    .line 405
    iget-object v11, v3, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->name:Ljava/lang/String;

    .line 406
    iget-object v12, v3, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->address:Ljava/lang/String;

    const-string v13, "RouteGuideApiImp"

    .line 408
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "requestRoutePlanOrNavi destNode : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v7, v13

    if-lez v15, :cond_d

    const-wide v15, 0x4066800000000000L    # 180.0

    cmpg-double v17, v7, v15

    if-gez v17, :cond_d

    cmpl-double v17, v9, v13

    if-lez v17, :cond_d

    cmpg-double v17, v9, v15

    if-ltz v17, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eqz v5, :cond_2

    .line 413
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v13, 0x2

    if-le v15, v13, :cond_2

    const-string v0, "RouteGuideApiImp"

    const-string v1, "passNodeList size must <3"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const/high16 v13, 0x10000000

    const/4 v14, 0x1

    if-nez v1, :cond_5

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v1

    if-ne v1, v14, :cond_3

    const-string v0, "RouteGuideApiImp"

    const-string v1, "jump routeplan fail,reason: currently in navigation"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 423
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "jumpRoutePage"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "poiName"

    .line 425
    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "poiAddress"

    .line 426
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "latitude"

    .line 427
    invoke-virtual {v1, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "longitude"

    .line 428
    invoke-virtual {v1, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "routePreferenceId"

    .line 429
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 431
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "poiList"

    .line 433
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_5
    if-ne v1, v14, :cond_7

    .line 439
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "startStopNavi"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "startStopType"

    .line 441
    invoke-virtual {v1, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isRealNavi"

    .line 442
    invoke-virtual {v1, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "forceStartSpeak"

    .line 443
    invoke-virtual {v1, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "destLatitude"

    .line 444
    invoke-virtual {v1, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "destLongitude"

    .line 445
    invoke-virtual {v1, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "routePreferenceId"

    .line 446
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v5, :cond_6

    .line 448
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "poiList"

    .line 449
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "startNaviType"

    const/4 v2, 0x3

    .line 450
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    const-string v0, "startNaviType"

    .line 453
    invoke-virtual {v1, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    :goto_0
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_7
    if-nez v2, :cond_8

    .line 462
    new-instance v1, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;

    invoke-direct {v1}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;-><init>()V

    .line 463
    invoke-static {}, Lcom/tencent/taes/TaesSDK;->getLocationApi()Lcom/tencent/taes/api/location/ILocationApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/taes/api/location/ILocationApi;->getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    move-result-object v2

    .line 464
    iget-wide v7, v2, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->latitude:D

    iput-wide v7, v1, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->latitude:D

    .line 465
    iget-wide v7, v2, Lcom/tencent/taes/remote/api/location/bean/LocationBean;->longitude:D

    iput-wide v7, v1, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->longitude:D

    goto :goto_1

    :cond_8
    const-string v1, "RouteGuideApiImp"

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRoutePlanOrNavi startNode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-wide v7, v2, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->latitude:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_c

    iget-wide v7, v2, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->latitude:D

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpg-double v1, v7, v11

    if-gez v1, :cond_c

    iget-wide v7, v2, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->longitude:D

    cmpl-double v1, v7, v9

    if-lez v1, :cond_c

    iget-wide v7, v2, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;->longitude:D

    cmpg-double v1, v7, v11

    if-ltz v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v1, v2

    .line 474
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v2

    if-eq v2, v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRoutePlanCount()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 478
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V

    :goto_2
    return v14

    :cond_b
    :goto_3
    const-string v0, "RouteGuideApiImp"

    const-string v1, "searchRoutePlanResult fail,reason: currently in navigation or routeplan"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c
    :goto_4
    const-string v0, "RouteGuideApiImp"

    const-string v1, "searchRoutePlanResult fail,reason: startNode param invaild"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_d
    :goto_5
    const-string v0, "RouteGuideApiImp"

    const-string v1, "destNode param invaild"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchRouteCondInfo distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->searchRouteCondInfo(ILcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V

    :cond_0
    return-void
.end method

.method public searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            "I",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
            ">;",
            "Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getRouteGuideApi()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;->searchRoutePlanResult(Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;ILjava/util/List;Lcom/tencent/taes/remote/api/routeguide/listener/IRoutePlanResultListener;)V

    :cond_0
    return-void
.end method

.method public selectRoutePlanIndex(IZ)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectRoutePlanIndex  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " anim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "selectRoutPlan"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "routePlanIndex"

    .line 189
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "startNaviType"

    .line 190
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 191
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setCruiseSpeakType(Z)V
    .locals 2

    const-string p0, "RouteGuideApiImp"

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCruiseSpeakType : open \u2014\u2014>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "closeSpeak"

    .line 586
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getEventDispatcher()Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    move-result-object p1

    new-instance v0, Lcom/tencent/taes/framework/bean/IPCEvent;

    const-string v1, "setCruiseSpeakType"

    invoke-direct {v0, v1, p0}, Lcom/tencent/taes/framework/bean/IPCEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 588
    invoke-virtual {p1, v0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    return-void
.end method

.method public setRouteGuideSpeakMute(Z)V
    .locals 2

    const-string p0, "RouteGuideApiImp"

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRouteGuideSpeakMute : bMute \u2014\u2014>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "closeSpeak"

    .line 599
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getEventDispatcher()Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    move-result-object p1

    new-instance v0, Lcom/tencent/taes/framework/bean/IPCEvent;

    const-string v1, "setRouteGuideSpeakMute"

    invoke-direct {v0, v1, p0}, Lcom/tencent/taes/framework/bean/IPCEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 601
    invoke-virtual {p1, v0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    return-void
.end method

.method public setRoutePreference(I)Z
    .locals 4

    .line 377
    invoke-virtual {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->getNaviStatus()I

    move-result v0

    const-string v1, "RouteGuideApiImp"

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoutePreference :  \u2014\u2014>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 380
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "routePreferenceId"

    .line 381
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getEventDispatcher()Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    move-result-object p1

    new-instance v0, Lcom/tencent/taes/framework/bean/IPCEvent;

    const-string v2, "setRoutePreference"

    invoke-direct {v0, v2, p0}, Lcom/tencent/taes/framework/bean/IPCEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "setRoutePreference"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "routePreferenceId"

    .line 386
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 387
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v1
.end method

.method public startCruise(Z)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCruise : forceStartSpeak \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "startStopCruise"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "startStopType"

    const/4 v1, 0x1

    .line 552
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "closeSpeak"

    .line 553
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 554
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startNavi(ZZDD)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNavi : isRealNavi \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , forceStartSpeak \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , destLatitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , destLongitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "startStopNavi"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "startStopType"

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isRealNavi"

    .line 209
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "forceStartSpeak"

    .line 210
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "destLatitude"

    .line 211
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "destLongitude"

    .line 212
    invoke-virtual {v0, p0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "startNaviType"

    .line 213
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 214
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startNavi(ZZDDDD)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNavi : isRealNavi \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , forceStartSpeak \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , startLatitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , startLongitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , destLatitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , destLongitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9, p10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "startStopNavi"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "startStopType"

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isRealNavi"

    .line 236
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "forceStartSpeak"

    .line 237
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "startLatitude"

    .line 238
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "startLongitude"

    .line 239
    invoke-virtual {v0, p0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "destLatitude"

    .line 240
    invoke-virtual {v0, p0, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "destLongitude"

    .line 241
    invoke-virtual {v0, p0, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "startNaviType"

    const/4 p1, 0x2

    .line 242
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 243
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startNavi(ZZLjava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/remote/api/search/bean/SearchPoi;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p0, "RouteGuideApiImp"

    const-string p1, "startNavi fail,searchPoiList ==null"

    .line 256
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 258
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "RouteGuideApiImp"

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNavi : isRealNavi \u2014\u2014>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , forceStartSpeak \u2014\u2014>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , searchPoiList size \u2014\u2014>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "startStopNavi"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "startStopType"

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isRealNavi"

    .line 267
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "forceStartSpeak"

    .line 268
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "poiList"

    .line 269
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "startNaviType"

    .line 270
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 271
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    :goto_0
    const-string p0, "RouteGuideApiImp"

    const-string p1, "startNavi fail,searchPoiList size must > 0 and < 4"

    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public stopCruise(Z)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCruise : closeSpeak \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "startStopCruise"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "startStopType"

    const/4 v1, 0x2

    .line 567
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "closeSpeak"

    .line 568
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 569
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public stopNavi(Z)V
    .locals 2

    const-string p0, "RouteGuideApiImp"

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNavi : closeSpeak \u2014\u2014>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "startStopType"

    const/4 v1, 0x2

    .line 519
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "closeSpeak"

    .line 520
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getEventDispatcher()Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;

    move-result-object p1

    new-instance v0, Lcom/tencent/taes/framework/bean/IPCEvent;

    const-string v1, "startStopNavi"

    invoke-direct {v0, v1, p0}, Lcom/tencent/taes/framework/bean/IPCEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    invoke-virtual {p1, v0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    return-void
.end method

.method public updateNaviDest(DD)V
    .locals 3

    const-string v0, "RouteGuideApiImp"

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNaviDest : destLatitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , destLongitude \u2014\u2014>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "updateNaviDest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "destLatitude"

    .line 536
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "destLongitude"

    .line 537
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 538
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
