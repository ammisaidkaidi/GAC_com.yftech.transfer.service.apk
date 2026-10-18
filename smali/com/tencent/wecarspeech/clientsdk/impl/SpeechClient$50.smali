.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->removeSpeechActiveListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$listener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
    .locals 0

    .line 1906
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;->val$listener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1909
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1911
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$50;->val$listener:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;

    invoke-interface {v0, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->removeSpeechActiveListener(Lcom/tencent/wecarspeech/vframework/ISpeechActiveListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 1915
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 1913
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
