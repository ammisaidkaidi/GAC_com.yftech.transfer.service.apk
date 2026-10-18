.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->onLinkFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

.field final synthetic val$errCode:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;ILjava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iput p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$errCode:I

    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SpeechClientMgr"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkFailed errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$102(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Z)Z

    .line 162
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 163
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    iget v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$errCode:I

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;->onInitFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
