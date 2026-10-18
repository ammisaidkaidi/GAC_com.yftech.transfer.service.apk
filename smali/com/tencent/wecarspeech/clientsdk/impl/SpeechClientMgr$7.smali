.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->dispatchSystemWakeup(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

.field final synthetic val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

.field final synthetic val$doaDirection:I

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$taskId:J

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    iput-wide p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$taskId:J

    iput-object p5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$sceneId:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$word:Ljava/lang/String;

    iput p7, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$doaDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 446
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$taskId:J

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$word:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$doaDirection:I

    invoke-interface/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSystemWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    .line 447
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$7;->val$taskId:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$1000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;J)V

    return-void
.end method
