.class Lcom/desaysv/mixmedia/support/MultimediaManager$2;
.super Ljava/lang/Object;
.source "MultimediaManager.java"

# interfaces
.implements Lcom/desaysv/mixmedia/support/OnSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desaysv/mixmedia/support/MultimediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;


# direct methods
.method constructor <init>(Lcom/desaysv/mixmedia/support/MultimediaManager;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 436
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioInfoChanged: connection ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", onAudioInfoChanged: info = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnected(Landroid/media/session/MediaController;)V
    .locals 3
    .param p1    # Landroid/media/session/MediaController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 147
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-ne v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    const-string v1, "key_request_media_source"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-ne v0, p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1, v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$700(Lcom/desaysv/mixmedia/support/MultimediaManager;Lcom/desaysv/mixmedia/support/BaseConnection;)V

    .line 157
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->requestBtUsbConnState()Ljava/lang/Boolean;

    .line 158
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->requestLoginState()V

    :cond_2
    return-void
.end method

.method public onConnectionFailed(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 17
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 169
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$802(Lcom/desaysv/mixmedia/support/MultimediaManager;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;

    .line 170
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v1, v2, :cond_0

    .line 171
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v1

    iput-object v3, v1, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    .line 172
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {v2, v6, v8, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 173
    :cond_0
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 174
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v1

    iput-object v3, v1, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    .line 175
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v8, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    iget-object v0, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 180
    invoke-interface {v1, v7}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onStateChanged(I)V

    const-string v9, ""

    const-string v10, ""

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v1

    .line 181
    invoke-interface/range {v8 .. v16}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaChanged(Ljava/lang/String;Ljava/lang/CharSequence;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1

    .line 182
    invoke-interface/range {v8 .. v14}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onPlayPositionChanged(JJJ)V

    .line 183
    invoke-interface {v1, v3}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueChanged(Ljava/util/List;)V

    .line 184
    invoke-interface {v1, v3}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onConnectionSuspended(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 0
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 164
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$802(Lcom/desaysv/mixmedia/support/MultimediaManager;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;

    return-void
.end method

.method public onExtrasChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onExtrasChanged: connection ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", onExtrasChanged"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/desaysv/mixmedia/support/LogUtils;->showBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/MediaMetadata;)V
    .locals 18
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaMetadata;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 208
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetadataChanged: connection ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", metadata = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    invoke-static {v3}, Lcom/desaysv/mixmedia/support/LogUtils;->showDescription(Landroid/media/MediaDescription;)V

    :cond_0
    if-eqz v2, :cond_4

    .line 214
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetadataChanged(): mediaController = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v5}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",  connection.mediaController = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, v1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iget-object v4, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v4}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 216
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onMetadataChanged 1"

    invoke-static {v1, v3}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 217
    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetadataChanged id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v3, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v3}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1000(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v3}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1000(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    :cond_1
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetadataChanged 2"

    invoke-static {v3, v4}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.media.metadata.TITLE"

    .line 221
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "android.media.metadata.ALBUM"

    .line 222
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "android.media.metadata.ARTIST"

    .line 223
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "android.media.metadata.DURATION"

    .line 224
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    .line 225
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "android.media.metadata.RATING"

    .line 226
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Rating;->hasHeart()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move/from16 v17, v2

    .line 227
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1000(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 228
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMetadataChanged 3"

    invoke-static {v2, v3}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    move-object v3, v1

    move-object v4, v11

    move-wide v5, v14

    move/from16 v7, v17

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, v16

    .line 235
    invoke-interface/range {v2 .. v10}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaChanged(Ljava/lang/String;Ljava/lang/CharSequence;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_3
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current media controller["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] not equal "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/media/session/PlaybackState;)V
    .locals 8
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 254
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged: connection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onPlaybackStateChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onPlaybackStateChanged"

    .line 256
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->showBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    if-eqz p2, :cond_4

    .line 260
    iget-object p1, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x3

    if-ne p1, v0, :cond_3

    .line 261
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 262
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 263
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 265
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 266
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object p1

    sget-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->BT_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    if-eq p1, v0, :cond_2

    .line 268
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 275
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 276
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onStateChanged(I)V

    .line 277
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getDuration()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onPlayPositionChanged(JJJ)V

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 282
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged: not focus and require it "

    invoke-static {p1, v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public onQueueChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/util/List;)V
    .locals 3
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

    .line 191
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged(): connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  queue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged(): mediaController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  connection.mediaController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onQueueChanged(): start callback"

    invoke-static {p1, v0}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 198
    invoke-interface {p1, p2}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 291
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueTitleChanged: connection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onQueueTitleChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueTitleChanged(): mediaController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  connection.mediaController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 296
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 298
    invoke-interface {p1, p2}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionDestroyed(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 3
    .param p1    # Lcom/desaysv/mixmedia/support/BaseConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 424
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionDestroyed: connection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onSessionDestroyed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object p1, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 426
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 427
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 428
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 429
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1000(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionEvent(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
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

    .line 311
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEvent: connection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", MediaControllerCallback onSessionEvent():%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onSessionEvent"

    .line 312
    invoke-static {v0, p3}, Lcom/desaysv/mixmedia/support/LogUtils;->showBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_bt_connect_state"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "key_music_lyrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v0, "key_query_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "type_media_connector"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "key_query_album"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "key_usb0_connect_state"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "key_xmly_user"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    .line 411
    :pswitch_0
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    if-eqz p3, :cond_1

    const-string p2, "key_query_mode"

    .line 413
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 414
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/desaysv/mixmedia/media/data/bean/ModeChoices;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/desaysv/mixmedia/media/data/bean/ModeChoices;

    invoke-interface {p1, p2}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onQueryChoicesCallback(Lcom/desaysv/mixmedia/media/data/bean/ModeChoices;)V

    goto :goto_2

    .line 397
    :pswitch_1
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    if-eqz p3, :cond_2

    .line 399
    const-class p1, Lcom/desaysv/mixmedia/media/data/bean/Album;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "value_query_key"

    .line 400
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string p1, "value_query_group"

    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "value_image_url"

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "value_album_id"

    .line 403
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "value_album_title"

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-interface/range {v0 .. v5}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onQueryAlbumCallback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 383
    :pswitch_2
    iget-object p2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/desaysv/mixmedia/support/AccountCallback;

    if-eqz p3, :cond_3

    .line 385
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 386
    const-class v1, Lcom/desaysv/mixradio/media/data/model/xm/Profile;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "value_user"

    .line 387
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/desaysv/mixradio/media/data/model/xm/Profile;

    invoke-interface {v0, v1}, Lcom/desaysv/mixmedia/support/AccountCallback;->onXmlyUserChanged(Lcom/desaysv/mixradio/media/data/model/xm/Profile;)V

    goto :goto_4

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 389
    const-class v1, Lcom/desaysv/mixmedia/media/data/bean/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "value_user"

    .line 390
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/desaysv/mixmedia/media/data/bean/User;

    invoke-interface {v0, v1}, Lcom/desaysv/mixmedia/support/AccountCallback;->onKugouUserChanged(Lcom/desaysv/mixmedia/media/data/bean/User;)V

    goto :goto_4

    .line 374
    :pswitch_3
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    if-eqz p3, :cond_5

    const-string p2, "value_usb_connect_state"

    .line 376
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 377
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onUsbConnectState(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 365
    :pswitch_4
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    if-eqz p3, :cond_6

    const-string p2, "value_bt_connect_state"

    .line 367
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 368
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onBtConnectState(Ljava/lang/Boolean;)V

    goto :goto_6

    :pswitch_5
    if-eqz p3, :cond_9

    const-string p1, "value_music_lyrics"

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "value_music_lyrics"

    .line 337
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    iget-object p3, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p3}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1500(Lcom/desaysv/mixmedia/support/MultimediaManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 339
    iget-object p2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 340
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 341
    invoke-interface {p2, p1}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onLyricReceived(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    if-eqz p3, :cond_9

    const/4 p1, 0x0

    const-string p2, "type_media_connector"

    .line 318
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extras.getInt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "type_media_connector"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;)V

    const-string p1, "type_media_connector"

    .line 320
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getMediaSourceByCode(I)Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object p1

    :cond_7
    if-nez p1, :cond_8

    return-void

    .line 326
    :cond_8
    iget-object p2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p2, p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$1400(Lcom/desaysv/mixmedia/support/MultimediaManager;Lcom/desaysv/mixmedia/support/EnumMediaSource;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 327
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;->this$0:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-static {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 328
    invoke-interface {p2, p1}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onSourceTypeChanged(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V

    goto :goto_8

    :cond_9
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ecb6738 -> :sswitch_6
        -0x183200f7 -> :sswitch_5
        0xa51aa58 -> :sswitch_4
        0x543102ad -> :sswitch_3
        0x5b316c9a -> :sswitch_2
        0x6ce3112e -> :sswitch_1
        0x7fff1daf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
