.class public Lcom/tencent/wecarbase/common/AppInfoUploader;
.super Ljava/lang/Object;
.source "AppInfoUploader.java"


# static fields
.field private static final DOMAIN_DEV:Ljava/lang/String; = "http://wecarplattest.sparta.html5.qq.com"

.field private static final DOMAIN_ONLINE:Ljava/lang/String; = "http://plat.wecar.map.qq.com"

.field private static INSTANCE:Lcom/tencent/wecarbase/common/AppInfoUploader; = null

.field private static final KEY_CACHED_VERSION_CODE:Ljava/lang/String; = "cached_version_code"

.field private static final KEY_CACHED_VERSION_CODE_WECARID:Ljava/lang/String; = "cached_version_code_wecar_id"

.field private static final KEY_TAISERVICE_CACHED_VERSION_CODE:Ljava/lang/String; = "taiservice_cached_version_code"

.field private static final KEY_TAISERVICE_CACHED_VERSION_CODE_WECARID:Ljava/lang/String; = "taiservice_cached_version_code_wecar_id"

.field private static final TAISERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.taiservice"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEventListener:Lcom/tencent/wecarbase/client/SimpleEventListener;

.field private mInitialized:Z

.field private mIsTAIService:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUploading:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-direct {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/common/AppInfoUploader;->INSTANCE:Lcom/tencent/wecarbase/common/AppInfoUploader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mUploading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-boolean v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mIsTAIService:Z

    .line 123
    new-instance v0, Lcom/tencent/wecarbase/common/AppInfoUploader$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/common/AppInfoUploader$1;-><init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mRunnable:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Lcom/tencent/wecarbase/common/AppInfoUploader$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/common/AppInfoUploader$2;-><init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mEventListener:Lcom/tencent/wecarbase/client/SimpleEventListener;

    .line 255
    new-instance v0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/common/AppInfoUploader$3;-><init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/common/AppInfoUploader;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mIsTAIService:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mUploading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/common/AppInfoUploader;
    .locals 1

    .line 43
    sget-object v0, Lcom/tencent/wecarbase/common/AppInfoUploader;->INSTANCE:Lcom/tencent/wecarbase/common/AppInfoUploader;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Z)V
    .locals 2

    .line 64
    iget-boolean p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    if-nez p1, :cond_1

    .line 65
    invoke-static {}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mEventListener:Lcom/tencent/wecarbase/client/SimpleEventListener;

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->registerEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    .line 73
    :cond_0
    iput-boolean p2, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mIsTAIService:Z

    .line 74
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public testNet()V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    .line 81
    invoke-static {}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mEventListener:Lcom/tencent/wecarbase/client/SimpleEventListener;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/WeCarBaseSDK;->unregisterEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V

    .line 83
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public uploadAppInfo(Z)V
    .locals 9

    .line 96
    iget-boolean v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 100
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/client/AccountManager;->getWeCarAccount()Lcom/tencent/wecarbase/model/WeCarAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/wecarbase/model/WeCarAccount;->getWeCarId()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cached_version_code_wecar_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-boolean v2, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mIsTAIService:Z

    if-eqz v2, :cond_2

    const-string v2, "3.1.0.474"

    goto :goto_1

    .line 106
    :cond_2
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    :goto_1
    iget-boolean v3, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mIsTAIService:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "taiservice_cached_version_code"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 108
    :cond_3
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cached_version_code"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_5

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v5

    .line 110
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload AppInfo, forceUpload = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", curtWeCarId = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cachedWeCarId = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", curtVc = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cachedVc = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mUploading = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mUploading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v6, :cond_6

    .line 115
    iget-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mUploading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 119
    :cond_6
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    .line 97
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadAppInfo, forceUpload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", but mInitialized is:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader;->mInitialized:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
