.class public interface abstract Lcom/tencent/taes/remote/api/tts/ITtsApi;
.super Ljava/lang/Object;
.source "ITtsApi.java"


# virtual methods
.method public abstract addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getAvailableTtsSpeaker()[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getChooseTtsId()Ljava/lang/String;
.end method

.method public abstract getChooseTtsName()Ljava/lang/String;
.end method

.method public abstract getSpeakerName(Ljava/lang/String;)V
.end method

.method public abstract getTtsSpeaker()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTtsSpeakerName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isInited()Z
.end method

.method public abstract isOfficialTtsSpeaker()Z
.end method

.method public abstract playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
.end method

.method public abstract playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
.end method

.method public abstract playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
.end method

.method public abstract playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
.end method

.method public abstract registerInitCallback(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;)V
.end method

.method public abstract removePlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAppendTtsSpeakerPath(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setChooseTts(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTtsSpeaker(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startTtsPage(Landroid/content/Context;)V
.end method

.method public abstract stopPlay(Ljava/lang/String;)V
.end method
