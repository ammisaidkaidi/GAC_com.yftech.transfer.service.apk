.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1513
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    .line 1514
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1515
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    .line 1516
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$39;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    return-void
.end method
