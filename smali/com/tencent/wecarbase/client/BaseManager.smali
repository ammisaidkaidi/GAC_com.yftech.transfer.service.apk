.class abstract Lcom/tencent/wecarbase/client/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;
    }
.end annotation


# static fields
.field private static final ADD_CHECK_TIME:I = 0x5

.field private static final MAX_CHECK_TIME:I = 0x3c

.field private static final SUM_RESET_COUNT:I = 0x6

.field private static mNeedReset:Z = false

.field private static mResetCount:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDestroy:Z

.field private isServiceAlreadyConnected:Z

.field private mCheckTime:I

.field private mContext:Landroid/content/Context;

.field private mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

.field private mMainHandler:Landroid/os/Handler;

.field private mServiceAction:Ljava/lang/String;

.field mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    .line 42
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    .line 48
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isServiceAlreadyConnected:Z

    .line 107
    new-instance v0, Lcom/tencent/wecarbase/client/BaseManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/BaseManager$1;-><init>(Lcom/tencent/wecarbase/client/BaseManager;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    .line 42
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    .line 48
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isServiceAlreadyConnected:Z

    .line 107
    new-instance v0, Lcom/tencent/wecarbase/client/BaseManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/BaseManager$1;-><init>(Lcom/tencent/wecarbase/client/BaseManager;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 140
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/client/BaseManager;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mCheckTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/tencent/wecarbase/client/BaseManager;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mCheckTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/wecarbase/client/BaseManager;)Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/tencent/wecarbase/client/BaseManager;Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;)Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/tencent/wecarbase/client/BaseManager;->mNeedReset:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 29
    sput-boolean p0, Lcom/tencent/wecarbase/client/BaseManager;->mNeedReset:Z

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/client/BaseManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->checkServiceState()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/client/BaseManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/client/BaseManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$502(Lcom/tencent/wecarbase/client/BaseManager;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/wecarbase/client/BaseManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->startKeepLiveThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/wecarbase/client/BaseManager;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 29
    sput p0, Lcom/tencent/wecarbase/client/BaseManager;->mResetCount:I

    return p0
.end method

.method private checkServiceState()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServiceState, mServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDestroy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    if-nez v0, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->startAndBindService()V

    .line 94
    iget v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mCheckTime:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 95
    iget v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mCheckTime:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mCheckTime:I

    .line 96
    :cond_0
    sget p0, Lcom/tencent/wecarbase/client/BaseManager;->mResetCount:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sput p0, Lcom/tencent/wecarbase/client/BaseManager;->mResetCount:I

    .line 97
    sget p0, Lcom/tencent/wecarbase/client/BaseManager;->mResetCount:I

    const/4 v1, 0x6

    if-lt p0, v1, :cond_2

    .line 98
    sput-boolean v0, Lcom/tencent/wecarbase/client/BaseManager;->mNeedReset:Z

    const/4 p0, 0x0

    .line 99
    sput p0, Lcom/tencent/wecarbase/client/BaseManager;->mResetCount:I

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->stopKeepLiveThread()V

    :cond_2
    :goto_0
    return-void
.end method

.method private startAndBindService()V
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 220
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    const-string v0, "startAndBindService, context = null, return"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {v1}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/wecarbase/client/BaseManager;->getMatchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v1, "PackageName"

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VersionCode"

    const-string v3, "201908281045"

    .line 228
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ISMapublic static final inthread"

    .line 229
    invoke-static {v0}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.tencent.wecarspeech.SPEECH_SERVICE"

    .line 231
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 234
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_1

    if-nez v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TSPerf] Start and bind at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "3.1.0.474"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    move v6, v5

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and bind service: svcExist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bindRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", act="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find intent for action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 250
    :goto_2
    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and bind service failed with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private declared-synchronized startKeepLiveThread()V
    .locals 4

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarbase/client/BaseManager$2;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/client/BaseManager$2;-><init>(Lcom/tencent/wecarbase/client/BaseManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 178
    monitor-exit p0

    throw v0
.end method

.method private stopKeepLiveThread()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->stopThread()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mKeepAliveThread:Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 201
    monitor-enter p0

    const/4 v0, 0x1

    .line 202
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    .line 203
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 204
    iget-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnected:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->stopKeepLiveThread()V

    .line 210
    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/BaseManager;->dispose()V

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract dispose()V
.end method

.method protected getMatchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {v0}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/tencent/wecarbase/utils/ServiceUtils;->getMatchIntentInPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 257
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService, hostPkg = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " intent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init start, ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 155
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;

    invoke-direct {v0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;-><init>()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getServiceConfig()Lcom/tencent/wecarbase/config/IServiceConfig;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isDestroy:Z

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isServiceAlreadyConnected:Z

    .line 160
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->startAndBindService()V

    .line 161
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/BaseManager;->startKeepLiveThread()V

    .line 162
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init end, ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", act="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceAction:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    monitor-exit p0

    return-void

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract onServiceConnectedOk(Landroid/os/IBinder;)V
.end method

.method protected abstract onServiceDisconnected(Landroid/content/ComponentName;)V
.end method

.method public reInitIfNeed(Landroid/content/Context;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReInit as need, alreadyConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/client/BaseManager;->isServiceAlreadyConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager;->isServiceAlreadyConnected:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
