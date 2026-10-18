.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$4;
.super Ljava/lang/Object;
.source "SpeechClientMgr.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$OnFrontStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 3

    const-string v0, "SpeechClientMgr"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged isInFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr$4;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;->access$900(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClientMgr;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    .line 373
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->isIsObserveState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->setState(J)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->clearState(J)V

    goto :goto_0

    :cond_2
    return-void
.end method
