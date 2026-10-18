.class public Lcom/tencent/wecarbase/WeCarBaseSDK;
.super Ljava/lang/Object;
.source "WeCarBaseSDK.java"


# static fields
.field private static final NOT_INIT_ERROR:Ljava/lang/String; = "you should init WeCarBaseSDK first"

.field private static final TAG:Ljava/lang/String; = "WeCarBaseSDK.Client"

.field private static final ourInstance:Lcom/tencent/wecarbase/WeCarBaseSDK;


# instance fields
.field private mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

.field private mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

.field private mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

.field private mContext:Landroid/content/Context;

.field private mEventDispatcher:Lcom/tencent/wecarbase/common/EventDispatcher;

.field private mEventReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

.field private mInitialized:Z

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mainAppProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-direct {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/WeCarBaseSDK;->ourInstance:Lcom/tencent/wecarbase/WeCarBaseSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    .line 83
    invoke-static {}, Lcom/tencent/wecarbase/common/AppInfoUploader;->getInstance()Lcom/tencent/wecarbase/common/AppInfoUploader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

    .line 147
    new-instance v0, Lcom/tencent/wecarbase/WeCarBaseSDK$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/WeCarBaseSDK$1;-><init>(Lcom/tencent/wecarbase/WeCarBaseSDK;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-static {}, Lcom/tencent/wecarbase/common/EventDispatcher;->getInstance()Lcom/tencent/wecarbase/common/EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventDispatcher:Lcom/tencent/wecarbase/common/EventDispatcher;

    .line 71
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/WeCarBaseSDK;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/WeCarBaseSDK;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mainAppProcess:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/WeCarBaseSDK;)Lcom/tencent/wecarbase/common/AppInfoUploader;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

    return-object p0
.end method

.method private addDeviceIdInner(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WeCarBaseSDK.Client"

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceIdInner, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/config/SDKConfig;->addDeviceIds(Ljava/util/Map;)V

    return-void

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "you should init WeCarBaseSDK first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cleanUpSDK(Landroid/content/Context;)V
    .locals 0

    const-string p0, "WeCarBaseSDK.Client"

    const-string p1, "cleanUpSDK"

    .line 471
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/tencent/wecarbase/client/WebCenterManager;->getInstance()Lcom/tencent/wecarbase/client/WebCenterManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/WebCenterManager;->destroy()V

    .line 474
    invoke-static {}, Lcom/tencent/wecarbase/client/GuiPolicyManager;->getInstance()Lcom/tencent/wecarbase/client/GuiPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/GuiPolicyManager;->destroy()V

    .line 475
    invoke-static {}, Lcom/tencent/wecarbase/client/VuiPolicyManager;->getInstance()Lcom/tencent/wecarbase/client/VuiPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/VuiPolicyManager;->destroy()V

    .line 476
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/AccountManager;->destroy()V

    .line 477
    invoke-static {}, Lcom/tencent/wecarbase/client/CloudManager;->getInstance()Lcom/tencent/wecarbase/client/CloudManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/CloudManager;->destroy()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;
    .locals 1

    .line 60
    sget-object v0, Lcom/tencent/wecarbase/WeCarBaseSDK;->ourInstance:Lcom/tencent/wecarbase/WeCarBaseSDK;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.0.474"

    return-object v0
.end method

.method private declared-synchronized initInner(Landroid/content/Context;Lcom/tencent/wecarbase/config/SDKConfig;)V
    .locals 3

    monitor-enter p0

    .line 262
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/wecarbase/config/SDKConfig;->isShowLog()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/wecarbase/utils/LogUtils;->setLogEnable(Z)V

    const-string v0, "WeCarBaseSDK.Client"

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeCarSDK init, mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mainAppProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mainAppProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cfg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "WeCarBaseSDK.Client"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initInner Tai Client SDK is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--VersionName is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/wecarbase/utils/PackageUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --SDK Version is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3.1.0.474"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cfg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/tencent/wecarbase/ClientServiceConfig;

    invoke-direct {v0}, Lcom/tencent/wecarbase/ClientServiceConfig;-><init>()V

    invoke-virtual {p2, v0}, Lcom/tencent/wecarbase/config/SDKConfig;->forceSetServiceConfig(Lcom/tencent/wecarbase/config/IServiceConfig;)V

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    .line 271
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/ContextHolder;->setContext(Landroid/content/Context;)V

    .line 272
    iput-object p2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    .line 275
    iget-object p2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->init(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    invoke-virtual {p2, v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->setSDKConfig(Lcom/tencent/wecarbase/config/SDKConfig;)V

    .line 278
    iget-object p2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventDispatcher:Lcom/tencent/wecarbase/common/EventDispatcher;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/wecarbase/common/EventDispatcher;->init(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 279
    iput-boolean p2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    .line 280
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.tencent.wecarbase.ACTION_SDK_RESET"

    .line 281
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 282
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->regInstallReceiver()V

    .line 286
    iget-object p1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->init(Landroid/content/Context;)V

    .line 287
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->startSDK()V

    .line 288
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->initOthers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit p0

    throw p1
.end method

.method private initOthers()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getIOPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/WeCarBaseSDK$2;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/WeCarBaseSDK$2;-><init>(Lcom/tencent/wecarbase/WeCarBaseSDK;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private regInstallReceiver()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/tencent/wecarbase/AppInstallReceiver;

    invoke-direct {v0}, Lcom/tencent/wecarbase/AppInstallReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

    .line 250
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setAPPChannelInner(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WeCarBaseSDK.Client"

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChannelInner, channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInitialized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getLocalAPPChannel()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "WeCarBaseSDK.Client"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChannelInner, oldChannel is equal to newChannel, oldChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", newChannel = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/config/SDKConfig;->setChannel(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->isHost()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isWeCarBaseProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.tencent.wecarbase.ACTION_FORCE_VALIDATE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    .line 444
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "you should init WeCarBaseSDK first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startSDK()V
    .locals 3

    const-string v0, "WeCarBaseSDK.Client"

    const-string v1, "startSDK"

    .line 481
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/client/AccountManager;->init(Landroid/content/Context;)V

    .line 483
    invoke-static {}, Lcom/tencent/wecarbase/client/CloudManager;->getInstance()Lcom/tencent/wecarbase/client/CloudManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/client/CloudManager;->init(Landroid/content/Context;)V

    .line 484
    invoke-static {}, Lcom/tencent/wecarbase/client/WebCenterManager;->getInstance()Lcom/tencent/wecarbase/client/WebCenterManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/client/WebCenterManager;->reInitIfNeed(Landroid/content/Context;)V

    .line 485
    invoke-static {}, Lcom/tencent/wecarbase/client/GuiPolicyManager;->getInstance()Lcom/tencent/wecarbase/client/GuiPolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/client/GuiPolicyManager;->reInitIfNeed(Landroid/content/Context;)V

    .line 486
    invoke-static {}, Lcom/tencent/wecarbase/client/VuiPolicyManager;->getInstance()Lcom/tencent/wecarbase/client/VuiPolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/client/VuiPolicyManager;->reInitIfNeed(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result v0

    .line 504
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->init(Landroid/content/Context;Z)V

    .line 506
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->uploadAppInfo(Z)V

    .line 510
    invoke-static {}, Lcom/tencent/wecarbase/common/SDKController;->getInstance()Lcom/tencent/wecarbase/common/SDKController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/common/SDKController;->init(Landroid/content/Context;)V

    return-void
.end method

.method private unInitOthers()V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppUploader:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->unInit()V

    .line 318
    invoke-static {}, Lcom/tencent/wecarbase/common/SDKController;->getInstance()Lcom/tencent/wecarbase/common/SDKController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/common/SDKController;->unInit()V

    return-void
.end method

.method private unregInstallReceiver()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addDeviceIds(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/WeCarBaseSDK;->addDeviceIdInner(Ljava/util/Map;)V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.wecarbase.ACTION_UPDATE_DEVICE_IDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v1, Lcom/tencent/wecarbase/model/SerializableMap;

    invoke-direct {v1}, Lcom/tencent/wecarbase/model/SerializableMap;-><init>()V

    .line 413
    invoke-virtual {v1, p1}, Lcom/tencent/wecarbase/model/SerializableMap;->setMap(Ljava/util/Map;)V

    const-string p1, "extra_device_ids"

    .line 414
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 415
    iget-object p1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public closeWeChatBindActivity(Ljava/lang/String;)V
    .locals 0

    .line 375
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/AccountManager;->closeAccountUI(Ljava/lang/String;)V

    return-void
.end method

.method public getChannelInAPP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/wecarbase/common/VersionProvider;->getUriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getAPPChannel"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "WeCarBaseSDK.Client"

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "product_channel"

    .line 579
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "WeCarBaseSDK.Client"

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    const-string p0, "WeCarBaseSDK.Client"

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelInAPP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " return "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConfig()Lcom/tencent/wecarbase/config/SDKConfig;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDeviceIdsInAPP(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/wecarbase/common/VersionProvider;->getUriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getDeviceIds"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "device_ids"

    .line 604
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 605
    instance-of v1, p0, Lcom/tencent/wecarbase/model/SerializableMap;

    if-eqz v1, :cond_0

    .line 606
    check-cast p0, Lcom/tencent/wecarbase/model/SerializableMap;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/SerializableMap;->getMap()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    const-string p0, "WeCarBaseSDK.Client"

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceIdsInAPP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " return "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized hasInitialized()Z
    .locals 1

    monitor-enter p0

    .line 466
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    new-instance v0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/config/SDKConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->build()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->init(Landroid/content/Context;Lcom/tencent/wecarbase/config/SDKConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/tencent/wecarbase/config/SDKConfig;)V
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mainAppProcess:Z

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/WeCarBaseSDK;->initInner(Landroid/content/Context;Lcom/tencent/wecarbase/config/SDKConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 236
    monitor-exit p0

    throw p1
.end method

.method public isHost()Z
    .locals 1

    .line 645
    invoke-static {}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getServiceConfig()Lcom/tencent/wecarbase/config/IServiceConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 647
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public quitWecarbaseProcess(Z)V
    .locals 3

    const-string v0, "WeCarBaseSDK.Client"

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quitWecarbaseProcess clearAccount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.wecarbase.ACTION_QUIT_WECARBASE_PROCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_clear_account"

    .line 521
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized registerEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    .locals 2

    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "WeCarBaseSDK.Client"

    const-string v1, "error not init registerEventListener maybe received nothing!"

    .line 385
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->registerSimpleEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 383
    monitor-exit p0

    throw p1
.end method

.method public resetSDK()V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mainAppProcess:Z

    .line 543
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->cleanUpSDK(Landroid/content/Context;)V

    .line 544
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->startSDK()V

    return-void
.end method

.method public setAPPChannel(Ljava/lang/String;)V
    .locals 2

    .line 433
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/WeCarBaseSDK;->setAPPChannelInner(Ljava/lang/String;)V

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.wecarbase.ACTION_UPDATE_CHANNEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_channel"

    .line 436
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object p1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setKeepAliveFlag(Z)V
    .locals 0

    .line 618
    invoke-static {p1}, Lcom/tencent/wecarbase/config/SDKConfig;->setKeepAliveFlag(Z)V

    return-void
.end method

.method public showFeedBackCenter(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/wecarbase/WeCarBaseSDK;->showFeedBackCenter(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public showFeedBackCenter(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/tencent/wecarbase/utils/ClickUtils;->isSingleClick()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 126
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p0, "WeCarBaseSDK.Client"

    const-string p1, "showFeedBackCenter"

    .line 127
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteSubFiles(Ljava/lang/String;)V

    const-string v2, "com.tencent.wecarbase.bugreport.FEEDBACK_HISTORY"

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/tencent/wecarbase/client/TaiFeedBackEntry;->startFeedBackCenterActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Map;)V

    :cond_1
    return-void
.end method

.method public startWeChatBindActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/client/TaiAccountEntry;->startWeChatBindActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startWeChatBindActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-static {p1, p2, p3}, Lcom/tencent/wecarbase/client/TaiAccountEntry;->startWeChatBindActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startWeChatBindActivity(Ljava/lang/String;)V
    .locals 0

    .line 342
    invoke-static {p1}, Lcom/tencent/wecarbase/client/TaiAccountEntry;->startWeChatBindActivity(Ljava/lang/String;)V

    return-void
.end method

.method public switchFeedBackShowMode(I)V
    .locals 3

    const-string v0, "WeCarBaseSDK.Client"

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchFeedBackShowMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.wecarbase.action.change_style"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarbase/config/SDKConfig;->getServiceConfig()Lcom/tencent/wecarbase/config/IServiceConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkgName"

    .line 529
    iget-object v2, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showMode"

    .line 530
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->unInit()V

    .line 325
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mResetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mAppInstallReceiver:Lcom/tencent/wecarbase/AppInstallReceiver;

    if-eqz v0, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->unregInstallReceiver()V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->cleanUpSDK(Landroid/content/Context;)V

    .line 333
    invoke-direct {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->unInitOthers()V

    return-void
.end method

.method public declared-synchronized unregisterEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    .locals 2

    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "WeCarBaseSDK.Client"

    const-string v1, "unregisterEventListeneryou should init WeCarBaseSDK first"

    .line 397
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK;->mEventReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->unregisterSimpleEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 395
    monitor-exit p0

    throw p1
.end method
