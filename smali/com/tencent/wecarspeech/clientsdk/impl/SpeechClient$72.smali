.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->cancelAudioRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/lang/String;)V
    .locals 0

    .line 2781
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;->val$taskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2784
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2786
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$72;->val$taskId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->cancelAudioRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2790
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2788
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
