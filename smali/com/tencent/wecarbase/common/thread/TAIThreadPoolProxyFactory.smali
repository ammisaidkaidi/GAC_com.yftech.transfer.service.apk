.class public Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;
.super Ljava/lang/Object;
.source "TAIThreadPoolProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$IORejectedExecutionHandler;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final FIXED_CORE_POOL_SIZE:I

.field private static final FIXED_KEEP_ALIVE:I = 0x9c40

.field private static final FIXED_MAXIMUM_POOL_SIZE:I

.field private static final FIXED_WORK_QUEUE:I = 0x80

.field private static final IO_CORE_POOL_SIZE:I

.field private static final IO_KEEP_ALIVE:I = 0x7530

.field private static final IO_MAXIMUM_POOL_SIZE:I

.field private static final IO_WORK_QUEUE:I = 0x40

.field private static final NORMAL_CORE_POOL_SIZE:I = 0x0

.field private static final NORMAL_KEEP_ALIVE:I = 0xc350

.field private static final NORMAL_MAXIMUM_POOL_SIZE:I = 0x7fffffff

.field private static TAG:Ljava/lang/String; = "TAIThreadPoolProxyFactory"

.field private static volatile mCommonThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

.field private static volatile mFixedThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

.field private static volatile mIOThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->CPU_COUNT:I

    .line 22
    sget v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x9

    sput v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->FIXED_CORE_POOL_SIZE:I

    .line 23
    sget v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    sput v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->FIXED_MAXIMUM_POOL_SIZE:I

    .line 26
    sget v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->IO_CORE_POOL_SIZE:I

    .line 27
    sget v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->IO_MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getCommonThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;
    .locals 8

    .line 36
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mCommonThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mCommonThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 39
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 40
    new-instance v1, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const v5, 0xc350

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;-><init>(IIILjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mCommonThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mCommonThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    return-object v0
.end method

.method public static getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;
    .locals 8

    .line 52
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mFixedThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mFixedThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 55
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x80

    invoke-direct {v6, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 56
    new-instance v1, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    sget v3, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->FIXED_CORE_POOL_SIZE:I

    sget v4, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->FIXED_MAXIMUM_POOL_SIZE:I

    const v5, 0x9c40

    new-instance v7, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$1;

    invoke-direct {v7}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$1;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;-><init>(IIILjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mFixedThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mFixedThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    return-object v0
.end method

.method public static getIOPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;
    .locals 8

    .line 73
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mIOThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mIOThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 76
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x40

    invoke-direct {v6, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 77
    new-instance v1, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    sget v3, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->IO_CORE_POOL_SIZE:I

    sget v4, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->IO_MAXIMUM_POOL_SIZE:I

    const/16 v5, 0x7530

    new-instance v7, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$IORejectedExecutionHandler;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$IORejectedExecutionHandler;-><init>(Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory$1;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;-><init>(IIILjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mIOThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->mIOThreadPoolProxy:Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    return-object v0
.end method
