.class Lcom/baidu/lbsapi/auth/navisdkhud/l;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->a:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->c:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->a:Landroid/os/Handler;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-boolean v0, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Looper thread quit()"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->c:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->c:Z

    iget-object p0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/l;->a:Landroid/os/Handler;

    sget-boolean p0, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "new Handler() finish!!"

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    sget-boolean p0, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LooperThread run() thread id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
