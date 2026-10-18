.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->registerClient(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

.field final synthetic val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$800(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appAlias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$2;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
