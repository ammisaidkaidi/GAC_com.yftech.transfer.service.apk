.class public Lcom/tencent/wecarbase/client/TAIConfigManager;
.super Ljava/lang/Object;
.source "TAIConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/client/TAIConfigManager$SingletonHolder;,
        Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;
    }
.end annotation


# static fields
.field public static final ACTION_TAI_CONFIG_CHANGED:Ljava/lang/String; = "action_tai_config_changed"

.field public static final CONTEXT_NOT_INIT:Ljava/lang/String; = "context is null, not inited "

.field public static final ERROR_TAI_CONFIG:I = -0x1

.field public static final PRODUCT_CFG_KEY_crowdSourcing:Ljava/lang/String; = "crowdSourcing"

.field public static final PRODUCT_CFG_KEY_lastMileNav:Ljava/lang/String; = "lastMileNav"

.field private static final TAG:Ljava/lang/String; = "TAIConfigManager"

.field public static final USER_CFG_KEY_lastMileNav:Ljava/lang/String; = "lastMileNav"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVer:Ljava/lang/String;

.field private mConfigChangedListener:Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;

.field private mContext:Landroid/content/Context;

.field private mLastNetworkChangedAction:J

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/tencent/wecarbase/client/TAIConfigManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/TAIConfigManager$1;-><init>(Lcom/tencent/wecarbase/client/TAIConfigManager;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/client/TAIConfigManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/client/TAIConfigManager;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/client/TAIConfigManager;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mLastNetworkChangedAction:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/tencent/wecarbase/client/TAIConfigManager;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mLastNetworkChangedAction:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/client/TAIConfigManager;)Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mConfigChangedListener:Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;

    return-object p0
.end method

.method public static final getInstance()Lcom/tencent/wecarbase/client/TAIConfigManager;
    .locals 1

    .line 68
    invoke-static {}, Lcom/tencent/wecarbase/client/TAIConfigManager$SingletonHolder;->access$100()Lcom/tencent/wecarbase/client/TAIConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProductConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 155
    sget-object p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string p1, "context is null, not inited "

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppName:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppVer:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/wecarbase/client/AccountManager;->getProductConfigByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    return-void

    .line 160
    :cond_2
    :goto_0
    sget-object p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string p1, "appname or appver is null"

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, -0x1

    .line 163
    :try_start_0
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/IConfigListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 165
    sget-object p1, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getProductConfigByKey, error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 182
    sget-object p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string p1, "context is null, not inited "

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/client/AccountManager;->getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppName:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mAppVer:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mConfigChangedListener:Lcom/tencent/wecarbase/client/TAIConfigManager$ITAIConfigChangedListener;

    .line 112
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "action_tai_config_changed"

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 p2, 0x3e8

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 116
    iget-object p2, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    sget-object p1, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string p2, "init preLoadConfig"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->preLoadConfig()V

    return-void
.end method

.method protected preLoadConfig()V
    .locals 2

    .line 141
    sget-object v0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string v1, "enter preLoadConfig"

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0, v0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->getProductConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    .line 143
    invoke-virtual {p0, v0, v0}, Lcom/tencent/wecarbase/client/TAIConfigManager;->getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    return-void
.end method

.method public setUserConfig(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 198
    sget-object p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    const-string p1, "context is null, not inited "

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarbase/client/AccountManager;->setUserConfig(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/tencent/wecarbase/client/TAIConfigManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    sget-object v0, Lcom/tencent/wecarbase/client/TAIConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
