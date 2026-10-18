.class public Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;
.super Ljava/lang/Object;
.source "MessageListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageListener"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field private mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

.field private mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

.field private mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;


# direct methods
.method protected constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/vframework/ISpeechService;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 36
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    .line 37
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 38
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 46
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getClientType()J

    move-result-wide v5

    .line 47
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageListener"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start appInfoStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$1;

    invoke-direct {v3, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerClient(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IWeCarCallback;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getInstance()Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->getClientSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setClientSdkVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSREventCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISREventCallback;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$3;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerWakeupCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IWakeupCallback;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVrMetaData()Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;->getVersionCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$4;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerDuplexSSRCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$5;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$5;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerDuplexSTrvCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$6;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$6;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSSRCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSRCallback;)V

    .line 153
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$7;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$7;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSTrvCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISTrvCallback;)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mWecarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener$8;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSTTCallback(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSRCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method
