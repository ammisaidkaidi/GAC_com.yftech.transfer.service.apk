.class Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    move-result-object v0

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1500(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient$7;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;->access$1400(Lcom/tencent/wecarspeech/clientsdk/impl/SpeechClient;)Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->registerSystemWakeup(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V

    .line 545
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
