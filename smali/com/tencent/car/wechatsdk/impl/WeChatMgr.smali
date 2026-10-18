.class public Lcom/tencent/car/wechatsdk/impl/WeChatMgr;
.super Ljava/lang/Object;
.source "WeChatMgr.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final COME_ALIVE_ACTION:Ljava/lang/String; = "WECHAT_CAR_COME_ALIVE"

.field private static final TAG:Ljava/lang/String; = "WeChatMgr"

.field private static volatile mInstance:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;


# instance fields
.field private mContext:Landroid/app/Application;

.field private mHandler:Landroid/os/Handler;

.field private mIPCLinker:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;

.field private mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

.field private mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

.field private mServerObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWeChatService:Lcom/tencent/car/sdk/IWeChatService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;

    invoke-direct {v0}, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mIPCLinker:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mServerObserverList:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;

    invoke-direct {v0}, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/sdk/IWeChatService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/sdk/IWeChatService;)Lcom/tencent/car/sdk/IWeChatService;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/wechatsdk/impl/RemoteService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;Lcom/tencent/car/wechatsdk/impl/RemoteService;)Lcom/tencent/car/wechatsdk/impl/RemoteService;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mServerObserverList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->initInner()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/car/wechatsdk/impl/WeChatMgr;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 62
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInstance:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInstance:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-direct {v1}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;-><init>()V

    sput-object v1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInstance:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInstance:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    return-object v0
.end method

.method private initInner()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mIPCLinker:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;

    iget-object v1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    new-instance v2, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;

    invoke-direct {v2, p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$1;-><init>(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;->linkRemoteService(Landroid/content/Context;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V

    :cond_0
    return-void
.end method

.method private isSdkInit()Z
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerComeAliveReceiver()V
    .locals 3

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "WECHAT_CAR_COME_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    new-instance v2, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$2;

    invoke-direct {v2, p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$2;-><init>(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public carEventLaunchWeChat()V
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 530
    :try_start_0
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outsideLaunchWeChat\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getWeChatLoginState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getWeChatLoginState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/tencent/car/wechatsdk/utils/AppUtils;->launchWeChat(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 535
    sget-object v1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outsideLaunchWeChat\uff1ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/utils/AppUtils;->launchWeChat(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDashboardConfig()Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getDashboardConfig()Z

    move-result p0

    return p0

    .line 640
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotDisturbConfig()Z
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getNotDisturbConfig()Z

    move-result p0

    return p0

    .line 652
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserGuideConfig()Z
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getUserGuideConfig()Z

    move-result p0

    return p0

    .line 664
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatLoginState()Z
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatLoginState()Z

    move-result p0

    return p0

    .line 303
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatNotDisturbState()I
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatNotDisturbState()I

    move-result p0

    return p0

    .line 479
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatPanelState()Z
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatPanelState()Z

    move-result p0

    return p0

    .line 440
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatSdkVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string p0, "3.0.0.6446072"

    return-object p0
.end method

.method public getWeChatSemiAutoLoginState()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatSemiAutoLoginState()Z

    move-result p0

    return p0

    .line 453
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatUIState()I
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatUIState()I

    move-result p0

    return p0

    .line 221
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatUnreadMsgState()I
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatUnreadMsgState()I

    move-result p0

    return p0

    .line 604
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeChatVoipState()I
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->getWeChatVoipState()I

    move-result p0

    return p0

    .line 317
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->initXlog()V

    .line 80
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 82
    sget-object p1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v0, "init already"

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    :try_start_1
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    .line 89
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->registerComeAliveReceiver()V

    .line 90
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->initInner()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

.method public invokeWithText(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->invokeWithText(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 549
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invokeWithWakeupWord(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->invokeWithWakeupWord(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 563
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isHostAppInstalled(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "com.tencent.mm"

    .line 673
    invoke-static {p1, p0}, Lcom/tencent/car/wechatsdk/utils/AppUtils;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 674
    sget-object p1, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHostAppInstalled: isInstallWeChat ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 676
    sget-object p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string p1, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\uff0c\u60a8\u5c06\u65e0\u6cd5\u4f7f\u7528WeChat SDK\u5f97\u80fd\u529b\u3002"

    invoke-static {p0, p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWeChatServiceAvailable()Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 290
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchMiniProgramm(Lcom/tencent/car/export/miniprogramm/WXMiniProgrammDesc;)I
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->launchMiniProgramm(Lcom/tencent/car/export/miniprogramm/WXMiniProgrammDesc;)I

    move-result p0

    return p0

    .line 698
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public launchWeChat()V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 344
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "launchWeChat"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getWeChatSemiAutoLoginState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mContext:Landroid/app/Application;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/utils/AppUtils;->launchWeChat(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public logoutWeChat()V
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->logoutWeChat()V

    return-void

    .line 520
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string v0, "wechat service not available"

    invoke-direct {p0, v0}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openWeChat(Landroid/content/Context;)V
    .locals 0

    .line 687
    invoke-static {p1}, Lcom/tencent/car/wechatsdk/utils/AppUtils;->launchWeChat(Landroid/content/Context;)V

    return-void
.end method

.method public openWeChatFunctionPage(I)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->openWeChatFunctionPage(I)V

    return-void

    .line 617
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerServerConnectListener(Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 100
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerServerConnectListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mIPCLinker:Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;

    invoke-interface {v0}, Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;->getConnectedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;->onConnected()V

    :cond_0
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mServerObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mServerObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 102
    :cond_2
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 135
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatMessageListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V

    return-void

    .line 137
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 490
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatNotDisturbStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V

    return-void

    .line 492
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 382
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatPanelStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V

    return-void

    .line 384
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 410
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatSemiAutoLoginStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V

    return-void

    .line 412
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 191
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatUIStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V

    return-void

    .line 193
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 574
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatUnReadMsgStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V

    return-void

    .line 576
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 163
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "registerWeChatVoipListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->registerWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V

    return-void

    .line 165
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDebug(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 272
    invoke-static {p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->setDebug(Z)V

    return-void
.end method

.method public setExtDisplayState(ZLcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {v0, p2}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->SetDisplayStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;)V

    .line 625
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->setPanel(Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 627
    invoke-interface {p2, p0}, Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;->SetState(Z)V

    .line 628
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLogger(Lcom/tencent/car/wechatsdk/utils/log/ILogger;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->setLogger(Lcom/tencent/car/wechatsdk/utils/log/ILogger;)V

    return-void
.end method

.method public setOpenLog(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->setOpenLog(Z)V

    return-void
.end method

.method public setPanel(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->setPanel(Z)V

    return-void

    .line 359
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSemiAutoLogin(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->setSemiAutoLogin(Z)V

    return-void

    .line 371
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWeChatNotDisturbState(I)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mRemoteService:Lcom/tencent/car/wechatsdk/impl/RemoteService;

    invoke-virtual {p0, p1}, Lcom/tencent/car/wechatsdk/impl/RemoteService;->setWeChatNotDisturbState(I)V

    return-void

    .line 466
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;

    const-string p1, "wechat service not available"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/ServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterServerConnectListener(Lcom/tencent/car/wechatsdk/interfaces/IServerConnectListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 119
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterServerConnectListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mServerObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 149
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatMessageListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V

    return-void

    .line 151
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 504
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatNotDisturbStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V

    return-void

    .line 506
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 396
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatPanelStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V

    return-void

    .line 398
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 424
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatSemiAutoLoginStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V

    return-void

    .line 426
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 205
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatUIStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V

    return-void

    .line 207
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 588
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatSemiAutoLoginStateListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V

    return-void

    .line 590
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 177
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->TAG:Ljava/lang/String;

    const-string v1, "unregisterWeChatVoipListener"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isSdkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;->unregisterWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V

    return-void

    .line 179
    :cond_0
    new-instance p0, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;

    const-string p1, "sdk must init first"

    invoke-direct {p0, p1}, Lcom/tencent/car/wechatsdk/exceptions/SDKNotInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
