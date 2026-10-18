.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;
.super Lcom/tencent/wecarspeech/vframework/ISSTResult$Stub;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startSTTReal(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .locals 0

    .line 2535
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/ISSTResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSTTResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2538
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->sttListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

    if-eqz v0, :cond_0

    .line 2539
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$68;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STTParams;->sttListener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;->onSTTResult(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
