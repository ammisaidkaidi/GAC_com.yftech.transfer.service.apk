.class public Lcom/tencent/taes/impl/search/PoiSearchApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "PoiSearchApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/search/IPoiSearchApi;


# static fields
.field public static final TAG:Ljava/lang/String; = "PoiSearchApi"


# instance fields
.field private mIntentAction:Ljava/lang/String;

.field private mIntentScheme:Ljava/lang/String;

.field private mPoiSearchApi:Lcom/tencent/taes/remote/api/search/IPoiSearchApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mPoiSearchApi:Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    .line 46
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiScheme"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/tencent/taes/util/config/ConfigManager;->getInstance()Lcom/tencent/taes/util/config/ConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/util/config/ConfigManager;->getConfigInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/taes/util/config/ConfigInfo;

    move-result-object v0

    const-string v1, "intentApiAction"

    invoke-virtual {v0, v1}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    new-instance v2, Lcom/tencent/taes/impl/search/PoiSearchApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl$1;-><init>(Lcom/tencent/taes/impl/search/PoiSearchApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method


# virtual methods
.method public cancelSearch(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->cancelSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mPoiSearchApi:Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "MapService"

    const-class v2, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mPoiSearchApi:Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    goto :goto_0

    :cond_0
    const-string v1, "PoiSearchApi"

    .line 67
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

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mPoiSearchApi:Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    return-object p0
.end method

.method public goFavoritePage()V
    .locals 2

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "open_favorite_page"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 172
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goPoiDetailPage(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 2

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address"

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lat"

    .line 181
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "lon"

    .line 182
    invoke-virtual {v0, p1, p5, p6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 184
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "open_poi_detail_page"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 186
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
    .locals 2

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "open_search_page"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "from"

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 84
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->searchKeyWord(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->searchKeyWordByRoad(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/listener/PoiSearchByRoadListener;)V

    :cond_0
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;)V
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "open_search_page"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "open_search_result_page"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_search_poi_keyword"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public searchNearby(ILjava/lang/String;)V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nearby_search"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_search_type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_search_poi_keyword"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 139
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public searchNearby(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;)V
    .locals 2

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->mIntentScheme:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nearby_search"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_search_poi_keyword"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "key_search_latLng"

    .line 148
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 149
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->searchNearbyLatLng(Ljava/lang/String;Lcom/tencent/taes/remote/api/location/bean/LatLng;Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string p0, "PoiSearchApi"

    const-string p1, "keyword or listener is null"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->showPoiDetail(Lcom/tencent/taes/remote/api/search/bean/SearchPoi;)V

    :cond_0
    return-void
.end method

.method public showPoiResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->showPoiResult(Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V

    :cond_0
    return-void
.end method

.method public showPoiResult(Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/tencent/taes/impl/search/PoiSearchApiImpl;->getSearchApi()Lcom/tencent/taes/remote/api/search/IPoiSearchApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/search/IPoiSearchApi;->showPoiResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
