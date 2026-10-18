.class Lcom/desaysv/mixmedia/support/MultimediaManager$1;
.super Landroid/os/Handler;
.source "MultimediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desaysv/mixmedia/support/MultimediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;


# direct methods
.method constructor <init>(Lcom/desaysv/mixmedia/support/MultimediaManager;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getDuration()J

    move-result-wide v8

    .line 86
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x3

    if-ne v0, v10, :cond_1

    .line 88
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    add-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 89
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 91
    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v4}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-wide v6, v8

    invoke-interface/range {v1 .. v7}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onPlayPositionChanged(JJJ)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_3

    .line 95
    invoke-virtual {p0, v10, v11, v12}, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 97
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$400(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$400(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->reconnect(Landroid/content/Context;)V

    goto :goto_1

    .line 101
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$400(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/desaysv/mixmedia/support/XMLYConnection;->reconnect(Landroid/content/Context;)V

    .line 106
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
