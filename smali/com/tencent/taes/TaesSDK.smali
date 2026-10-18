.class public Lcom/tencent/taes/TaesSDK;
.super Ljava/lang/Object;
.source "TaesSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/TaesSDK$ServiceEnum;,
        Lcom/tencent/taes/TaesSDK$InitListener;
    }
.end annotation


# static fields
.field private static final APIs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/taes/impl/base/AbstractApi;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CHECK_INTERVAL:I = 0x3a98

.field private static final MAX_RETRY_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "TaesSDK"

.field private static final mAPIInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/tencent/taes/impl/base/AbstractApi;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExcludeServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sAPIs:Lcom/tencent/taes/TaesSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/taes/TaesSDK;->mExcludeServices:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/taes/TaesSDK;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Lcom/tencent/taes/TaesSDK$1;

    invoke-direct {v0}, Lcom/tencent/taes/TaesSDK$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/taes/TaesSDK;->APIs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/tencent/taes/TaesSDK;->isHostAppInstalled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/taes/TaesSDK;->initInner(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V

    return-void
.end method

.method public static addExcludeService(Ljava/lang/String;)V
    .locals 1

    .line 275
    sget-object v0, Lcom/tencent/taes/TaesSDK;->mExcludeServices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 497
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_1

    const-string p1, "TaesSDK"

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "TaesSDK"

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p1, "WeCarNaviStub"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 413
    monitor-enter p1

    .line 414
    :try_start_0
    sget-object v0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    .line 418
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/taes/TaesSDK;->APIs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :try_start_2
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/tencent/taes/impl/base/AbstractApi;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "TaesSDK"

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 420
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the param of getApi can\'t get a class from APIs."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_0
    :try_start_4
    const-string v1, "TaesSDK"

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    :goto_1
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 410
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "the param of getApi can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static destoryAccountApi()V
    .locals 1

    .line 366
    const-class v0, Lcom/tencent/taes/api/account/IAccountApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryInfoDispatchApi()V
    .locals 1

    .line 374
    const-class v0, Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryLocationApi()V
    .locals 1

    .line 386
    const-class v0, Lcom/tencent/taes/api/location/ILocationApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryMapApi()V
    .locals 1

    .line 378
    const-class v0, Lcom/tencent/taes/api/map/IMapApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryMossApi()V
    .locals 1

    .line 362
    const-class v0, Lcom/tencent/taes/api/moss/IMossApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryOpenApi()V
    .locals 1

    .line 358
    const-class v0, Lcom/tencent/taes/api/open/IOpenApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryPoiSearchApi()V
    .locals 1

    .line 354
    const-class v0, Lcom/tencent/taes/api/search/IPoiSearchApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryRouteGuideApi()V
    .locals 1

    .line 382
    const-class v0, Lcom/tencent/taes/api/routeguide/IRouteGuideApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destoryTtsApi()V
    .locals 1

    .line 370
    const-class v0, Lcom/tencent/taes/api/tts/ITtsApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method public static destroyAllApi()V
    .locals 2

    .line 394
    sget-object v0, Lcom/tencent/taes/TaesSDK;->APIs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 395
    invoke-static {v1}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static destroyApi(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/tencent/taes/TaesSDK;->getInstance()Lcom/tencent/taes/TaesSDK;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tencent/taes/TaesSDK;->dispose(Ljava/lang/Class;)V

    return-void
.end method

.method public static destroyGUIPolicyApi()V
    .locals 1

    .line 390
    const-class v0, Lcom/tencent/taes/api/gui/IGUIPolicyApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->destroyApi(Ljava/lang/Class;)V

    return-void
.end method

.method private dispose(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 435
    monitor-enter p1

    .line 436
    :try_start_0
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/impl/base/AbstractApi;

    if-eqz p0, :cond_0

    const-string v0, "TaesSDK"

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/tencent/taes/impl/base/AbstractApi;->dispose()V

    .line 440
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static excludeNoNeedService(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 280
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 282
    sget-object v3, Lcom/tencent/taes/TaesSDK;->mExcludeServices:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "TaesSDK"

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "excludeService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public static getAccountApi()Lcom/tencent/taes/api/account/IAccountApi;
    .locals 1

    .line 326
    const-class v0, Lcom/tencent/taes/api/account/IAccountApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/account/IAccountApi;

    return-object v0
.end method

.method public static getApi(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/tencent/taes/TaesSDK;->getInstance()Lcom/tencent/taes/TaesSDK;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tencent/taes/TaesSDK;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Context cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGUIPolicyApi()Lcom/tencent/taes/api/gui/IGUIPolicyApi;
    .locals 1

    .line 350
    const-class v0, Lcom/tencent/taes/api/gui/IGUIPolicyApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/gui/IGUIPolicyApi;

    return-object v0
.end method

.method public static getInfoDispatchApi()Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;
    .locals 1

    .line 338
    const-class v0, Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;

    return-object v0
.end method

.method private static getInstance()Lcom/tencent/taes/TaesSDK;
    .locals 2

    .line 256
    sget-object v0, Lcom/tencent/taes/TaesSDK;->sAPIs:Lcom/tencent/taes/TaesSDK;

    if-nez v0, :cond_1

    .line 257
    const-class v0, Lcom/tencent/taes/TaesSDK;

    monitor-enter v0

    .line 258
    :try_start_0
    sget-object v1, Lcom/tencent/taes/TaesSDK;->sAPIs:Lcom/tencent/taes/TaesSDK;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Lcom/tencent/taes/TaesSDK;

    invoke-direct {v1}, Lcom/tencent/taes/TaesSDK;-><init>()V

    sput-object v1, Lcom/tencent/taes/TaesSDK;->sAPIs:Lcom/tencent/taes/TaesSDK;

    .line 261
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 263
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/taes/TaesSDK;->sAPIs:Lcom/tencent/taes/TaesSDK;

    return-object v0
.end method

.method public static getLocationApi()Lcom/tencent/taes/api/location/ILocationApi;
    .locals 1

    .line 346
    const-class v0, Lcom/tencent/taes/api/location/ILocationApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/location/ILocationApi;

    return-object v0
.end method

.method public static getMapApi()Lcom/tencent/taes/api/map/IMapApi;
    .locals 1

    .line 334
    const-class v0, Lcom/tencent/taes/api/map/IMapApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/map/IMapApi;

    return-object v0
.end method

.method public static getMossApi()Lcom/tencent/taes/api/moss/IMossApi;
    .locals 1

    .line 314
    const-class v0, Lcom/tencent/taes/api/moss/IMossApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/moss/IMossApi;

    return-object v0
.end method

.method public static getOpenApi()Lcom/tencent/taes/api/open/IOpenApi;
    .locals 1

    .line 310
    const-class v0, Lcom/tencent/taes/api/open/IOpenApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/open/IOpenApi;

    return-object v0
.end method

.method public static getPoiSearchApi()Lcom/tencent/taes/api/search/IPoiSearchApi;
    .locals 1

    .line 306
    const-class v0, Lcom/tencent/taes/api/search/IPoiSearchApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/search/IPoiSearchApi;

    return-object v0
.end method

.method public static getRouteGuideApi()Lcom/tencent/taes/api/routeguide/IRouteGuideApi;
    .locals 1

    .line 342
    const-class v0, Lcom/tencent/taes/api/routeguide/IRouteGuideApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/routeguide/IRouteGuideApi;

    return-object v0
.end method

.method public static getSceneApi()Lcom/tencent/taes/api/scene/ISceneApi;
    .locals 1

    .line 322
    const-class v0, Lcom/tencent/taes/api/scene/ISceneApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/scene/ISceneApi;

    return-object v0
.end method

.method public static getTtsApi()Lcom/tencent/taes/api/tts/ITtsApi;
    .locals 1

    .line 330
    const-class v0, Lcom/tencent/taes/api/tts/ITtsApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/tts/ITtsApi;

    return-object v0
.end method

.method public static getWeCarMasApi()Lcom/tencent/taes/api/moss/IWeCarMasApi;
    .locals 1

    .line 318
    const-class v0, Lcom/tencent/taes/api/moss/IWeCarMasApi;

    invoke-static {v0}, Lcom/tencent/taes/TaesSDK;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/moss/IWeCarMasApi;

    return-object v0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
    .locals 2

    .line 106
    sget-object v0, Lcom/tencent/taes/TaesSDK;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TaesSDK"

    const-string v1, "TAES SDK Version: 1.9.12.99"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/tencent/taes/TaesSDKHelper;->setContext(Landroid/content/Context;)V

    .line 115
    invoke-static {p1}, Lcom/tencent/taes/TaesSDKHelper;->setVersionType(I)V

    .line 116
    invoke-static {p0}, Lcom/tencent/taes/TaesSDK;->initTTSMoss(Landroid/content/Context;)V

    .line 118
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/taes/TaesSDK$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/tencent/taes/TaesSDK$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "TaesSDK"

    const-string p1, "listener is null or context is null"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static initInner(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
    .locals 6

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-static {v1}, Lcom/tencent/taes/util/FileUtils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "TaesSDK"

    const-string p1, "config is null"

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 207
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    :try_start_3
    new-instance v2, Lcom/tencent/taes/util/config/ConfigInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/tencent/taes/util/config/ConfigInfo;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "connectSMSPriorityPkgNames"

    .line 150
    invoke-virtual {v2, v0}, Lcom/tencent/taes/util/config/ConfigInfo;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/tencent/scenebizsdk/SceneManager;->getInstance()Lcom/tencent/scenebizsdk/SceneManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.tencent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "intentApiScheme"

    .line 152
    invoke-virtual {v2, v5}, Lcom/tencent/taes/util/config/ConfigInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.taes.push.mqtt.MqttManager.TaiPushService"

    .line 151
    invoke-virtual {v3, p0, v4, v5}, Lcom/tencent/scenebizsdk/SceneManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2, v0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Lcom/tencent/taes/framework/parser/ComponentUtils;->getServerComponents(Lcom/tencent/taes/util/config/ConfigInfo;)Ljava/util/List;

    move-result-object p0

    .line 158
    invoke-static {p0}, Lcom/tencent/taes/TaesSDK;->excludeNoNeedService(Ljava/util/List;)V

    .line 159
    sget-object p1, Lcom/tencent/taes/TaesSDK;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object p1

    new-instance p2, Lcom/tencent/taes/TaesSDK$3;

    invoke-direct {p2, p3}, Lcom/tencent/taes/TaesSDK$3;-><init>(Lcom/tencent/taes/TaesSDK$InitListener;)V

    invoke-virtual {p1, p0, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/listener/TAESCompsListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 207
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 203
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 207
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    .line 207
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    :cond_3
    :goto_4
    throw p0
.end method

.method private static initTTSMoss(Landroid/content/Context;)V
    .locals 4

    .line 219
    :try_start_0
    new-instance v0, Lcom/tencent/taes/impl/tts/TtsApiImpl;

    invoke-direct {v0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;-><init>()V

    .line 220
    invoke-virtual {v0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->initTts()V

    .line 221
    new-instance v1, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-direct {v1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;-><init>()V

    .line 222
    invoke-virtual {v1, p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->registerConnection(Landroid/content/Context;)V

    .line 223
    new-instance v2, Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-direct {v2}, Lcom/tencent/taes/impl/moss/MossApiImpl;-><init>()V

    .line 224
    invoke-virtual {v2, p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->registerConnection(Landroid/content/Context;)V

    .line 225
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    const-class v3, Lcom/tencent/taes/api/tts/ITtsApi;

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    const-class v0, Lcom/tencent/taes/api/moss/IWeCarMasApi;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lcom/tencent/taes/TaesSDK;->mAPIInstanceMap:Ljava/util/Map;

    const-class v0, Lcom/tencent/taes/api/moss/IMossApi;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static isHostAppInstalled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.tencent.wecar"

    .line 240
    invoke-static {p0, v0}, Lcom/tencent/taes/TaesSDK;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.tencent.wecarnavi"

    .line 241
    invoke-static {p0, v1}, Lcom/tencent/taes/TaesSDK;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v1, "TaesSDK"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInstallWeCar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isInstallWeCarNavi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const-string p0, "TaesSDK"

    const-string v0, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u5b89\u88c5\u817e\u8baf\u5730\u56fe\u6216\u817e\u8baf\u968f\u884cAPP\uff0c\u4f60\u5c06\u65e0\u6cd5\u4f7f\u7528TAES SDK\u7684\u80fd\u529b\u3002"

    .line 244
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    .locals 2

    const-class v0, Lcom/tencent/taes/TaesSDK;

    monitor-enter v0

    .line 471
    :try_start_0
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 470
    monitor-exit v0

    throw p0
.end method

.method public static unInit()V
    .locals 2

    .line 251
    sget-object v0, Lcom/tencent/taes/TaesSDK;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 252
    invoke-static {v0}, Lcom/tencent/taes/TaesSDKHelper;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static unregisterCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V
    .locals 1

    .line 481
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->unregisterCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method
