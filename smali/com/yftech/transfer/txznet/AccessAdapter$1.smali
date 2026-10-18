.class Lcom/yftech/transfer/txznet/AccessAdapter$1;
.super Ljava/lang/Object;
.source "AccessAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/txznet/AccessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/txznet/AccessAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/txznet/AccessAdapter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invokeCmd(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "key_type"

    const v1, 0x7fffffff

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the key_type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->LOGI(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$400(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$400(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;->dispatch(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->LOGI(Ljava/lang/String;)V

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/yftech/transfer/txznet/AccessAdapter$1;->invokedResult(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no this key_type("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->LOGW(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private invokedResult(Ljava/lang/String;)V
    .locals 3

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.txznet.adapter.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "txz.tts.speak"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tts"

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {p0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$500(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$100(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$200(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v1

    iput-object v0, v1, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->intent:Landroid/content/Intent;

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$100(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v2}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 99
    :try_start_1
    invoke-direct {p0, v0}, Lcom/yftech/transfer/txznet/AccessAdapter$1;->invokeCmd(Landroid/content/Intent;)V

    .line 100
    iget-object v2, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v2}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v2

    iput-object v1, v2, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 102
    :try_start_2
    iget-object v3, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v3}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v3

    iput-object v1, v3, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->intent:Landroid/content/Intent;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke intent error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->LOGI(Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$100(Lcom/yftech/transfer/txznet/AccessAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$000(Lcom/yftech/transfer/txznet/AccessAdapter;)Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$1;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$300(Lcom/yftech/transfer/txznet/AccessAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
