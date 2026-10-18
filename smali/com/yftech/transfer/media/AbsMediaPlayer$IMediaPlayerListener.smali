.class public interface abstract Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;
.super Ljava/lang/Object;
.source "AbsMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/media/AbsMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaPlayerListener"
.end annotation


# virtual methods
.method public abstract onMediaMetaDataChanged(Lcom/yftech/transfer/media/IMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract onPlayProgressChanged(Lcom/yftech/transfer/media/IMediaPlayer;JJ)V
.end method

.method public abstract onPlayStateChanged(Lcom/yftech/transfer/media/IMediaPlayer;I)V
.end method
