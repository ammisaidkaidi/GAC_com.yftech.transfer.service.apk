.class Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$4;
.super Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;
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

    .line 83
    iput-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$4;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$4;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->access$300(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;

    .line 87
    invoke-interface {v0, p1, p2}, Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;->callback(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
