.class public interface abstract Lcom/tencent/taes/remote/api/media/IMediaApi;
.super Ljava/lang/Object;
.source "IMediaApi.java"


# virtual methods
.method public abstract addAudioFocusListener(Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;)V
.end method

.method public abstract addPlayListListener(Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;)V
.end method

.method public abstract addPlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
.end method

.method public abstract decreaseVolume()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAudioFocus()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFirst()I
.end method

.method public abstract getNextWhenComplete(I)I
.end method

.method public abstract getPlayIndex()I
.end method

.method public abstract getPlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListBatch(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListSize()I
.end method

.method public abstract getPlayMode()I
.end method

.method public abstract getUploadPosition()J
.end method

.method public abstract hasAudioFocus()Z
.end method

.method public abstract init(Landroid/os/Bundle;)V
.end method

.method public abstract initTTSPlayer()V
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSeekable()Z
.end method

.method public abstract isSupportShuffleMode()Z
.end method

.method public abstract likeItem(Ljava/lang/String;IZ)V
.end method

.method public abstract next(I)I
.end method

.method public abstract pause(Z)V
.end method

.method public abstract play(Z)V
.end method

.method public abstract pre(I)I
.end method

.method public abstract removePlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
.end method

.method public abstract resumeVolume()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setPlayIndex(Ljava/lang/String;I)V
.end method

.method public abstract setPlayList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayListBatch(Ljava/lang/String;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract setPlayListener(Lcom/tencent/taes/remote/api/media/listener/IPlayerListener;)V
.end method

.method public abstract setPlayMode(Ljava/lang/String;I)V
.end method

.method public abstract setRecommendMode(Ljava/lang/String;I)V
.end method

.method public abstract stop()V
.end method

.method public abstract switchPlayMode(Ljava/lang/String;)V
.end method

.method public abstract updateListItem(Ljava/lang/String;ILcom/tencent/taes/remote/api/media/bean/MediaBean;)V
.end method
