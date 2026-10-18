.class public Lcom/tencent/wecarbase/AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInstallReceiverServiceConfig"


# instance fields
.field protected mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetHostPackage()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;

    invoke-direct {v0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;-><init>()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getServiceConfig()Lcom/tencent/wecarbase/config/IServiceConfig;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/wecarbase/AppInstallReceiver;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/AppInstallReceiver;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {p0}, Lcom/tencent/wecarbase/config/IServiceConfig;->resetHostPackage()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppInstallReceiverServiceConfig"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------  acitonStr ---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppInstallReceiverServiceConfig"

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------- ACTION_PACKAGE_ADDED --------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->isContainsPkg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AppInstallReceiverServiceConfig"

    const-string p2, "--------- ACTION_PACKAGE_ADDED isContainsPkg --------"

    .line 43
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/tencent/wecarbase/AppInstallReceiver;->resetHostPackage()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppInstallReceiverServiceConfig"

    const-string v0, "--------- ACTION_PACKAGE_REMOVED --------"

    .line 48
    invoke-static {p2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->isContainsPkg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AppInstallReceiverServiceConfig"

    const-string p2, "--------- ACTION_PACKAGE_ADDED isContainsPkg --------"

    .line 50
    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/tencent/wecarbase/AppInstallReceiver;->resetHostPackage()V

    goto :goto_0

    :cond_1
    const-string p0, "android.intent.action.PACKAGE_REPLACED"

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "AppInstallReceiverServiceConfig"

    const-string p1, "--------- ACTION_PACKAGE_REPLACED --------"

    .line 54
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppInstallReceiverServiceConfig"

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
