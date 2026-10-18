.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->initInner(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

.field final synthetic val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkDisconnected()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$3;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkFailed(ILjava/lang/String;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkSuccess(Lcom/tencent/wecarspeech/vframework/ISpeechService;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$600(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$1;Lcom/tencent/wecarspeech/vframework/ISpeechService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
