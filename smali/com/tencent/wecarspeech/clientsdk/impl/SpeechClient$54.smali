.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setHotWords(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$iHotWordsCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;

.field final synthetic val$modelStr:Ljava/lang/String;

.field final synthetic val$type:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
    .locals 0

    .line 2062
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$type:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$modelStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$iHotWordsCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2065
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2067
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$type:Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;

    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$modelStr:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$54;->val$iHotWordsCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setHotWordWithCallBack(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/wecarspeech/vframework/IHotWordsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2071
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2069
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
