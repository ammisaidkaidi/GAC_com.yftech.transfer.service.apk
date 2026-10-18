.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setVrSpriteModalState(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$finalDimBehind:Z

.field final synthetic val$modal:Z

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JZZ)V
    .locals 0

    .line 2266
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-wide p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$taskId:J

    iput-boolean p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$modal:Z

    iput-boolean p5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$finalDimBehind:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2269
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2271
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/vframework/ISpeechService;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$taskId:J

    iget-boolean v5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$modal:Z

    iget-boolean v6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$59;->val$finalDimBehind:Z

    invoke-interface/range {v1 .. v6}, Lcom/tencent/wecarspeech/vframework/ISpeechService;->setVrSpriteModalState(Ljava/lang/String;JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "NullPointerException "

    .line 2275
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SpeechClient"

    const-string v1, "RemoteException "

    .line 2273
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
