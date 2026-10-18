.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitSmartInputReal(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailed(ILjava/lang/String;)V
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartFailed(ILjava/lang/String;)V

    .line 1611
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    return-void
.end method

.method public onStartSuccess()V
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    if-eqz v0, :cond_0

    .line 1617
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$43;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;->startCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IStartResultCallback;->onStartSuccess()V

    :cond_0
    return-void
.end method
