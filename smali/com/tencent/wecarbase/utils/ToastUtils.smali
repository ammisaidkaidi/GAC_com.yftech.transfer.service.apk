.class public Lcom/tencent/wecarbase/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isMainThread()Z
    .locals 2

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/tencent/wecarbase/utils/ToastUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 63
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/ToastUtils;->showLongOnUiThread(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static showLongOnUiThread(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/tencent/wecarbase/utils/ToastUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wecarbase/utils/ToastUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/tencent/wecarbase/utils/ToastUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 48
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/ToastUtils;->showShortOnUiThread(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static showShortOnUiThread(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/tencent/wecarbase/utils/ToastUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/wecarbase/utils/ToastUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
