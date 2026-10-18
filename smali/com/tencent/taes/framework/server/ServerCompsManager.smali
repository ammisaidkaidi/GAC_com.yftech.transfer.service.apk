.class public Lcom/tencent/taes/framework/server/ServerCompsManager;
.super Lcom/tencent/taes/framework/server/BaseClient;
.source "ServerCompsManager.java"

# interfaces
.implements Lcom/tencent/taes/framework/interfaces/ICompManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerCompsManager"


# instance fields
.field private isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppAlias:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mCacheAPIs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheLoadComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLoadedComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingLoadList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;",
            "Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSmsPkgs:[Ljava/lang/String;

.field private mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

.field private mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/server/BaseClient;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    .line 64
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheAPIs:Ljava/util/Map;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SM_Work_Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/taes/framework/server/ServerCompsManager;)Lcom/tencent/taes/framework/remote/IServiceManagerService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/framework/server/ServerCompsManager;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/framework/server/ServerCompsManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->exitApp()V

    return-void
.end method

.method private asynHandleConnect()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mAppAlias:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/taes/framework/server/ServerCompsManager;->verifyAppId(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheAPIs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 392
    instance-of v2, v1, Lcom/tencent/taes/remote/impl/BaseRemoteApi;

    if-eqz v2, :cond_0

    .line 393
    check-cast v1, Lcom/tencent/taes/remote/impl/BaseRemoteApi;

    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    invoke-virtual {v1, v2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->setServiceManagerService(Lcom/tencent/taes/framework/remote/IServiceManagerService;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    .line 253
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x192

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 257
    invoke-virtual {v1, p2}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getFeaturesBean(Ljava/lang/String;)Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;

    move-result-object v1

    const-string v2, "ServerCompsManager"

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApi Remote featuresBean\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->getBinderName()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->getApiImpl()Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    invoke-interface {v3, p1, v2, p3}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->getRemoteBinder(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p3, "code"

    .line 265
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string v2, "ServerCompsManager"

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApi Remote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string p3, "data"

    .line 268
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 270
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 271
    invoke-virtual {p3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    invoke-interface {p1}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 273
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheAPIs:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {p1}, Lcom/tencent/taes/framework/APIResult;->ofSuccess(Ljava/lang/Object;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    invoke-static {p3}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x191

    .line 280
    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    :cond_2
    invoke-static {v0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0
.end method

.method private exitApp()V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 472
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 474
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 475
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/4 p0, 0x0

    .line 480
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private getSHA1Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    .line 491
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x40

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 496
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    const-string p2, "SHA1"

    .line 497
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 498
    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    array-length v0, p0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 502
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "0"

    .line 505
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_2

    const-string v1, ":"

    .line 508
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ServerCompsManager"

    const-string p2, "getSHA1Signature : "

    .line 513
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private loadComponentsInner(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;",
            "Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;",
            ")V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/framework/server/ServerCompsManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/taes/framework/server/ServerCompsManager$1;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager;Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private verifyAppId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/taes/util/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    if-nez v0, :cond_1

    const-string p0, "ServerCompsManager"

    const-string p1, "mServiceManagerService = null !!!"

    .line 446
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 451
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 452
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/tencent/taes/framework/server/ServerCompsManager;->getSHA1Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/tencent/taes/framework/server/ServerCompsManager$4;

    invoke-direct {v6, p0}, Lcom/tencent/taes/framework/server/ServerCompsManager$4;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager;)V

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->verifyAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/framework/auth/IClientVerifyResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 462
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkModuleLoaded(Ljava/lang/String;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x64

    .line 200
    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x133

    .line 205
    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 209
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheAPIs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheAPIs:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofSuccess(Ljava/lang/Object;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    if-nez v0, :cond_3

    const/16 p0, 0x258

    .line 216
    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/taes/framework/server/ServerCompsManager;->createApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0

    .line 225
    :cond_4
    iget-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/tencent/taes/framework/server/ServerCompsManager$2;

    invoke-direct {p3, p0, p1}, Lcom/tencent/taes/framework/server/ServerCompsManager$2;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 p0, 0x130

    .line 248
    invoke-static {p0}, Lcom/tencent/taes/framework/APIResult;->ofError(I)Lcom/tencent/taes/framework/APIResult;

    move-result-object p0

    return-object p0
.end method

.method public getModuleHostInfo(Ljava/lang/String;)Lcom/tencent/taes/framework/bean/ModuleHostInfo;
    .locals 6

    .line 317
    new-instance v0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;

    invoke-direct {v0}, Lcom/tencent/taes/framework/bean/ModuleHostInfo;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 323
    :try_start_0
    iget-object v3, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 324
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "SUPPORT_SMS_ROUTE"

    .line 325
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SUPPORT_SMS_ROUTE"

    .line 326
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    new-instance v3, Lcom/tencent/taes/framework/server/router/SingleAppRouterStrategy;

    invoke-direct {v3}, Lcom/tencent/taes/framework/server/router/SingleAppRouterStrategy;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 331
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 335
    new-instance v3, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;

    invoke-direct {v3}, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;-><init>()V

    .line 338
    :cond_1
    iget-object v4, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getActionName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 339
    invoke-interface {v3}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v2, v1, Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->setHostName(Ljava/lang/String;)V

    .line 342
    iget-object v1, v1, Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->setVersion(Ljava/lang/String;)V

    .line 343
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->setLoaded(Z)V

    return-object v0

    :cond_2
    return-object v2
.end method

.method public getModuleHostPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 293
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "SUPPORT_SMS_ROUTE"

    .line 294
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SUPPORT_SMS_ROUTE"

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    if-eqz p1, :cond_1

    .line 305
    new-instance v0, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;

    invoke-direct {v0}, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getActionName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 307
    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 309
    iget-object p0, p1, Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;->pkgName:Ljava/lang/String;

    return-object p0

    .line 312
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleConnect(Landroid/os/IBinder;)V
    .locals 2

    .line 374
    invoke-static {p1}, Lcom/tencent/taes/framework/remote/IServiceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/framework/remote/IServiceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    .line 376
    iget-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    if-eqz p1, :cond_0

    const-string p1, "ServerCompsManager"

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V

    const/4 p1, 0x0

    .line 379
    iput-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->asynHandleConnect()V

    return-void
.end method

.method protected handleDisConnect()V
    .locals 3

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mLoadedComps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    new-instance v1, Lcom/tencent/taes/framework/server/ServerCompsManager$3;

    invoke-direct {v1, p0}, Lcom/tencent/taes/framework/server/ServerCompsManager$3;-><init>(Lcom/tencent/taes/framework/server/ServerCompsManager;)V

    .line 430
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    return-void
.end method

.method public varargs init(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    aget-object v0, p2, v2

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    .line 91
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mAppId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 92
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mAppAlias:Ljava/lang/String;

    .line 94
    new-instance p2, Lcom/tencent/taes/framework/server/router/SMSRouterStrategy;

    invoke-direct {p2}, Lcom/tencent/taes/framework/server/router/SMSRouterStrategy;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    .line 95
    iget-object p2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    const-string v0, "com.tencent.taes.framework.CREATE_SMS"

    iget-object v1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 96
    iget-object p1, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    invoke-interface {p1}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p1, Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;->intent:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/framework/server/ServerCompsManager;->connect(Landroid/content/Intent;Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V

    :cond_0
    return-void
.end method

.method public loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;",
            "Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 113
    iget-object v2, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    sget-object p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_NO_INIT:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 118
    iget p1, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    iget-object p0, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onLoadFail(ILjava/lang/String;)V

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    invoke-interface {v0}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 123
    sget-object p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->ERROR_SMS_NO_FOUND:Lcom/tencent/taes/framework/TaesConstants$CompLoadState;

    .line 124
    iget p1, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->code:I

    iget-object p0, p0, Lcom/tencent/taes/framework/TaesConstants$CompLoadState;->message:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;->onLoadFail(ILjava/lang/String;)V

    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    return-void

    .line 133
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/framework/server/ServerCompsManager;->loadComponentsInner(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/ServerCompsManager;->destroy()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mRemoteSmsPkgs:[Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    .line 355
    iput-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mPendingLoadList:Landroid/util/Pair;

    .line 356
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mCacheLoadComps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public unloadComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/ServerCompsManager;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->unloadServiceComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
