.class Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desaysv/mixmedia/support/BaseConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectCallback"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public isConnecting:Z

.field final synthetic this$0:Lcom/desaysv/mixmedia/support/BaseConnection;


# direct methods
.method public constructor <init>(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/content/Context;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->isConnecting:Z

    .line 330
    iput-object p2, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const-string v0, "onConnected"

    .line 335
    invoke-static {v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->isConnecting:Z

    .line 337
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    iget-object v2, v2, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 338
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$100(Lcom/desaysv/mixmedia/support/BaseConnection;)Landroid/media/session/MediaController$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$200(Lcom/desaysv/mixmedia/support/BaseConnection;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 339
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    iput-object v0, v1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    .line 340
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onConnected(Landroid/media/session/MediaController;)V

    .line 341
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-virtual {v1, v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->showState(Landroid/media/session/MediaController;)V

    .line 342
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type_media_connector"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onExtrasChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    const-string v0, "onConnectionFailed"

    .line 356
    invoke-static {v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->isConnecting:Z

    .line 358
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onConnectionFailed(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    const-string v0, "onConnectionSuspended"

    .line 349
    invoke-static {v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->isConnecting:Z

    .line 351
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onConnectionSuspended(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    return-void
.end method
