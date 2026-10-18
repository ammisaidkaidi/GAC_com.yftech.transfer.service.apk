.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitVoiceInputReal(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailed(ILjava/lang/String;)V
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    .line 1334
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    return-void
.end method

.method public onStartSuccess()V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz v0, :cond_0

    .line 1340
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$33;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartSuccess()V

    :cond_0
    return-void
.end method
