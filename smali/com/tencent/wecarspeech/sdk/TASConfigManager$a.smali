.class abstract Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field final synthetic b:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/IInterface;

.field private g:Z

.field private h:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

.field private i:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_TAS_SPEECH_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->h:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    new-instance p1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;

    invoke-direct {p1, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->i:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string p1, "sdk version:3.0.3"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->h:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v1, "checkServiceState, mIInterface is null, reconnect"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->getServerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkServiceState intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v0, "checkServiceState startService and bind 1"

    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v1, "checkServiceState startService and bind 2"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->getServerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->i:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v1, "startAndBindService error"

    invoke-static {p0, v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v0, "startAndBindService error, intent null"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->i:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->h:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    return-object p0
.end method


# virtual methods
.method protected a()Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f:Landroid/os/IInterface;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->g:Z

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d()V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c:Ljava/lang/String;

    const-string v0, "init end"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract a(Landroid/os/IInterface;)V
.end method

.method protected abstract b()V
.end method
