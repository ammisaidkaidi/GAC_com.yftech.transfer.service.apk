.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->reportAction(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extra:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 2374
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$extra:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2378
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$extra:Ljava/util/Map;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SpeechClient"

    .line 2381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAction action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extraJson = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2384
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$63;->val$action:Ljava/lang/String;

    invoke-interface {v1, v2, p0, v0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->reportAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2388
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2386
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
