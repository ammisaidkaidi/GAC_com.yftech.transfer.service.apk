.class Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$1;
.super Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;
.source "TtsRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$1;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakerChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    const-string v1, "mTtsSpeakerCallbackStub:onSpeakerChanged"

    .line 52
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$1;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->access$000(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;

    .line 54
    invoke-interface {v0, p1}, Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;->onSpeakerChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
