.class public Lcom/yftech/transfer/txznet/TxznetMediaPlayer;
.super Lcom/yftech/transfer/media/AbsMediaPlayer;
.source "TxznetMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TxznetMediaPlayer"

.field private static final TXZNET_MUSIC_PACKAGE:Ljava/lang/String; = "com.txznet.music"


# instance fields
.field private mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaControllerCallback:Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->toConnectTxznetMusicPlayer(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaControllerCallback:Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method private toConnectTxznetMusicPlayer(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.txznet.music"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->findBrowserServiceComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v1, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "TxznetMediaPlayer, find txznet music player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;-><init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;)V

    iput-object v1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaControllerCallback:Lcom/yftech/transfer/txznet/TxznetMediaPlayer$MediaControllerCallback;

    .line 38
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    new-instance v3, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;

    invoke-direct {v3, p0, p1}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer$1;-><init>(Lcom/yftech/transfer/txznet/TxznetMediaPlayer;Landroid/content/Context;)V

    invoke-direct {v1, p1, v0, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 60
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TxznetMediaPlayer:\n"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tname="

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisConnected="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-nez v1, :cond_0

    const-string v1, "false"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcurMediaMetaData="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayProgress()[J
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    .line 103
    iget-object v2, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mCurMediaMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    const/4 p0, 0x2

    .line 104
    new-array p0, p0, [J

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayState()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :cond_0
    :goto_0
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "com.txznet.music"

    return-object p0
.end method

.method public next()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public play(I)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public prev()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
