.class final Lcom/tencent/wecarbase/common/BgHandler$1;
.super Landroid/os/HandlerThread;
.source "BgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/common/BgHandler;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$localAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 42
    iput-object p3, p0, Lcom/tencent/wecarbase/common/BgHandler$1;->val$localAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarbase/common/BgHandler$1;->val$localAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method
