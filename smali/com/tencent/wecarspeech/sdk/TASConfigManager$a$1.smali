.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.wecarspeech.WeCarSpeechTaesSdkService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p2}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Landroid/os/IInterface;)Landroid/os/IInterface;

    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->g(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/os/IInterface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Landroid/os/IInterface;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected ok"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->b()V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->c(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->e(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->getServerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent outer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    iget-object p1, p1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->f(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$1;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mContext.startService, bind out handler"

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
