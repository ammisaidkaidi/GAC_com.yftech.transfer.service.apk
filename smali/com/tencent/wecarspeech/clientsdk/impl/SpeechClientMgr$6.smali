.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->dispatchSystemSkill(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

.field final synthetic val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

.field final synthetic val$doaDirectionMode:I

.field final synthetic val$domainStr:Ljava/lang/String;

.field final synthetic val$semantic:Ljava/lang/String;

.field final synthetic val$skillStr:Ljava/lang/String;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    iput-wide p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$taskId:J

    iput-object p5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$domainStr:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$skillStr:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$semantic:Ljava/lang/String;

    iput p8, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$doaDirectionMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 418
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$dispatcher:Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$taskId:J

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$domainStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$skillStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$semantic:Ljava/lang/String;

    iget v6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$doaDirectionMode:I

    invoke-interface/range {v0 .. v6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;->dispatchSystemSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$6;->val$taskId:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$1000(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;J)V

    return-void
.end method
