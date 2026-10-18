.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->registerWakeupSceneToSystemVr(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$speechVerCode:I

.field final synthetic val$wakeupSceneJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;ILjava/lang/String;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$speechVerCode:I

    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$wakeupSceneJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 954
    :try_start_0
    iget v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$speechVerCode:I

    const/16 v1, 0x136

    if-ge v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$wakeupSceneJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerSceneWakeup(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SpeechClient"

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerWakeupSceneToSystemVr compatible  speechVerCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$speechVerCode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$19;->val$wakeupSceneJson:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->registerWakeupSceneToSystemVr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 964
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 962
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
