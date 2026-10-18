.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->stopSTT(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
    .locals 0

    .line 2568
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 2571
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 2572
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTTListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;)V

    .line 2573
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$70;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;->onStop()V

    return-void
.end method
