.class public final Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;,
        Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;


# instance fields
.field private c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;

.field private g:Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->g:Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wecarspeech_log_on/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->enableTraceLog:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;)V

    return-void
.end method

.method private a(Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    const-string p1, "setTasInitParams return, mTASInitParam == null"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setTasInitParams, appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceUniqueID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", storageRootPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "e_app_id"

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "e_app_token"

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "e_package_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "e_device_id"

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "e_storage_path"

    iget-object v2, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v1, "e_sdk_version"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "e_float_btn_enabled"

    iget-boolean v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->floatBtnEnabled:Z

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_6
    const-string v1, "e_wakeup_words"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object p0, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->customWakeWordThreshold:Ljava/lang/Integer;

    if-eqz p0, :cond_8

    const-string p0, "e_custom_wake_word_threshold"

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->customWakeWordThreshold:Ljava/lang/Integer;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v1, "tas.action.config.init"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setTasInitParams, appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceUniqueID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageRootPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->f:Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    return-object v0
.end method


# virtual methods
.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "3.0.3"

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;)V

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+init(), param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->g:Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->f:Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/wecarspeech/sdk/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/wecarspeech/sdk/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object p3

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)V

    invoke-virtual {p3, v0, v1}, Lcom/tencent/wecarspeech/sdk/c;->a(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/c$a;)V

    iget-object p3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    if-nez p3, :cond_0

    new-instance p3, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    invoke-direct {p3, p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)V

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    :cond_0
    iget-object p3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    invoke-virtual {p3, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a()V

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-init(), param:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->e:Z

    return p0
.end method

.method public setFloatBtnHidden(Z)V
    .locals 2

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+setFloatBtnHidden, hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "e_float_btn_hidden"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.config.set.float.btn.hidden"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setFloatBtnHidden, hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogEnable(Z)V
    .locals 2

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+setLogEnable, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->setOpenLog(Z)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "e_log_enabled"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.config.set.log.enabled"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setLogEnable, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupKeywords(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+setWakeupKeywords, wakeupKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "ok"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.config.clear.wakeup.words"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_2
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.config.set.wakeup.words"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    sget-object p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setWakeupKeywords, wakeupKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const-string p1, "null"

    goto :goto_2

    :cond_4
    const-string p1, "ok"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
