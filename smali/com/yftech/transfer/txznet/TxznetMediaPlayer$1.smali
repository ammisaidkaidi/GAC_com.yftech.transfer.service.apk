.class Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "TxznetMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->toConnectTxznetMusicPlayer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iput-object p2, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 41
    invoke-static {}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnected, connect to txznet player success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-static {v3}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$300(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-static {v0, v1}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$202(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-static {v0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$200(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-static {p0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$400(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onConnectionFailed, connect to txznet player failed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onConnectionSuspended, disconnect to txznet player"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
