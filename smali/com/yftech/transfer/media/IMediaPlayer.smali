.class public interface abstract Lcom/yftech/transfer/media/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# virtual methods
.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
.end method

.method public abstract getPlayProgress()[J
.end method

.method public abstract getPlayState()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract next()Z
.end method

.method public abstract pause()Z
.end method

.method public abstract play(I)Z
.end method

.method public abstract play(Landroid/support/v4/media/MediaMetadataCompat;)Z
.end method

.method public abstract prev()Z
.end method

.method public abstract stop()Z
.end method
