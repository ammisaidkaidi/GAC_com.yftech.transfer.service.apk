.class Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;
.super Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;
.source "TtsRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->createITtsPlayCallbackStub(Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->access$400(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlayBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onPlayBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-static {p2}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->access$400(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/Map;

    move-result-object p2

    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlayCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onPlayCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->this$0:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->access$400(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlayInterrupted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayInterrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onPlayInterrupted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressReturn(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TtsRemoteApi"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressReturn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onProgressReturn(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "TtsRemoteApi"

    .line 228
    invoke-static {p1, p0}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
