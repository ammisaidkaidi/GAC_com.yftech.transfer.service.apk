.class Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "TxznetMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/txznet/TxznetMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;-><init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-static {v0, p1}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$502(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 208
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v0, v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v0, v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-interface {v0, p0, p1}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onMediaMetaDataChanged(Lcom/yftech/transfer/media/IMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 180
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v0, v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    if-nez v0, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    :goto_0
    if-eq v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v1, v1, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object v2, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-interface {v1, v2, v0}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onPlayStateChanged(Lcom/yftech/transfer/media/IMediaPlayer;I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v1, v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object v2, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    .line 201
    invoke-static {v0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$500(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;->this$0:Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-static {p0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->access$500(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 202
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v5

    .line 200
    invoke-interface/range {v1 .. v6}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onPlayProgressChanged(Lcom/yftech/transfer/media/IMediaPlayer;JJ)V

    return-void

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
