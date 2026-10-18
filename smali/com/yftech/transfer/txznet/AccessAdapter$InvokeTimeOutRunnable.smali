.class Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;
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
    name = "InvokeTimeOutRunnable"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/yftech/transfer/txznet/AccessAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/txznet/AccessAdapter;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "invoke intent timeout!"

    .line 166
    invoke-static {v0}, Lcom/yftech/transfer/txznet/PlatformAdapterService;->LOGI(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$600(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 169
    iget-object v0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {v2}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$700(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    const-class v3, Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$602(Lcom/yftech/transfer/txznet/AccessAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 170
    iget-object p0, p0, Lcom/yftech/transfer/txznet/AccessAdapter$InvokeTimeOutRunnable;->this$0:Lcom/yftech/transfer/txznet/AccessAdapter;

    invoke-static {p0}, Lcom/yftech/transfer/txznet/AccessAdapter;->access$600(Lcom/yftech/transfer/txznet/AccessAdapter;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
