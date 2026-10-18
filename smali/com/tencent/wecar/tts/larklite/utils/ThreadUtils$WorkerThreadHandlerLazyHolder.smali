.class final Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerThreadHandlerLazyHolder"
.end annotation


# static fields
.field private static sWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TTS_WORKER_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->sWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 14
    sget-object v0, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils$WorkerThreadHandlerLazyHolder;->sWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method
