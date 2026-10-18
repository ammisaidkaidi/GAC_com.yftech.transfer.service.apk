.class Lcom/desaysv/mixmedia/support/BaseConnection$1;
.super Landroid/media/session/MediaController$Callback;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desaysv/mixmedia/support/BaseConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desaysv/mixmedia/support/BaseConnection;


# direct methods
.method constructor <init>(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onAudioInfoChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onExtrasChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1    # Landroid/media/MediaMetadata;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onMetadataChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onPlaybackStateChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onQueueChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 81
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onQueueTitleChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onSessionDestroyed(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/BaseConnection;->access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection$1;->this$0:Lcom/desaysv/mixmedia/support/BaseConnection;

    invoke-interface {v0, p0, p1, p2}, Lcom/desaysv/mixmedia/support/OnSessionCallback;->onSessionEvent(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
