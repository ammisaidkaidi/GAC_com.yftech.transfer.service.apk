.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

.field final synthetic b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->a:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->a:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

    invoke-interface {v0, v1}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;->setWeCarSpeechSdkListener(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->b(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setWeCarSpeechSdkListener OK"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->b(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "setWeCarSpeechSdkListener error"

    invoke-static {p0, v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->b(Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getWeCarSpeechSdkService() is null, postDelayed retry"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b$2;->b:Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;

    iget-object v0, v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$b;->a:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
