.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMusicClient"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract addFavorite()I
.end method

.method public abstract cancelFavorite()I
.end method

.method public abstract closeApp(Ljava/lang/String;)V
.end method

.method public abstract getCurrentMusic()V
.end method

.method public abstract getPlayStatus()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPlayModeSupported(I)Z
.end method

.method public abstract next()V
.end method

.method public abstract openApp(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pre()V
.end method

.method public abstract searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setPlayMode(I)V
.end method
