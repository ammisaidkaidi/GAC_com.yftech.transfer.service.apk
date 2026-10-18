.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;
.super Landroid/content/BroadcastReceiver;
.source "SpeechClientMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerComeAliveReceiver(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V
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

    .line 500
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "SpeechClientMgr"

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerComeAliveReceiver wecarspeech onReceive "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$1100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$1200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    .line 505
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$8;->val$callback:Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$1300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/interfaces/OnClientReadyCallback;)V

    return-void
.end method
