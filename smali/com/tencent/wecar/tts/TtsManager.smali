.class public final Lcom/tencent/wecar/tts/TtsManager;
.super Ljava/lang/Object;
.source "TtsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/TtsManager$Singleton;
    }
.end annotation


# static fields
.field public static final DEFAULT_TTS_APK_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wecar.tts.app"

.field public static final DEFAULT_WECARSPEECH_APK_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wecarspeech"

.field private static final TAG:Ljava/lang/String; = "TtsManager"

.field private static final TTS_SERVICE_ACTION:Ljava/lang/String; = "com.tencent.taes.sdk.tts.ACTION"


# instance fields
.field private mIsServiceConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTaesRouterPkgs:[Ljava/lang/String;

.field private final mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

.field private mUseApk:Z

.field private mUseInnerTts:Z

.field private mUseSystemTts:Z

.field private mUseTaesTts:Z

.field private mUseWecarSpeech:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.tencent.taes"

    const-string v1, "com.tencent.wecar"

    const-string v2, "com.tencent.wecarnavi"

    const-string v3, "com.tencent.wecarflow"

    const-string v4, "com.tencent.wecarmas"

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mTaesRouterPkgs:[Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    .line 182
    new-instance v0, Lcom/tencent/wecar/tts/TtsManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/TtsManager$1;-><init>(Lcom/tencent/wecar/tts/TtsManager;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecar/tts/TtsManager$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/wecar/tts/TtsManager;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/wecar/tts/TtsManager;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/TtsManager;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/wecar/tts/TtsManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseTaesTts:Z

    return p0
.end method

.method static synthetic access$400(Lcom/tencent/wecar/tts/TtsManager;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecar/tts/TtsManager;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/wecar/tts/TtsManager;->connect()Z

    move-result p0

    return p0
.end method

.method private connect()Z
    .locals 9

    .line 214
    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 216
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 217
    invoke-direct {p0, v0}, Lcom/tencent/wecar/tts/TtsManager;->getMatchIntent(Landroid/content/Context;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 220
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 222
    iget-boolean v5, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseApk:Z

    if-eqz v5, :cond_0

    const-string v1, "com.tencent.wecar.tts.app"

    const-string v4, "com.tencent.wecar.tts.server.TtsService"

    .line 223
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 224
    :cond_0
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.tencent.taes.sdk.tts.ACTION"

    .line 225
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 226
    iput-boolean v3, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseInnerTts:Z

    .line 227
    const-class v1, Lcom/tencent/wecar/tts/server/TtsService;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    invoke-static {}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->getInstance()Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->init(Landroid/content/Context;)V

    const-string v1, "TtsManager"

    const-string v4, "use tts sdk service:"

    .line 229
    invoke-static {v1, v4}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_1
    iget-boolean v4, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseWecarSpeech:Z

    if-eqz v4, :cond_2

    const-string v1, "com.tencent.wecarspeech"

    const-string v4, "com.tencent.wecar.tts.server.TtsService"

    .line 231
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v4, "TtsManager"

    const-string v5, "Connect TAES TTS"

    .line 234
    invoke-static {v4, v5}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v4, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;

    invoke-direct {v4}, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;-><init>()V

    const-string v5, "com.tencent.taes.tts.ACTION"

    .line 236
    iget-object v6, p0, Lcom/tencent/wecar/tts/TtsManager;->mTaesRouterPkgs:[Ljava/lang/String;

    .line 237
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v0, v5, v6}, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    invoke-virtual {v4}, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;->getHostServiceInfo()Lcom/tencent/wecar/tts/ServiceItemInfo;

    move-result-object v4

    const-string v5, "TtsManager"

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect TAES TTS serviceItemInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 241
    iget-object v1, v4, Lcom/tencent/wecar/tts/ServiceItemInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :try_start_1
    iput-boolean v3, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseTaesTts:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    :cond_3
    return v1

    :catch_1
    move-exception v1

    .line 248
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v1, v2

    :goto_2
    const-string v2, "TtsManager"

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "useSystemTts"

    .line 251
    iget-boolean v4, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseSystemTts:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/tencent/wecar/tts/TtsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-custom {p0}, call_site_4("run", (Lcom/tencent/wecar/tts/TtsManager;)Ljava/lang/Runnable;, ()V, invoke-direct@Lcom/tencent/wecar/tts/TtsManager;->lambda$connect$0()V, ()V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-static {p0, v1, v2}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_4
    const-string p0, "TtsManager"

    const-string v1, "TtsService connecting fail..."

    .line 261
    invoke-static {p0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v0

    :cond_5
    return v1
.end method

.method public static getInstance()Lcom/tencent/wecar/tts/TtsManager;
    .locals 1

    .line 59
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager$Singleton;->access$100()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object v0

    return-object v0
.end method

.method private getMatchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.taes.sdk.tts.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 156
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.wecar.tts.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string p1, "com.tencent.wecar.tts.app"

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iput-boolean v4, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseApk:Z

    .line 159
    iput-boolean v1, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseWecarSpeech:Z

    goto :goto_1

    .line 161
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.wecarspeech"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.tencent.wecarspeech"

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iput-boolean v4, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseWecarSpeech:Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "TtsManager"

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tts Service Package Name : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static injectCloudResManager(Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;)V
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->setCloudManager(Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;)V

    return-void
.end method

.method public static injectLog(Lcom/tencent/wecar/tts/log/ILog;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/tencent/wecar/tts/log/TtsLog;->setLog(Lcom/tencent/wecar/tts/log/ILog;)V

    return-void
.end method

.method public static injectLogin(Lcom/tencent/wecar/tts/client/login/ILogin;)V
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/tencent/wecar/tts/client/login/TtsLogin;->setLogin(Lcom/tencent/wecar/tts/client/login/ILogin;)V

    return-void
.end method

.method public static injectNetWork(Lcom/tencent/wecar/tts/client/net/INetWork;)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->setNetWork(Lcom/tencent/wecar/tts/client/net/INetWork;)V

    return-void
.end method

.method private synthetic lambda$connect$0()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/tencent/wecar/tts/TtsManager;->connect()Z

    const-string p0, "TtsManager"

    const-string v0, "TtsService reconnecting..."

    .line 257
    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    return-object p0
.end method

.method public getUseApk()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseApk:Z

    return p0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "useApk"

    .line 112
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->getCloudConfig(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "useSystemTts"

    .line 113
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->getCloudConfig(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "TtsManager"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tts init cloudconfig useapk : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", useSystemTts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/wecar/tts/TtsManager;->init(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;ZZ)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    iget-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/TtsManager;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 131
    iput-boolean p2, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseApk:Z

    .line 132
    iput-boolean p3, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseSystemTts:Z

    .line 133
    invoke-direct {p0}, Lcom/tencent/wecar/tts/TtsManager;->connect()Z

    move-result p0

    return p0
.end method

.method public uploadTtsSpeakerSettings()V
    .locals 0

    .line 273
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/TtsManager;->mUseInnerTts:Z

    if-eqz p0, :cond_0

    .line 274
    invoke-static {}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->getInstance()Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->uploadTtsSpeakerSettings()V

    :cond_0
    return-void
.end method
