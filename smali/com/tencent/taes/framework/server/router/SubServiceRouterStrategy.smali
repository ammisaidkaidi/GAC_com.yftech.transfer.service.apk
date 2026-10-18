.class public Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;
.super Ljava/lang/Object;
.source "SubServiceRouterStrategy.java"

# interfaces
.implements Lcom/tencent/taes/framework/interfaces/IRouterStrategy;


# static fields
.field private static final TAES_SERVICE_APP:Ljava/lang/String; = "com.tencent.taes"


# instance fields
.field private mCurrentStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    const-string p1, "SubServiceRouterStrategy"

    const-string p2, "com.tencent.taes NameNotFoundException!"

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSupportSMSDynamicRoute(Landroid/content/Context;)Z
    .locals 1

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 70
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p1, "SUPPORT_SMS_ROUTE"

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SUPPORT_SMS_ROUTE"

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->mCurrentStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    invoke-interface {p0}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->isSupportSMSDynamicRoute(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/taes/framework/server/router/SingleAppRouterStrategy;

    invoke-direct {v0}, Lcom/tencent/taes/framework/server/router/SingleAppRouterStrategy;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->mCurrentStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/tencent/taes/framework/server/router/CommonRouterStrategy;

    invoke-direct {v0}, Lcom/tencent/taes/framework/server/router/CommonRouterStrategy;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->mCurrentStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/router/SubServiceRouterStrategy;->mCurrentStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
