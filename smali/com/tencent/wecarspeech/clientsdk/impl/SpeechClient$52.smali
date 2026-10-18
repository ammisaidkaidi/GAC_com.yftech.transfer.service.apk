.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHelpInfo(Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$helpInfo:Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;)V
    .locals 0

    .line 1959
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->val$helpInfo:Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1962
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$52;->val$helpInfo:Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setHelpDescription(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 1968
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 1966
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
