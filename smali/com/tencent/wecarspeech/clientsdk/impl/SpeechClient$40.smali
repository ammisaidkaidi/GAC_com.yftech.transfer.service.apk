.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->startWaitSmartInputInBack(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

.field final synthetic val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iput-wide p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->val$taskId:J

    iput-object p4, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1542
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    iget-wide v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->val$taskId:J

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$40;->val$params:Lcom/tencent/wecarspeech/clientsdk/model/SmartParams;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;JZLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V

    return-void
.end method
