.class public Lcom/tencent/taes/api/moss/BaseApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "BaseApiImpl.java"


# static fields
.field protected static final OR:Ljava/lang/String; = "||"


# instance fields
.field private final SERVICE_API:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field protected mMossApiCallback:Lcom/tencent/mosssdk/IMossApiCallback$Stub;

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 18
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "onMusicStatusChange"

    const-string v2, "onMusicInfoChange"

    const-string v3, "loadAllAppsFromNet"

    const-string v4, "recentAppDataChange"

    const-string v5, "loadAllAppsFromCache"

    const-string v6, "minAppFrontChange"

    const-string v7, "requestRecommendAppList"

    const-string v8, "requestDetailRecommendAppList"

    const-string v9, "requestLbsRecommend"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->SERVICE_API:Ljava/util/ArrayList;

    const-string v0, "BaseApiImpl"

    .line 32
    iput-object v0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/api/moss/BaseApiImpl$1;-><init>(Lcom/tencent/taes/api/moss/BaseApiImpl;)V

    iput-object v0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->mMossApiCallback:Lcom/tencent/mosssdk/IMossApiCallback$Stub;

    return-void
.end method

.method private SERVICE_API()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->SERVICE_API:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$000(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/Object;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->object:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected checkAppExit(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 100
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "checkAppExit"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInvokeFunc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/api/moss/BaseApiImpl;->SERVICE_API()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/tencent/taes/api/moss/BaseApiImpl;->SERVICE_API()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "||"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    const-string p1, "||"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tencent/taes/api/moss/BaseApiImpl;->object:Ljava/lang/Object;

    return-void
.end method
