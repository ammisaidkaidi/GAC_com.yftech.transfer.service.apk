.class public Lcom/tencent/car/wechatsdk/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static mBackHandler:Landroid/os/Handler;

.field private static mBackThread:Landroid/os/HandlerThread;

.field private static sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->sUIHandler:Landroid/os/Handler;

    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackThread:Landroid/os/HandlerThread;

    .line 21
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertUIThread(Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->isOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should be called on UI thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static isOnUIThread()Z
    .locals 2

    .line 74
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

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->sUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static removeBackThreadCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeUIThreadCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->sUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnBackThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->runOnBackThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnBackThread(Ljava/lang/Runnable;J)V
    .locals 2

    if-eqz p0, :cond_1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->mBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 2

    if-eqz p0, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/ThreadUtils;->sUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
