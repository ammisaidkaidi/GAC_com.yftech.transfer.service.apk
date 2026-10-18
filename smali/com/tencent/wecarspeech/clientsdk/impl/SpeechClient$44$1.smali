.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;)V
    .locals 0

    .line 1677
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 1681
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 1682
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V

    .line 1683
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 1684
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    .line 1685
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$44;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    return-void
.end method
