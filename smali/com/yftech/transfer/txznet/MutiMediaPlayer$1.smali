.class Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;
.super Ljava/lang/Object;
.source "MutiMediaPlayer.java"

# interfaces
.implements Lcom/desaysv/mixmedia/support/MediaSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/txznet/MutiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/txznet/MutiMediaPlayer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaChanged(Ljava/lang/String;Ljava/lang/CharSequence;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " onMediaChanged:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p1, p1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p1, p1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object p2, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onMediaMetaDataChanged(Lcom/yftech/transfer/media/IMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method public onPlayPositionChanged(JJJ)V
    .locals 6

    .line 41
    iget-object p3, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p3, p3, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    if-eqz p3, :cond_0

    .line 42
    iget-object p3, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object v0, p3, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object v1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    move-wide v2, p5

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onPlayProgressChanged(Lcom/yftech/transfer/media/IMediaPlayer;JJ)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p1, p1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p1, p1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaPlayerListener:Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;

    iget-object v0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;->this$0:Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->getPlayState()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;->onPlayStateChanged(Lcom/yftech/transfer/media/IMediaPlayer;I)V

    :cond_0
    return-void
.end method
