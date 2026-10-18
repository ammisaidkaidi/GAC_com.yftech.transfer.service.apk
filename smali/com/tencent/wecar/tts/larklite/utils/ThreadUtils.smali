.class public final Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;,
        Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$MainThreadHandlerLazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$MainThreadHandlerLazyHolder;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 33
    invoke-static {p0, v0, v1}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->access$100()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->access$100()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
