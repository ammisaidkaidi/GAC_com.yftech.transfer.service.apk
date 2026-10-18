.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->syncRegistrationsToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 385
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 387
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 388
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 389
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 390
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 391
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
