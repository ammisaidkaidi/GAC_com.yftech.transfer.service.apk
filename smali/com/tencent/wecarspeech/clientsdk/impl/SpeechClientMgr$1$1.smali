.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->onLinkSuccess(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

.field final synthetic val$weCarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->val$weCarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SpeechClientMgr"

    const-string v1, "onLinkSuccess"

    .line 139
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->val$weCarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$002(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    .line 141
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$102(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Z)Z

    .line 143
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    .line 144
    invoke-interface {v1}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;->onClientReady()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->startObserve(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->this$1:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;

    iget-object v0, v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;->val$weCarService:Lcom/tencent/wecarspeech/vframework/ISpeechService;

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    return-void
.end method
