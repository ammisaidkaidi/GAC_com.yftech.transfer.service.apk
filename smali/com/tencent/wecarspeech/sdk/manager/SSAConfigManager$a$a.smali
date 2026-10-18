.class Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK ServiceKeepAliveThread start Success, mIsRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->b(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$a;->b:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
