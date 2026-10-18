.class Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->c(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v2, v2, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->e(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v2, v2, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->getServerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent inner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "intent is null, retry startService, bind"

    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object v2, v2, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->f(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mContext.startService, bind in handler"

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
