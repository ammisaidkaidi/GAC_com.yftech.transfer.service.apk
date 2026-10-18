.class public Lcom/tencent/wecarbase/client/TaiUpdateManager;
.super Lcom/tencent/wecarbase/client/BaseManager;
.source "TaiUpdateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaiUpdateManager"

.field private static volatile sInstance:Lcom/tencent/wecarbase/client/TaiUpdateManager;


# instance fields
.field private mTaiCallback:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;

.field private mTaiUpdateService:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/tencent/wecarbase/client/TaiUpdateManager;

    invoke-direct {v0}, Lcom/tencent/wecarbase/client/TaiUpdateManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->sInstance:Lcom/tencent/wecarbase/client/TaiUpdateManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.account.TAI_UPDATE"

    .line 39
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/tencent/wecarbase/client/TaiUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/TaiUpdateManager$1;-><init>(Lcom/tencent/wecarbase/client/TaiUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiCallback:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/tencent/wecarbase/client/TaiUpdateManager$1;

    invoke-direct {p1, p0}, Lcom/tencent/wecarbase/client/TaiUpdateManager$1;-><init>(Lcom/tencent/wecarbase/client/TaiUpdateManager;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiCallback:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCientInfo()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SDKVersion"

    const-string v1, "3.1.0.474"

    .line 67
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VersionCode"

    const-string v1, "201908281045"

    .line 68
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PackageName"

    .line 69
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/TaiUpdateManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->sInstance:Lcom/tencent/wecarbase/client/TaiUpdateManager;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BaseManager;->destroy()V

    return-void
.end method

.method protected dispose()V
    .locals 0

    return-void
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected onServiceConnectedOk(Landroid/os/IBinder;)V
    .locals 1

    .line 76
    invoke-static {p1}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiUpdateService:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    .line 77
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/TaiUpdateManager;->getCientInfo()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiCallback:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarbase/client/TaiUpdateManager;->syncVersionInfo(Ljava/util/Map;Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;)V

    .line 78
    sget-object p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->TAG:Ljava/lang/String;

    const-string p1, " syncVersionInfo TaiUpdateService onConnectedOk"

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiUpdateService:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public syncVersionInfo(Ljava/util/Map;Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;",
            ")V"
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiUpdateService:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->mTaiUpdateService:Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;->syncVersionInfo(Ljava/util/Map;Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/TaiUpdateManager;->TAG:Ljava/lang/String;

    const-string p1, "syncVersionInfo, TaiUpdateService is not initialed."

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
