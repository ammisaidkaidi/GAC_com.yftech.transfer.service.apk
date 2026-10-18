.class public Lcom/tencent/taes/framework/server/connect/SimpleThrottle;
.super Ljava/lang/Object;
.source "SimpleThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_WINDOW:J = 0x64L

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cancelEvent(Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;Ljava/lang/Object;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static cancelEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static onEvent(Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x64

    .line 33
    invoke-static {p0, p1, v0, v1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->onEvent(Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public static onEvent(Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;Ljava/lang/Object;J)V
    .locals 1

    .line 37
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static onEvent(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x64

    .line 20
    invoke-static {p0, v0, v1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->onEvent(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static onEvent(Ljava/lang/Runnable;J)V
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 49
    :cond_0
    sget-object v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->sHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method
