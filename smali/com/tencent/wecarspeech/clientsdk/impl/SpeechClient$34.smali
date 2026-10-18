.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setSemanticContext(Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$context:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->val$context:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$34;->val$context:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setSemanticContextNew(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "setSemanticContext fail"

    .line 1373
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
