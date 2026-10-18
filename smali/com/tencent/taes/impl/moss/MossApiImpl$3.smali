.class Lcom/tencent/taes/impl/moss/MossApiImpl$3;
.super Lcom/tencent/mossbiz/IWeCarMasAudioCallback$Stub;
.source "MossApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/impl/moss/MossApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/moss/MossApiImpl;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-direct {p0}, Lcom/tencent/mossbiz/IWeCarMasAudioCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->END:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->ERROR:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicInfoChange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-virtual {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicInfoChange(Lcom/tencent/taes/api/moss/bean/MossAudioBean;)V

    :cond_0
    return-void
.end method

.method public onMusicPause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->PAUSE:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicPlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->PLAY:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->STOP:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicWaiting()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->WAItING:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onMusicStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/api/moss/listener/MossCallback;->onProgress(JJ)V

    :cond_0
    return-void
.end method
