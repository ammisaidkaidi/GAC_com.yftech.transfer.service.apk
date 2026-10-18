.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->clearState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$state:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-wide p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->val$state:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2200
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2100(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V

    .line 2201
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2200(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->val$state:J

    not-long v3, v3

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2202(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)J

    .line 2202
    iget-wide v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->val$state:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2203
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    const-wide/16 v0, 0x258

    invoke-static {p0, v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    goto :goto_0

    .line 2205
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$58;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$2300(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;J)V

    :goto_0
    return-void
.end method
