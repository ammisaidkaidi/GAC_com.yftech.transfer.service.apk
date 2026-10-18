.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;
.super Lcom/tencent/wecarspeech/vframework/IClientVerifyResult$Stub;
.source "SpeechClientMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->verifyClient(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Z
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

    .line 331
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IClientVerifyResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SpeechClientMgr"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVerifyResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    .line 336
    :cond_0
    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appAlias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$3;->val$client:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/InvalidAppIdException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
