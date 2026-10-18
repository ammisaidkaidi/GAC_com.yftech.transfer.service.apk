.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;
.super Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitVoiceInputInner(JZLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-wide p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->val$taskId:J

    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .line 1305
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->val$taskId:J

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$32;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1700(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V

    return-void
.end method
