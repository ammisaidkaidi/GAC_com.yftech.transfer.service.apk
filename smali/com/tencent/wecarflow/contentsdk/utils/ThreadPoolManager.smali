.class public Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$Holder;
    }
.end annotation


# static fields
.field private static final THREAD_SIZE:I = 0xa


# instance fields
.field private threadService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private timerService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager$Holder;->access$100()Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;

    move-result-object v0

    return-object v0
.end method

.method private getThreadService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 36
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isThreadServiceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private getTimerService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isTimerServiceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private isThreadServiceEnable()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->threadService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTimerServiceEnable()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addThreadTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getThreadService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public addTimerTask(Ljava/util/TimerTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimerTask;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getTimerService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public shutDownNowThreadService()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isThreadServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getThreadService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public shutDownNowTimerService()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isTimerServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getTimerService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public shutDownThreadService()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isThreadServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getThreadService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method

.method public shutDownTimerService()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->isTimerServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/utils/ThreadPoolManager;->getTimerService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
