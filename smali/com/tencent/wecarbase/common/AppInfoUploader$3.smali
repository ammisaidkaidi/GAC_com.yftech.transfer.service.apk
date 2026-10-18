.class Lcom/tencent/wecarbase/common/AppInfoUploader$3;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/common/AppInfoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 259
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 260
    iget-object v0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 266
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/wecarbase/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 267
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cached_version_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 271
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "AppInfoUploader_android.net.conn.CONNECTIVITY_CHANGE"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long p2, v1, v5

    if-gez p2, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long p2, v5, v0

    if-gez p2, :cond_1

    .line 274
    iget-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {p1}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore CONNECTIVITY_ACTION, time gap = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "AppInfoUploader_android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->uploadAppInfo(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$3;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {p0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppInfoUploader, BroadcastReceiver error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
