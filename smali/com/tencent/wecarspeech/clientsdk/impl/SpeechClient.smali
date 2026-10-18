.class public Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechClient"

.field private static final mSyncLock:Ljava/lang/Object;


# instance fields
.field private final DELAY_MILLIS:I

.field private mAlias:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mClientType:J

.field private mContext:Landroid/app/Application;

.field private mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

.field private mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

.field private mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

.field private mHandlerBinder:Landroid/os/Handler;

.field private mHasState:Z

.field private mIsObserveState:Z

.field private mPkgName:Ljava/lang/String;

.field private mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

.field private volatile mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

.field private mState:J

.field private mSysRegistration:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

.field private mVFVersionCode:I

.field private mVrMetaData:Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

.field private syncState:Ljava/lang/Runnable;

.field private writeProviderDomain:Ljava/lang/Runnable;

.field private writeProviderWakeup:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 89
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->DELAY_MILLIS:I

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHasState:Z

    .line 540
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderWakeup:Ljava/lang/Runnable;

    .line 549
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$8;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$8;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderDomain:Ljava/lang/Runnable;

    .line 2460
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$66;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$66;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncState:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Application;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 89
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->DELAY_MILLIS:I

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHasState:Z

    .line 540
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderWakeup:Ljava/lang/Runnable;

    .line 549
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$8;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$8;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderDomain:Ljava/lang/Runnable;

    .line 2460
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$66;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$66;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncState:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 103
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 106
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appId cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 110
    :cond_1
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    .line 111
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    .line 113
    iput-boolean p8, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mIsObserveState:Z

    .line 114
    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAlias:Ljava/lang/String;

    .line 116
    iput-wide p6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    .line 117
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    invoke-direct {p1, p3, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSysRegistration:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    .line 118
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-direct {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    .line 119
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-direct {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    .line 120
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-direct {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    .line 121
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;

    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    iget-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-direct {p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JZLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitVoiceInputInner(JZLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncWakeupSceneToService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncSubWakeupSceneToService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncSystemDomainToService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncSystemWakeupToService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSysRegistration:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitVoiceInputReal(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JZLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitSmartInputInner(JZLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitSmartInputReal(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getClientState()V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mState:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)J
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mState:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncClientState(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncClientState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startSTTReal(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    return p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    return-wide v0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 74
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncAppDomainToService()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncAppWakeupToService()V

    return-void
.end method

.method private getClientState()V
    .locals 3

    .line 2135
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const-string v0, "SpeechClient"

    .line 2136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientState is supported at VERSION_CODE_300, but VFramework version code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHasState:Z

    if-nez v0, :cond_1

    .line 2143
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getClientState(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mState:J

    const/4 v0, 0x1

    .line 2144
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHasState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2148
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2146
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getSessionParams(JLcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;
    .locals 1

    .line 1630
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;-><init>()V

    .line 1631
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mAppId:Ljava/lang/String;

    .line 1632
    iput-wide p1, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTaskId:J

    .line 1633
    iget-boolean p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->displayVrSprite:Z

    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mDisplayUI:Z

    .line 1634
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->hints:Ljava/util/List;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mHints:Ljava/util/List;

    .line 1635
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->tips:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTips:Ljava/lang/String;

    .line 1636
    iget-boolean p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->playSound:Z

    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mPlaySound:Z

    .line 1637
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->speechSilTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechSilTimeout:J

    .line 1638
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->speechTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechTimeout:J

    .line 1639
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->tts:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTts:Ljava/lang/String;

    .line 1640
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->ttsSequence:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTtsSequence:Lcom/tencent/wecarspeech/clientsdk/model/SessionParams$TTSSequence;

    .line 1641
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->vadEndSilTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mVadEndSilTime:J

    .line 1642
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->semanticContext:Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSemanticContext:Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;

    .line 1643
    iget-boolean p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;->requestVuiPolicy:Z

    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mRequestVuiPolicy:Z

    .line 1645
    instance-of p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    if-eqz p0, :cond_1

    .line 1646
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1647
    move-object p1, p3

    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->sceneWords:Ljava/util/Map;

    .line 1648
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1649
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1651
    :cond_0
    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTrvWords:Ljava/util/Set;

    .line 1654
    :cond_1
    instance-of p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 1655
    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mIsSeriesSession:Z

    .line 1656
    check-cast p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mMultiTurnTmpl:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mMultiTurnTmplInfo:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

    .line 1657
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mMutiTurnExtendIntents:Ljava/util/List;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mMutiTurnExtendIntents:Ljava/util/List;

    .line 1658
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mSeriesVerifySemanticInfo:Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSeriesVerifySemanticInfo:Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;

    .line 1659
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mClearSlotsInStack:Ljava/util/List;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mClearSlotsInStack:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method private getSessionParams(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;
    .locals 1

    .line 2585
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;-><init>()V

    .line 2586
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mAppId:Ljava/lang/String;

    .line 2587
    iput-wide p1, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mTaskId:J

    .line 2588
    iget-boolean p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->playSound:Z

    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mPlaySound:Z

    .line 2589
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->speechSilTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechSilTimeout:J

    .line 2590
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->speechTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mSpeechTimeout:J

    .line 2591
    iget-wide p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->vadEndSilTimeout:J

    iput-wide p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mVadEndSilTime:J

    const/4 p0, 0x0

    .line 2592
    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mDisplayUI:Z

    const/4 p0, 0x1

    .line 2593
    iput-boolean p0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;->mRequestVuiPolicy:Z

    return-object v0
.end method

.method private isAppInFront()Z
    .locals 4

    .line 2131
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mState:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playTtsInner(Ljava/lang/String;JILcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1785
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return v1

    .line 1789
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    invoke-virtual {p5}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_2

    .line 1795
    invoke-virtual {p5}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    :cond_2
    const/4 v0, 0x4

    .line 1801
    :try_start_0
    invoke-virtual {p0, v0, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setSpeechState(II)V

    .line 1802
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    const/4 v6, 0x0

    move-wide v3, p2

    move-object v5, p1

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->playTTS(JLjava/lang/String;ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "NullPointerException "

    .line 1808
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1809
    invoke-virtual {p5}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    :catch_1
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "RemoteException "

    .line 1804
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1805
    invoke-virtual {p5}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1
.end method

.method private registerSystemDomain()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderDomain:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderDomain:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerSystemWakeup()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderWakeup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->writeProviderWakeup:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerSystemWakeupSceneToSpeechService(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v0

    const/16 v1, 0x12e

    if-lt v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$15;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$15;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemWakeup()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotWords type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$53;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$53;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "setHotWords err mSpeechService == null"

    .line 2055
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotWords type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "setHotWords err mSpeechService == null"

    .line 2077
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startSTTReal(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2530
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getSessionParams(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;

    move-result-object p1

    .line 2531
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechClient"

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSTTReal sessionParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->sttListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTTListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;)V

    .line 2534
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 2535
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;

    invoke-direct {v0, p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/STTParams;)V

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$69;

    invoke-direct {v1, p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$69;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/STTParams;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startSTT(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/ISSTResult;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V

    return-void
.end method

.method private startWaitSmartInputInner(JZLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 1558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWaitSmartInput taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " isBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 1560
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1563
    :cond_0
    iget-object v0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->strvCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;

    if-nez v0, :cond_1

    .line 1564
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params.strvCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_3

    .line 1570
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz p0, :cond_2

    .line 1571
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    const/16 p1, 0x64

    const-string p2, "clientSDK not init yet !!!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_5

    .line 1575
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->isAppInFront()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1576
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz p0, :cond_4

    .line 1577
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    const/16 p1, 0x65

    const-string p2, "cannot start when app is running in background !!!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 1582
    :cond_5
    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isStart()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1583
    new-instance p3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$42;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$42;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    invoke-virtual {p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->stopWaitSmartInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    goto :goto_0

    .line 1590
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitSmartInputReal(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    :goto_0
    return-void
.end method

.method private startWaitSmartInputReal(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1596
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getSessionParams(JLcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;

    move-result-object p1

    .line 1597
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechClient"

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWaitSmartInputReal sessionParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->strvCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V

    .line 1600
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->sceneWords:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setTrvSceneWords(Ljava/util/Map;)V

    .line 1601
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->filter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1602
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->rejectCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    .line 1603
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1605
    :try_start_0
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->playCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;

    invoke-direct {v1, p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startTRV(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "NullPointerException "

    .line 1624
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "RemoteException "

    .line 1622
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startWaitVoiceInputInner(JZLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWaitVoiceInputInner taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 1274
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1277
    :cond_0
    instance-of v0, p4, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    if-eqz v0, :cond_1

    .line 1278
    move-object v0, p4

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mSsrContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    if-nez v0, :cond_2

    .line 1279
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params.ssrCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1283
    :cond_1
    iget-object v0, p4, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->ssrCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;

    if-nez v0, :cond_2

    .line 1284
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params.ssrCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1288
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_4

    .line 1289
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz p0, :cond_3

    .line 1290
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    const/16 p1, 0x64

    const-string p2, "clientSDK not init yet !!!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-nez p3, :cond_6

    .line 1294
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->isAppInFront()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1295
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz p0, :cond_5

    .line 1296
    iget-object p0, p4, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    const/16 p1, 0x65

    const-string p2, "cannot start when app is running in background !!!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    :cond_5
    return-void

    .line 1301
    :cond_6
    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isStart()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1302
    new-instance p3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    invoke-virtual {p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->stopWaitVoiceInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    goto :goto_0

    .line 1309
    :cond_7
    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitVoiceInputReal(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    :goto_0
    return-void
.end method

.method private startWaitVoiceInputReal(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 4

    .line 1315
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1316
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getSessionParams(JLcom/tencent/wecarspeech/clientsdk/model/BaseVoiceParams;)Lcom/tencent/wecarspeech/clientsdk/model/SessionParams;

    move-result-object v0

    .line 1317
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechClient"

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWaitVoiceInputInner sessionParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v2, p3, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->ssrCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;

    invoke-virtual {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    .line 1320
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v2, p3, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->filter:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

    invoke-virtual {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1321
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    iget-object v2, p3, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->rejectCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

    invoke-virtual {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    .line 1322
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setTaskId(J)V

    .line 1323
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1324
    instance-of p1, p3, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    if-eqz p1, :cond_0

    .line 1325
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-object p2, p3

    check-cast p2, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;

    iget-object p2, p2, Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;->mSsrContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    invoke-virtual {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setISSRContextCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;)V

    .line 1328
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p2, p3, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->playCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;

    invoke-direct {v1, p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startSR(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IPlayStateCallback;Lcom/tencent/wecarspeech/vframework/IStartResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "NullPointerException "

    .line 1347
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "RemoteException "

    .line 1345
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private syncAppDomainToService()V
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    const-string v1, "syncAppDomainToService"

    .line 401
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getAppDomainSet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 403
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 407
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 408
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 410
    monitor-enter v1

    .line 411
    :try_start_0
    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpeechClient"

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncAppDomainToService domain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :try_start_1
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 415
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 417
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerAppDomain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "SpeechClient"

    const-string v4, "NullPointerException "

    .line 421
    invoke-static {v3, v4, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "SpeechClient"

    const-string v4, "RemoteException "

    .line 419
    invoke-static {v3, v4, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p0, "SpeechClient"

    const-string v0, "appDomainSet = null or appDomainSet is empty"

    .line 404
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private syncAppName()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$3;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$3;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncAppWakeupToService()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    const-string v1, "syncAppWakeupToService"

    .line 454
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getAppWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "SpeechClient"

    const-string v0, "wakeUpScene = null"

    .line 457
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 461
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerAppWakeup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 465
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 463
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private syncClientState()V
    .locals 4

    const/4 v0, 0x0

    .line 2468
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHasState:Z

    .line 2469
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2471
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mState:J

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->syncClientState(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2475
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "syncClientState RemoteException "

    .line 2473
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private syncClientState(J)V
    .locals 2

    .line 2481
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2482
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncState:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private syncClientType()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$5;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$5;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncPackageName()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$4;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$4;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncRegistrationsToService()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncSubWakeupSceneToService()V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    const-string v1, "syncSubWakeupSceneToService"

    .line 515
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSubSceneWakeupSet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 519
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;

    .line 520
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSubSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 525
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 523
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private syncSystemDomainToService()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSystemDomainToService, VFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v0

    const/16 v1, 0x12e

    if-lt v0, v1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemDomainSet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "SpeechClient"

    const-string v0, "systemDomainSet = null"

    .line 435
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 439
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSystemDomainSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 443
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 441
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemDomain()V

    :goto_0
    return-void
.end method

.method private syncSystemWakeupToService()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSystemWakeupToService VFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v0

    const/16 v1, 0x12e

    if-lt v0, v1, :cond_2

    .line 475
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "SpeechClient"

    const-string v0, "wakeUpScene = null"

    .line 477
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSystemWakeUpEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 485
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 483
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemWakeup()V

    :goto_0
    return-void
.end method

.method private syncWakeupSceneToService()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpeechClient"

    const-string v1, "syncWakeupSceneToService"

    .line 496
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "SpeechClient"

    const-string v0, "wakeUpScene = null"

    .line 499
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 507
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 505
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public activateVrSprite(ZZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    const-string v1, "activateVrSprite"

    .line 195
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    .line 197
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    const-string v2, "SpeechClient"

    const-string v3, "set dimBehind to false when modal is set to false"

    .line 203
    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v2, :cond_2

    .line 206
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;

    const-string p2, "ClientNotInit , mSpeechService == null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-wide v0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->activateVrSprite(Ljava/lang/String;ZZLcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public applyRecordStatus()Z
    .locals 2

    .line 2645
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2649
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->applyRecordStatus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2653
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2651
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "err mSpeechService == null"

    .line 2657
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public cancelAudioRecord(Ljava/lang/String;)V
    .locals 2

    .line 2780
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "err mSpeechService == null"

    .line 2796
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearState(J)V
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2602
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2605
    :cond_1
    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 2606
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    .line 183
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getClientSdkVersion()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "3.1.0-5955959"

    return-object p0
.end method

.method public getClientType()J
    .locals 2

    .line 2801
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    return-wide v0
.end method

.method public getDispatcher()Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;
    .locals 0

    .line 2486
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    return-object p0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    .line 141
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordConfig()Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;
    .locals 3

    .line 2826
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2828
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getRecordConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SpeechClient"

    .line 2829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordConfigJson : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const-class v0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2834
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2832
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "err mSpeechService == null"

    .line 2837
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecordStatus()Z
    .locals 2

    .line 2627
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2630
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getRecordStatus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2634
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2632
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "err mSpeechService == null"

    .line 2638
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getVFVersionCode()I
    .locals 0

    .line 2622
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    return p0
.end method

.method public getVrMetaData()Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->getVrMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    const-class v1, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVrMetaData:Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    .line 564
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVrMetaData:Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 566
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVrMetaData:Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 2612
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public holdTask(JZLcom/tencent/wecarspeech/clientsdk/interfaces/SessionInterruptListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdTask taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interruptable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 2086
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2090
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2093
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_2

    .line 2094
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;

    const-string p2, "ClientNotInit , mSpeechService == null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;-><init>(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->holdTask(Ljava/lang/String;JZLcom/tencent/wecarspeech/vframework/ISessionStateListener;)V

    return-void
.end method

.method public holdVrSprite(JZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    .line 2214
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->holdVrSprite(JZZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)V

    return-void
.end method

.method public holdVrSprite(JZZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVrSprite taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 2222
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2226
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    const-string v0, "SpeechClient"

    const-string v1, "set dimBehind to false when modal is set to false"

    .line 2232
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v7, p4

    .line 2234
    iget-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez p4, :cond_3

    .line 2235
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;

    const-string p2, "ClientNotInit , mSpeechService == null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;-><init>(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2239
    :cond_3
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    move-wide v4, p1

    move v6, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->holdVrSprite(Ljava/lang/String;JZZLcom/tencent/wecarspeech/vframework/ISpriteInterruptedListener;)V

    return-void
.end method

.method public isIsObserveState()Z
    .locals 0

    .line 289
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mIsObserveState:Z

    return p0
.end method

.method public notifyUsbConnectedStatus(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setUSBStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string v0, "RemoteException "

    .line 283
    invoke-static {p1, v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onClientConnect(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkSuccess mAppIdonLinkSuccess mAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 295
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 296
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/vframework/ISpeechService;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;)V

    .line 298
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/impl/MessageListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncRegistrationsToService()V

    const-wide/16 v0, 0x0

    .line 306
    invoke-direct {p0, v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncClientState(J)V

    .line 307
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncAppName()V

    return-void
.end method

.method protected onClientDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 312
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterWakeupScene()V

    .line 314
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterAllSubWakeupScene()V

    :cond_0
    return-void
.end method

.method public playAudio(Ljava/lang/String;JLcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
    .locals 8

    const-string v0, "SpeechClient"

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudio taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1710
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return v1

    .line 1714
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    invoke-virtual {p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    .line 1719
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_2

    .line 1720
    invoke-virtual {p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    .line 1724
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    const/4 v6, 0x0

    move-wide v3, p2

    move-object v5, p1

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->playAudio(JLjava/lang/String;ILcom/tencent/wecarspeech/vframework/IPlayStateCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "NullPointerException "

    .line 1730
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1731
    invoke-virtual {p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1

    :catch_1
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "RemoteException "

    .line 1726
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1727
    invoke-virtual {p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->onPlayError()V

    return v1
.end method

.method public playTTS(Ljava/lang/String;JILcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
    .locals 3

    const-string v0, "SpeechClient"

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTTS taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ttsType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-direct/range {p0 .. p5}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->playTtsInner(Ljava/lang/String;JILcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I

    move-result p0

    return p0
.end method

.method public playTTS(Ljava/lang/String;JLcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SpeechClient"

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTTS taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xb

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, p4

    .line 1818
    invoke-direct/range {v2 .. v7}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->playTtsInner(Ljava/lang/String;JILcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I

    move-result p0

    return p0
.end method

.method public registSpeechStateCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/SpeechStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registSpeechStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V

    :cond_0
    return-void
.end method

.method public registerAppDomain(Lcom/tencent/wecarspeech/clientsdk/model/Domain;)V
    .locals 2

    if-nez p1, :cond_0

    .line 659
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;

    const-string v0, "invalid domain"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 662
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->registerAppDomain(Lcom/tencent/wecarspeech/clientsdk/model/Domain;)V

    .line 664
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz p1, :cond_1

    .line 665
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$11;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$11;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public registerAppSkill(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 719
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;

    const-string p2, "domain type cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 722
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerAppSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 723
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string p2, "skillType cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0
.end method

.method public registerAppSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation

    .line 732
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;

    const-string p2, "domainType cannot be empty"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p2, :cond_3

    .line 736
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->registerAppSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    .line 741
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$13;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 757
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 737
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string p2, "skillType cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0
.end method

.method public registerAppWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 847
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wakeUpEvent cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 851
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_2

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getWordSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->isInWakeupSRMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;

    const-string v2, "words which will map to SR cannot be registered as App wakeup event"

    invoke-direct {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string v0, ""

    return-object v0

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$16;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$16;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeechClient"

    const-string v2, "RemoteException "

    .line 874
    invoke-static {v1, v2, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerAppWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V

    .line 878
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerCarStatusListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;)V
    .locals 2

    .line 2418
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$64;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$64;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "registerCarStatusListener err mSpeechService == null"

    .line 2434
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerHighPriorityScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1201
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subWakeupScene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 1205
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerHighPriorityScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;

    move-result-object p1

    .line 1207
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$28;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$28;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1
.end method

.method public registerSceneWakeupEvent(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1077
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wakeUpEvent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1082
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sceneId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 1085
    :cond_1
    invoke-static {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerSceneWakeupEvent(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Z

    move-result v1

    .line 1087
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$24;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$24;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1103
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1138
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1144
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sceneId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1147
    :cond_1
    invoke-static {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p2

    .line 1149
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1150
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$26;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$26;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 1139
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wakeUpEventSet cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public registerSubWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1001
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subSceneWakeupEvent cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 1005
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerSubWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;

    move-result-object p1

    .line 1007
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$21;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$21;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1
.end method

.method public registerSystemSkill(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 576
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;

    const-string p2, "domain type cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 579
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 580
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string p2, "skillType cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0
.end method

.method public registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;

    const-string p2, "domainType cannot be empty"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p2, :cond_4

    .line 593
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "SpeechClient"

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSystemSkill, skillId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    .line 601
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemDomainSet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 602
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v0

    const/16 v1, 0x12e

    if-lt v0, v1, :cond_2

    .line 604
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$9;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$9;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemDomain()V

    .line 622
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 594
    :cond_4
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string p2, "skillType cannot be null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0
.end method

.method public registerSystemWakeUpEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 789
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string v0, "wakeUpEvent cannot be null"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "SpeechClient"

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSystemWakeUpEvent, wakeUpEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getWordSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->isInWakeupSRMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;

    const-string v2, "words which will map to SR cannot be registered as system wakeup event"

    invoke-direct {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SpeechClient"

    const-string v2, "RemoteException "

    .line 803
    invoke-static {v1, v2, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerSysWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)V

    .line 806
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemWakeupSceneToSpeechService(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V

    .line 807
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 911
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wakeUpScene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 915
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;

    move-result-object p1

    .line 917
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$18;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$18;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1
.end method

.method public registerWakeupSceneToSystemVr(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 941
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wakeUpScene cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    const-string p0, ""

    return-object p0

    .line 945
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 946
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v1

    .line 947
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v2, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->registerWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;

    move-result-object p1

    .line 948
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;

    invoke-direct {v3, p0, v1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1
.end method

.method public releaseRecordStatus()Z
    .locals 2

    .line 2664
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2667
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->releaseRecordStatus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2671
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2669
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "err mSpeechService == null"

    .line 2675
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public releaseTask(J)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseTask taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2106
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2110
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$55;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$55;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "releaseTask err mSpeechService == null"

    .line 2125
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public releaseVrSprite(J)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseVrSprite taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2286
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$60;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$60;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "releaseVrSprite err mSpeechService == null"

    .line 2305
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeSpeechActiveListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1902
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1906
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "removeSpeechActiveListener err mSpeechService == null"

    .line 1922
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    .line 2369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2373
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2374
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "reportAction err mSpeechService == null"

    .line 2394
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetState()V
    .locals 3

    .line 2171
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x130

    if-ge v0, v1, :cond_0

    const-string v0, "SpeechClient"

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState is supported at VERSION_CODE_304, but VFramework version code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$57;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$57;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppName:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncAppName()V

    return-void
.end method

.method public setAsrContext(Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;)V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "setAsrContext"

    .line 1387
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    const-string p0, "SpeechClient"

    const-string p1, "mSpeechService == null, not connect"

    .line 1389
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1392
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1393
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$35;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$35;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAudioRecordCallback(Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setAudioRecordCallback(Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback;)V

    :cond_0
    return-void
.end method

.method public setClientType(J)V
    .locals 2

    .line 146
    iput-wide p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    const-string p1, "SpeechClient"

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setClientType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mClientType:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncClientType()V

    return-void
.end method

.method public setCurrentMiniProgramName(Ljava/lang/String;)V
    .locals 2

    .line 1440
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const-string p1, "SpeechClient"

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMiniProgramName not support in mVFVersionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$37;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$37;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "setCurrentMiniProgramName err mSpeechService == null"

    .line 1460
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHelpInfo(Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1955
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "helpInfo cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "setHelpInfo err mSpeechService == null"

    .line 1974
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHotContactList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotContact;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1981
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hintSet cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1985
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1990
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;-><init>()V

    .line 1991
    iput-object p2, v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;->contactList:Ljava/util/List;

    .line 1992
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "ConcurrentModificationException "

    .line 1994
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setHotContactList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotContact;",
            ">;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2807
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hintSet cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2811
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2816
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;-><init>()V

    .line 2817
    iput-object p2, v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;->contactList:Ljava/util/List;

    .line 2818
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "ConcurrentModificationException "

    .line 2820
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setHotMusicList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotMusic;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2001
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hintSet cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2005
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2010
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;-><init>()V

    .line 2011
    iput-object p2, v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;->music_list:Ljava/util/List;

    .line 2012
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "ConcurrentModificationException "

    .line 2014
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setHotWechatList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWechat;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2021
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hintSet cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2025
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2029
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;-><init>()V

    .line 2030
    iput-object p2, v0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;->wechat_list:Ljava/util/List;

    .line 2031
    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "ConcurrentModificationException "

    .line 2033
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMiniProgramList(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1466
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1471
    :cond_0
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    const-string p1, "SpeechClient"

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMiniProgramList not support in mVFVersionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_2

    .line 1476
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1477
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$38;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$38;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "SpeechClient"

    const-string p1, "setMiniProgramList err mSpeechService == null"

    .line 1492
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "SpeechClient"

    const-string p1, "miniProgramSet is empty"

    .line 1467
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mPkgName:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncPackageName()V

    return-void
.end method

.method public setRecordOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setRecordOnly(Z)V

    :cond_0
    return-void
.end method

.method public setSemanticContext(Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;)V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "setSemanticContext"

    .line 1359
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_0

    const-string p0, "SpeechClient"

    const-string p1, "mSpeechService == null, not connect"

    .line 1361
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1364
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1365
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSpeechActiveListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1876
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1880
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$49;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$49;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "setSpeechActiveListener err mSpeechService == null"

    .line 1895
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSpeechService(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 0

    .line 2491
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    return-void
.end method

.method public setSpeechState(II)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientSDK setSpeechState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  eventCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x66

    if-ge v0, v1, :cond_0

    const-string p1, "SpeechClient"

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSpeechState is supported at VERSION_CODE_102, but VFramework version code is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setSpeechState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string p2, "RemoteException "

    .line 266
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setState(J)V
    .locals 2

    .line 2155
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$56;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$56;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTryBeforeWakeup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SpeechClient"

    const-string p1, "setTryBeforeWakeup err functionId is empty"

    .line 1411
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1414
    :cond_0
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    const-string p1, "SpeechClient"

    .line 1415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTryBeforeWakeup not support in mVFVersionCode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$36;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "SpeechClient"

    const-string p1, "setTryBeforeWakeup err mSpeechService == null"

    .line 1434
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTryHint(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1929
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hintSet cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1933
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$51;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$51;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "setTryHint err mSpeechService == null"

    .line 1948
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVFVersionCode(I)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    return-void
.end method

.method public setVrHints(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpeechClient"

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVrHints taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 2312
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2317
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2320
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$61;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$61;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "SpeechClient"

    const-string p1, "setVrHints err mSpeechService == null"

    .line 2336
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2313
    :cond_3
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hints cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public setVrSpriteModalState(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2244
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setVrSpriteModalState(JZZ)V

    return-void
.end method

.method public setVrSpriteModalState(JZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVrSpriteModelState taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", modalEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2252
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    const-string v0, "SpeechClient"

    const-string v1, "set dimBehind to false when modal is set to false"

    .line 2258
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v7, p4

    .line 2261
    iget-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez p4, :cond_2

    .line 2262
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;

    const-string p2, "ClientNotInit , mSpeechService == null"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;-><init>(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2266
    :cond_2
    iget-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JZZ)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVrSpriteState(JI)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 2342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVrSpriteState taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2344
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "taskId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2347
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2348
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$62;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$62;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "setVrSpriteState err mSpeechService == null"

    .line 2363
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startAudioRecord(Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "SpeechClient"

    const-string v1, "err recordParam == null"

    .line 2684
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "SpeechClient"

    const-string v1, "err recordCallback==null"

    .line 2687
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_3

    .line 2691
    :try_start_0
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mVFVersionCode:I

    const/16 v1, 0x138

    if-ge v0, v1, :cond_2

    .line 2692
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startAudioRecord(Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2694
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startAudioRecordInner(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2696
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p0, "SpeechClient"

    const-string p1, "err mSpeechService == null"

    .line 2699
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startAudioRecordSync(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2708
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recordParam cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 2713
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recordCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2714
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-object v0

    .line 2718
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v1

    const/16 v2, 0x138

    if-ge v1, v2, :cond_3

    const-string v0, "SpeechClient"

    .line 2720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAudioRecordSync compatible  speechVerCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    new-instance v0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;-><init>()V

    .line 2722
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getPcmPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setPCMPath(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object v0

    .line 2723
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getCompleteCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setCompleteCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object v0

    .line 2724
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getCancelCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setCancelCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object v0

    .line 2725
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getAllowRecordInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setAllowRecordInterrupted(Z)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object v0

    .line 2726
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getSilenceTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setSilenceTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object v0

    .line 2727
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->getVadEndTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->setVadEndTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;

    move-result-object p1

    .line 2728
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->build()Lcom/tencent/wecarspeech/vframework/RecordParam;

    move-result-object p1

    .line 2729
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startAudioRecord(Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;)Ljava/lang/String;

    move-result-object p0

    .line 2730
    new-instance p1, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    invoke-direct {p1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;-><init>()V

    .line 2731
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2732
    invoke-virtual {p1, p0}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setTaskId(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    move-result-object p0

    const-string p2, "success"

    .line 2733
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setMsg(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    move-result-object p0

    const/4 p2, 0x0

    .line 2734
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setRet(I)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 2736
    invoke-virtual {p1, p0}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setTaskId(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    move-result-object p0

    const-string p2, "fail"

    .line 2737
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setMsg(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    move-result-object p0

    const/4 p2, -0x3

    .line 2738
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->setRet(I)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;

    .line 2741
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->build()Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    move-result-object p0

    return-object p0

    .line 2743
    :cond_3
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_4

    .line 2745
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    invoke-interface {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->startAudioRecordSync(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Lcom/tencent/wecarspeech/vframework/IRecordCallback;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2747
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string p0, "SpeechClient"

    const-string p1, "err mSpeechService == null"

    .line 2750
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public startSRWithContext(JLcom/tencent/wecarspeech/clientsdk/model/SRContextParams;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SRContextParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSTT(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    .line 2496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSTT taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2498
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2501
    :cond_0
    iget-object v0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->sttListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

    if-nez v0, :cond_1

    .line 2502
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params.sttListener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-nez v0, :cond_3

    .line 2508
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz p0, :cond_2

    .line 2509
    iget-object p0, p3, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    const/16 p1, 0x64

    const-string p2, "clientSDK not init yet !!!"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 2513
    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->isStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2514
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->stopSTT(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    goto :goto_0

    .line 2525
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startSTTReal(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V

    :goto_0
    return-void
.end method

.method public startWaitSmartInput(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$41;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$41;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startWaitSmartInputInBack(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 2

    .line 1539
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startWaitVoiceInput(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$31;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startWaitVoiceInputInBack(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$30;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAllAudio()V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "stopAllAudio"

    .line 1762
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$46;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$46;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "stopAllAudio err mSpeechService == null"

    .line 1779
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAllTTS()V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "stopAllTTS"

    .line 1852
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$48;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$48;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "stopAllTTS err mSpeechService == null"

    .line 1869
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAudio(I)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAudio id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$45;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$45;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "stopAudio err mSpeechService == null"

    .line 1756
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAudioRecord(Ljava/lang/String;)V
    .locals 2

    .line 2758
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$71;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$71;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "err mSpeechService == null"

    .line 2774
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopSTT(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClient"

    const-string v1, "stopSTT"

    .line 2562
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2564
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 2568
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mAppId:Ljava/lang/String;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;

    invoke-direct {v2, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->stopSTT(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IStopCallback;)V

    goto :goto_0

    .line 2577
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 2578
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTTListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;)V

    .line 2579
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    const-string p0, "SpeechClient"

    const-string p1, "stopSTT err mSpeechService == null"

    .line 2580
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopTTS(I)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTTS id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$47;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$47;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string p1, "stopTTS err mSpeechService == null"

    .line 1846
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopWaitSmartInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "stopWaitSmartInput"

    .line 1666
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1668
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1698
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 1699
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V

    .line 1700
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1701
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    const-string p0, "SpeechClient"

    const-string p1, "stopWaitSmartInput err mSpeechService == null"

    .line 1702
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopWaitVoiceInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
    .locals 2

    const-string v0, "SpeechClient"

    const-string v1, "stopWaitVoiceInput"

    .line 1498
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1500
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1529
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    .line 1530
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1531
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    .line 1532
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    const-string p0, "SpeechClient"

    const-string p1, "stopWaitVoiceInput err mSpeechService == null"

    .line 1533
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unRegisterHighPriorityScene(Ljava/lang/String;)V
    .locals 2

    .line 1228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sceneId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unRegisterHighPriorityScene(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$29;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$29;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unregistSpeechStateCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/SpeechStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->unregistSpeechStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterAllSubWakeupScene()V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterAllSubWakeupScene()V

    .line 1055
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$23;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$23;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unregisterAppDomain(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;)V
    .locals 1

    if-nez p1, :cond_0

    .line 685
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 688
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->unregisterAppDomain(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAppDomain(Ljava/lang/String;)V
    .locals 2

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->unregisterAppDomain(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$12;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$12;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unregisterAppSkill(Ljava/lang/String;)V
    .locals 2

    .line 762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string v0, "skillId cannot be empty"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->unregisterAppSkill(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$14;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$14;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unregisterAppWakeupEvent(Ljava/lang/String;)V
    .locals 2

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eventId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterAppWakeupEvent(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$17;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$17;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unregisterCarStatusListener()V
    .locals 2

    .line 2440
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$65;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$65;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "SpeechClient"

    const-string v0, "unRegisterCarStatusListener err mSpeechService == null"

    .line 2456
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1109
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1113
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sceneId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1117
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$25;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1169
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1175
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sceneId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1178
    :cond_1
    invoke-static {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p2

    .line 1180
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1181
    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$27;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$27;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 1170
    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventIdSet cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public unregisterSubWakeupScene(Ljava/lang/String;)V
    .locals 2

    .line 1029
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sceneId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterSubWakeupScene(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$22;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$22;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unregisterSystemSkill(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SpeechClient"

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSystemSkill, skillId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VFVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;

    const-string v0, "skillId cannot be empty"

    invoke-direct {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->unregisterSystemSkill(Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemDomainSet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 634
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v0, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getVFVersionCode()I

    move-result v0

    const/16 v1, 0x12e

    if-lt v0, v1, :cond_1

    .line 636
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$10;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemDomain()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterSystemWakeUpEvent(Ljava/lang/String;)V
    .locals 1

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eventId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterSysWakeupEvent(Ljava/lang/String;)V

    .line 840
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerSystemWakeupSceneToSpeechService(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V

    return-void
.end method

.method public unregisterWakeupScene(Ljava/lang/String;)V
    .locals 1

    .line 978
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->unregisterWakeupScene()V

    .line 979
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz p1, :cond_0

    .line 980
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mHandlerBinder:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$20;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$20;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public wordSegment(Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;)Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2403
    :cond_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    if-eqz v1, :cond_1

    .line 2405
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->mSpeechService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->wordSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2406
    const-class p1, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SpeechClient"

    const-string v1, "wordSegment err"

    .line 2408
    invoke-static {p1, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p0, "SpeechClient"

    const-string p1, "wordSegment err mSpeechService == null"

    .line 2411
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
