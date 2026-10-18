.class public Lcom/tencent/taiutils/ThreadPool;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taiutils/ThreadPool$RunWith;,
        Lcom/tencent/taiutils/ThreadPool$RunReturn;
    }
.end annotation


# static fields
.field public static EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static mHighPriorityExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static mHighestPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

.field public static mLowPriorityExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/tencent/taiutils/ThreadPool;->mHighestPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/tencent/taiutils/ThreadPool;->mHighPriorityExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/taiutils/ThreadPool;->mLowPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v2, 0x5

    const v3, 0x7fffffff

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/tencent/taiutils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/tencent/taiutils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runBackgroudTask(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$7;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$7;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runBgUITask(Lcom/tencent/taiutils/ThreadPool$RunReturn;Lcom/tencent/taiutils/ThreadPool$RunWith;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$11;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$11;-><init>(Lcom/tencent/taiutils/ThreadPool$RunReturn;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$10;

    invoke-direct {v0, p1}, Lcom/tencent/taiutils/ThreadPool$10;-><init>(Lcom/tencent/taiutils/ThreadPool$RunWith;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runHighPriorityTask(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$3;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$3;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mHighPriorityExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runHighTaskDelay(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2}, Lbolts/Task;->delay(J)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/tencent/taiutils/ThreadPool$4;

    invoke-direct {p2, p0}, Lcom/tencent/taiutils/ThreadPool$4;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mHighPriorityExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runHighestPriorityTask(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$1;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$1;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mHighestPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runHighestTaskDelay(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2}, Lbolts/Task;->delay(J)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/tencent/taiutils/ThreadPool$2;

    invoke-direct {p2, p0}, Lcom/tencent/taiutils/ThreadPool$2;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mHighestPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runLowPriorityTask(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$5;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$5;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mLowPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runLowTaskDelay(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2}, Lbolts/Task;->delay(J)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/tencent/taiutils/ThreadPool$6;

    invoke-direct {p2, p0}, Lcom/tencent/taiutils/ThreadPool$6;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tencent/taiutils/ThreadPool;->mLowPriorityExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runParallelTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$13;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$13;-><init>(Ljava/util/List;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runSerialTasks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/tencent/taiutils/ThreadPool$12;

    invoke-direct {v1, p0}, Lcom/tencent/taiutils/ThreadPool$12;-><init>(Ljava/util/List;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, p0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runUITask(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/ThreadPool$8;

    invoke-direct {v0, p0}, Lcom/tencent/taiutils/ThreadPool$8;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static runUITaskDelay(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2}, Lbolts/Task;->delay(J)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/tencent/taiutils/ThreadPool$9;

    invoke-direct {p2, p0}, Lcom/tencent/taiutils/ThreadPool$9;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method
