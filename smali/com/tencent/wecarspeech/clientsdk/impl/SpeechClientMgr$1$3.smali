.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->onLinkDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SpeechClientMgr"

    const-string v1, "onLinkDisconnected"

    .line 175
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$102(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Z)Z

    .line 177
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 178
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$700(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    invoke-interface {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;->onClientDisconnect()V

    :cond_0
    return-void
.end method
