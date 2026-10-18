.class public Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"


# static fields
.field private static final APPID_META_KEY:Ljava/lang/String; = "TAI_SPEECH_APPID"

.field private static final SYSTEM_EVENT_DISPATCH_RETRY_TIMES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SpeechClientMgr"

.field private static volatile mInstance:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;


# instance fields
.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;",
            ">;"
        }
    .end annotation
.end field

.field private mClientStateObserver:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

.field private mContext:Landroid/app/Application;

.field private mHandlerBinder:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIPCLinker:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinker;

.field private mInitCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsIPCLinked:Z

.field private mKeySign:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private volatile mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

.field private mSystemEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private stateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    .line 367
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$4;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$4;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->stateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIPCLinker:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinker;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSystemEventList:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "binder_interface"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerBinder:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInitCallbackList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/vframework/ISpeechService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)Lcom/tencent/wecarspeech/vframework/ISpeechService;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->setTaskDispatched(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getOneClientName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->addClientInitCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->initInner(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInitCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientStateObserver:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->stateListener:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerBinder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->onClientDisconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->verifyClient(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    return-object p0
.end method

.method private addClientInitCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInitCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInitCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private getDefaultClient()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 1

    .line 294
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 295
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 80
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInstance:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInstance:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInstance:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInstance:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    return-object v0
.end method

.method private getOneClientName()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 571
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initInner(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIPCLinker:Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinker;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinker;->linkRemoteService(Landroid/content/Context;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V

    :cond_0
    return-void
.end method

.method private isMainThread()Z
    .locals 1

    .line 385
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 306
    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setSpeechService(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    .line 307
    invoke-direct {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->verifyClient(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance p0, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " appName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " appAlias = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSystemEventList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 313
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 315
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 317
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSystemEventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private onClientDisconnect()V
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 363
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->onClientDisconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerComeAliveReceiver(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 5

    const-string v0, "com.tencent.wecarspeech.vframework.WECARSPEECH_COME_ALIVE"

    .line 499
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "WECARSPEECH_COME_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;

    invoke-direct {v3, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "com.tencent.wecar.vframework.WECARSPEECH_COME_ALIVE"

    .line 510
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "WECARSPEECH_COME_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$9;

    invoke-direct {v3, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$9;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setTaskDispatched(J)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 456
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setTaskDispatched(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 458
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClientMgr"

    const-string p1, "setTaskDispatched err mSpeechService == null"

    .line 461
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private verifyClient(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z
    .locals 9

    .line 322
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 328
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVrMetaData()Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;->getVersionCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    const-string v2, "SpeechClientMgr"

    const-string v3, "setVerifyCallback"

    .line 330
    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    new-instance v7, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;

    invoke-direct {v7, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    move-object v3, v0

    move-object v6, v8

    invoke-interface/range {v2 .. v7}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setVerifyCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IClientVerifyResult;)V

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v8}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->verifyAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string v2, "TAI_SPEECH_APPID"

    .line 345
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    invoke-static {v3, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->getMetaDataValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    invoke-interface {p1, v2, v0, p0, v8}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->verifyAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return p1

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public appendRecordData(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClientMgr"

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendRecordData data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->appendRecordData(Ljava/lang/String;)V

    return-void
.end method

.method public appendRecordData([B)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 473
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->appendRecordData(Ljava/lang/String;)V

    return-void
.end method

.method public decTryAudioWeight(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 558
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->decTryAudioWeight(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClientMgr"

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decTryAudioWeight err "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClientMgr"

    const-string p1, "decTryAudioWeight err mSpeechService == null"

    .line 563
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dispatchSystemSkill(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14

    move-object v1, p0

    move-wide/from16 v9, p2

    const-string v0, "SpeechClientMgr"

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSystemSkill mIsIPCLinked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getClient(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SpeechClientMgr"

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSystemSkill client is null,invalid appId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";use default client"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getDefaultClient()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "SpeechClientMgr"

    const-string v2, "dispatchSystemSkill default client is null"

    .line 397
    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    move/from16 v11, p8

    if-ge v11, v0, :cond_1

    .line 399
    iget-object v12, v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerBinder:Landroid/os/Handler;

    new-instance v13, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v12, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .line 408
    :cond_2
    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getDispatcher()Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v2

    const-wide/16 v3, -0x1

    cmp-long v0, v9, v3

    if-nez v0, :cond_3

    move-object v0, v2

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 410
    invoke-interface/range {v0 .. v6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchDebugSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 411
    :cond_3
    iget-boolean v0, v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    if-eqz v0, :cond_4

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 412
    invoke-interface/range {v2 .. v8}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSystemSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    invoke-direct {p0, v9, v10}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->setTaskDispatched(J)V

    goto :goto_1

    .line 415
    :cond_4
    iget-object v11, v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSystemEventList:Ljava/util/List;

    new-instance v12, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public dispatchSystemWakeup(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "SpeechClientMgr"

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSystemWakeup mIsIPCLinked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getClient(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SpeechClientMgr"

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSystemWakeup client is null,invalid appId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";use default client"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getDefaultClient()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "SpeechClientMgr"

    const-string p1, "dispatchSystemWakeup default client is null"

    .line 435
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_1
    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getDispatcher()Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    move-result-object v3

    .line 439
    iget-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    if-eqz p1, :cond_2

    move-object v1, v3

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 440
    invoke-interface/range {v1 .. v6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSystemWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    .line 441
    invoke-direct {p0, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->setTaskDispatched(J)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSystemEventList:Ljava/util/List;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getClient(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "SpeechClientMgr"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in getClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    if-nez v0, :cond_0

    const-string v0, "SpeechClientMgr"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client is null!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    const-string v2, "SpeechClientMgr"

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get exist client!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    return-object p0

    .line 280
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appId cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClientSdkVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string p0, "3.1.0-5955959"

    return-object p0
.end method

.method public getIPCLinkStatus()Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 588
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    return p0
.end method

.method public getTryAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 527
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getTryAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClientMgr"

    .line 529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTryAudio err "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClientMgr"

    const-string p1, "getTryAudio err mSpeechService == null"

    .line 532
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTryAudioByTouch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getTryAudioByTouch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClientMgr"

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTryAudio err "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClientMgr"

    const-string p1, "getTryAudio err mSpeechService == null"

    .line 547
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/app/Application;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 98
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->initXlog()V

    if-nez p1, :cond_0

    .line 100
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    .line 104
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->getSHA1Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    const-string p1, "SpeechClientMgr"

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mKeySign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mKeySign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientStateObserver:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    if-nez p1, :cond_3

    .line 109
    invoke-direct {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerComeAliveReceiver(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    .line 110
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mContext:Landroid/app/Application;

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientStateObserver:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    .line 112
    :cond_3
    iget-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mIsIPCLinked:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 113
    invoke-interface {p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;->onClientReady()V

    return-void

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mInitCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 118
    invoke-direct {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->addClientInitCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    .line 119
    invoke-direct {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->initInner(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    goto :goto_2

    .line 121
    :cond_5
    invoke-direct {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->addClientInitCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    :goto_2
    return-void
.end method

.method public registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object p0

    return-object p0
.end method

.method public registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object p0

    return-object p0
.end method

.method public registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 13
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    move-object v0, p0

    move-object v10, p2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 232
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-object v1

    .line 235
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "appId cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-object v1

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->isMainThread()Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "registerClient can only be called on main thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-object v1

    :cond_2
    const-string v1, "SpeechClientMgr"

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeechClientMgr registerClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  appname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  isObserState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    iget-object v11, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    new-instance v12, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iget-object v3, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerBinder:Landroid/os/Handler;

    move-object v1, v12

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;-><init>(Landroid/app/Application;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-interface {v11, p2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "SpeechClientMgr"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeechClient already exists "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    iget-object v1, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mClientMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 253
    iget-object v2, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mHandlerBinder:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;

    invoke-direct {v3, p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v1, :cond_4

    .line 264
    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-virtual {v1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    :cond_4
    return-object v1
.end method

.method public registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    .line 216
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;

    move-result-object p0

    return-object p0
.end method

.method public setDebug(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 494
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->setDebug(Z)V

    return-void
.end method

.method public setIsThrowException(Z)V
    .locals 2

    .line 597
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->setIsThrowException(Z)V

    const-string p0, "SpeechClientMgr"

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsThrowException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogger(Lcom/tencent/wecarspeech/clientsdk/utils/log/ILogger;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 484
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->setLogger(Lcom/tencent/wecarspeech/clientsdk/utils/log/ILogger;)V

    return-void
.end method

.method public setOpenLog(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 489
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->setOpenLog(Z)V

    return-void
.end method

.method public setUseCustomRecorder(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClientMgr"

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseCustomRecorder isCustomRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setUseCustomRecorder(Z)V

    return-void
.end method
