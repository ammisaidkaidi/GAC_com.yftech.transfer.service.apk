.class final Lcom/tencent/taes/framework/server/connect/SimpleThrottle$1;
.super Landroid/os/Handler;
.source "SimpleThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/server/connect/SimpleThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "callback"

    .line 56
    invoke-static {p1, v0}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 57
    instance-of v1, v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;->run(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
