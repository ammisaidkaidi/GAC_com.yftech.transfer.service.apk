.class Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;
.super Ljava/lang/Thread;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceKeepAliveThread"
.end annotation


# instance fields
.field private mIsRunning:Z

.field final synthetic this$0:Lcom/tencent/wecarbase/client/BaseManager;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarbase/client/BaseManager;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/client/BaseManager;Lcom/tencent/wecarbase/client/BaseManager$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;-><init>(Lcom/tencent/wecarbase/client/BaseManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/client/BaseManager;->access$002(Lcom/tencent/wecarbase/client/BaseManager;I)I

    .line 58
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK ServiceKeepAliveThread start Success, mIsRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/tencent/wecarbase/client/BaseManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    iget-object v0, v0, Lcom/tencent/wecarbase/client/BaseManager;->mServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-interface {v0}, Lcom/tencent/wecarbase/config/IServiceConfig;->resetHostPackage()V

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$202(Z)Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$300(Lcom/tencent/wecarbase/client/BaseManager;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/client/BaseManager;->access$000(Lcom/tencent/wecarbase/client/BaseManager;)I

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/BaseManager;->access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method stopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->mIsRunning:Z

    .line 81
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BaseManager$ServiceKeepAliveThread;->this$0:Lcom/tencent/wecarbase/client/BaseManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/BaseManager;->access$100(Lcom/tencent/wecarbase/client/BaseManager;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "stop SDK ServiceKeepAliveThread"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
