.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;
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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$count:I

.field final synthetic val$doaDirectionMode:I

.field final synthetic val$domainStr:Ljava/lang/String;

.field final synthetic val$semantic:Ljava/lang/String;

.field final synthetic val$skillStr:Ljava/lang/String;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$appId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$taskId:J

    iput-object p5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$domainStr:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$skillStr:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$semantic:Ljava/lang/String;

    iput p8, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$doaDirectionMode:I

    iput p9, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 402
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$appId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$taskId:J

    iget-object v4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$domainStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$skillStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$semantic:Ljava/lang/String;

    iget v7, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$doaDirectionMode:I

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$5;->val$count:I

    add-int/lit8 v8, p0, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->dispatchSystemSkill(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
