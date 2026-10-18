.class Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASAsrManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->b(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->b(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v2, v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 1

    const-string v0, "tas.callback.asr.result.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {p0, p1, p3, p4}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p4, "tas.callback.asr.reg.command"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    const-string p4, "tas.callback.asr.wakeup.scene"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->b(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    const-string p4, "tas.callback.asr.new.main_wakeup_word.set"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->c(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
