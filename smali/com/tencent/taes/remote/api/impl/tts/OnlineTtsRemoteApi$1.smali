.class Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;
.super Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsCallback$Stub;
.source "OnlineTtsRemoteApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->this$0:Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayBegin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;->onPlayBegin()V

    :cond_0
    return-void
.end method

.method public onPlayCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;->val$listener:Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;->onPlayCompleted()V

    :cond_0
    return-void
.end method
