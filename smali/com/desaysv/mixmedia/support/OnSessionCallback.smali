.class interface abstract Lcom/desaysv/mixmedia/support/OnSessionCallback;
.super Ljava/lang/Object;
.source "OnSessionCallback.java"


# virtual methods
.method public abstract onAudioInfoChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/MediaController$PlaybackInfo;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onConnected(Landroid/media/session/MediaController;)V
    .param p1    # Landroid/media/session/MediaController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onConnectionFailed(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onConnectionSuspended(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onExtrasChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/os/Bundle;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMetadataChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/MediaMetadata;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaMetadata;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPlaybackStateChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/PlaybackState;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onQueueChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/util/List;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/desaysv/mixmedia/support/BaseConnection;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueueTitleChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/CharSequence;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSessionDestroyed(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSessionEvent(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
