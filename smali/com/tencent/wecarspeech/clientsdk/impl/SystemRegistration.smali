.class public Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;
.super Ljava/lang/Object;
.source "SystemRegistration.java"


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "content://com.tencent.wecarspeech.vframework.contentprovider"

.field public static final COLUMN_ALIAS:Ljava/lang/String; = "alias"

.field public static final COLUMN_APPID:Ljava/lang/String; = "appId"

.field public static final COLUMN_APPNAME:Ljava/lang/String; = "appName"

.field public static final COLUMN_APPTYPE:Ljava/lang/String; = "appType"

.field public static final COLUMN_DOMAIN:Ljava/lang/String; = "domainJson"

.field public static final COLUMN_PKGNAME:Ljava/lang/String; = "packageName"

.field public static final COLUMN_WAKEUP:Ljava/lang/String; = "wakeupJson"

.field private static final TAG:Ljava/lang/String; = "SystemRegistration"

.field public static final WECAR_AUTHORITY:Ljava/lang/String; = "content://com.tencent.wecar.vframework.contentprovider"


# instance fields
.field private mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field private mContext:Landroid/content/Context;

.field private mHandlerBinder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 38
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mHandlerBinder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->writeProvider(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method private constructDefaultValues()Landroid/content/ContentValues;
    .locals 4

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appId"

    .line 90
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 91
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appName"

    .line 92
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appType"

    .line 93
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getClientType()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "alias"

    .line 94
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mClient:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private writeProvider(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SystemRegistration"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeProvider values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "SystemRegistration"

    const-string p1, "mContext == null"

    .line 101
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemRegistration"

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeProvider "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " err msg : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public registerSystemDomain(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "SystemRegistration"

    const-string v0, "registerSystemDomain err domainSet == null"

    .line 67
    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v0, "SystemRegistration"

    const-string v1, "registerSystemDomain"

    .line 70
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->constructDefaultValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "domainJson"

    .line 72
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Landroid/content/ContentValues;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerSystemWakeup(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SystemRegistration"

    const-string v0, "registerSystemWakeup err scene == null"

    .line 44
    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    invoke-direct {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;-><init>()V

    :cond_0
    const-string v0, "SystemRegistration"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSystemWakeup scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->constructDefaultValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "wakeupJson"

    .line 49
    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->mHandlerBinder:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Landroid/content/ContentValues;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
