.class public Lcom/tencent/wecarbase/client/WebCenterManager;
.super Lcom/tencent/wecarbase/client/BaseManager;
.source "WebCenterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebCenterManager"

.field private static volatile sInstance:Lcom/tencent/wecarbase/client/WebCenterManager;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

.field private mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/tencent/wecarbase/client/WebCenterManager;

    invoke-direct {v0}, Lcom/tencent/wecarbase/client/WebCenterManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/client/WebCenterManager;->sInstance:Lcom/tencent/wecarbase/client/WebCenterManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.account.WEBCENTER_SERVICE"

    .line 31
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/client/WebCenterManager;)Lcom/tencent/wecarbase/IX5InitStatusListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/WebCenterManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/tencent/wecarbase/client/WebCenterManager;->sInstance:Lcom/tencent/wecarbase/client/WebCenterManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BaseManager;->destroy()V

    return-void
.end method

.method protected dispose()V
    .locals 0

    return-void
.end method

.method public getX5CoreStatus(Lcom/tencent/wecarbase/IX5InitStatusListener;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    const-string v1, "getX5CoreStatus in ."

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getX5CoreStatus, WebCenter manager is not initialed."

    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    if-eqz v2, :cond_0

    .line 86
    iget-object p0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/h5/IWebCenterService;->getX5CoreStatus(Lcom/tencent/wecarbase/IX5InitStatusListener;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p1, v1}, Lcom/tencent/wecarbase/IX5InitStatusListener;->onResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 97
    :try_start_1
    invoke-interface {p1, v1}, Lcom/tencent/wecarbase/IX5InitStatusListener;->onResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 100
    :catch_1
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    const-string p1, "getX5CoreStatus end ."

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarbase/IX5InitStatusListener;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/WebCenterManager;->init(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 55
    iput-object p2, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mPackageName:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mPackageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {p2}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TAI_C/S"

    const-string p2, "_C/S"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 60
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getIOPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object p1

    new-instance p2, Lcom/tencent/wecarbase/client/WebCenterManager$1;

    invoke-direct {p2, p0}, Lcom/tencent/wecarbase/client/WebCenterManager$1;-><init>(Lcom/tencent/wecarbase/client/WebCenterManager;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public launchApplet(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/h5/IWebCenterService;->launchApplet(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    const-string p1, "launchApplet, WebCenter manager is not initialed."

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public launchWebView(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/h5/IWebCenterService;->launchWebView(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    const-string p1, "launchWebView, WebCenter manager is not initialed."

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onServiceConnectedOk(Landroid/os/IBinder;)V
    .locals 1

    .line 141
    invoke-static {p1}, Lcom/tencent/wecarbase/h5/IWebCenterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/h5/IWebCenterService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    .line 142
    sget-object p1, Lcom/tencent/wecarbase/client/WebCenterManager;->TAG:Ljava/lang/String;

    const-string v0, "WebCenterService onConnectedOk"

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {p1}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TAI_C/S"

    const-string v0, "_C/S"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mX5InitStatusListener:Lcom/tencent/wecarbase/IX5InitStatusListener;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/WebCenterManager;->getX5CoreStatus(Lcom/tencent/wecarbase/IX5InitStatusListener;)V

    :cond_1
    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/tencent/wecarbase/client/WebCenterManager;->mWebCenterService:Lcom/tencent/wecarbase/h5/IWebCenterService;

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method
