.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startSTT(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .locals 0

    .line 2514
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-wide p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->val$taskId:J

    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .line 2518
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->val$taskId:J

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$67;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/STTParams;

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2520
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
