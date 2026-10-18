.class public Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;
.super Ljava/lang/Object;
.source "ThreadPoolProxy.java"


# instance fields
.field private mCorePoolSize:I

.field private volatile mExt:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mKeepAliveTime:I

.field private mMaximumPoolSize:I

.field private mRejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mCorePoolSize:I

    .line 27
    iput p2, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mMaximumPoolSize:I

    .line 28
    iput p3, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mKeepAliveTime:I

    .line 29
    iput-object p4, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 30
    iput-object p5, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mRejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method private initThreadPoolExecutor()V
    .locals 11

    .line 37
    iget-object v0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    :cond_0
    const-class v0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    :cond_1
    iget v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mKeepAliveTime:I

    int-to-long v5, v1

    .line 41
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    .line 43
    iget-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mRejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v1, :cond_2

    .line 44
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    iput-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mRejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 45
    :cond_2
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mCorePoolSize:I

    iget v4, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mMaximumPoolSize:I

    iget-object v8, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v10, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mRejectHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    :cond_3
    monitor-exit v0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 64
    iget-object p0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 80
    iget-object p0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 72
    iget-object p0, p0, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->mExt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
