.class abstract Lcom/desaysv/mixmedia/support/BaseConnection;
.super Ljava/lang/Object;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

.field private final handler:Landroid/os/Handler;

.field mediaBrowser:Landroid/media/browse/MediaBrowser;

.field private final mediaControlCallback:Landroid/media/session/MediaController$Callback;

.field mediaController:Landroid/media/session/MediaController;

.field private final onSessionCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/desaysv/mixmedia/support/BaseConnection$1;

    invoke-direct {v0, p0}, Lcom/desaysv/mixmedia/support/BaseConnection$1;-><init>(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaControlCallback:Landroid/media/session/MediaController$Callback;

    .line 37
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->handler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->onSessionCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/desaysv/mixmedia/support/BaseConnection;)Lcom/desaysv/mixmedia/support/OnSessionCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->onSessionCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/desaysv/mixmedia/support/BaseConnection;)Landroid/media/session/MediaController$Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaControlCallback:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/desaysv/mixmedia/support/BaseConnection;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method abstract changeSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V
.end method

.method connect2MBService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->callback:Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

    invoke-direct {v0, p0, p1}, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;-><init>(Lcom/desaysv/mixmedia/support/BaseConnection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->callback:Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Landroid/media/browse/MediaBrowser;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->callback:Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->callback:Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;

    iget-boolean p1, p1, Lcom/desaysv/mixmedia/support/BaseConnection$ConnectCallback;->isConnecting:Z

    if-nez p1, :cond_2

    .line 121
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    :cond_2
    return-void
.end method

.method disConnect()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    :cond_0
    return-void
.end method

.method getBufferedPosition()J
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getMediaSource()Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "key_xmly_media_source"

    sget-object v1, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    invoke-virtual {v1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 56
    invoke-static {p0}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getMediaSourceByCode(I)Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 60
    :cond_0
    sget-object p0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-object p0
.end method

.method getNowPlayingAlbum()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.ALBUM"

    .line 217
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ALBUM"

    .line 218
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getNowPlayingArtist()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.ARTIST"

    .line 142
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ARTIST"

    .line 143
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getNowPlayingDisplayIconUrl()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 277
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 278
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getNowPlayingDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 201
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 202
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 203
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getNowPlayingDuration()J
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 187
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 188
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getNowPlayingMediaId()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 231
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 232
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 233
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method getNowPlayingTitle()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 157
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 158
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getPlayState()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getPosition()J
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 304
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method isCollected()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.RATING"

    .line 312
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.RATING"

    .line 313
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method showState(Landroid/media/session/MediaController;)V
    .locals 15

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 366
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 367
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "[%s]:string=%s, text=%s, long=%d, rating=%s]"

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v8, v12, v6

    .line 369
    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 370
    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v8

    aput-object v8, v12, v2

    .line 368
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 374
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/desaysv/mixmedia/support/LogUtils;->showDescription(Landroid/media/MediaDescription;)V

    .line 377
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "[PlaybackState] state=%d, bufferedPosition=%d, position=%d, actions=%d, activeQueueItemId=%d, CustomActions=%s, ErrorMessage=%s, playbackSpeed=%f"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 381
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    .line 382
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    .line 383
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v3

    .line 384
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v2

    .line 385
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x6

    .line 386
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x7

    .line 387
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v1

    .line 379
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PlaybackState.getExtras()"

    .line 388
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/desaysv/mixmedia/support/LogUtils;->showBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 391
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    .line 393
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-static {v1}, Lcom/desaysv/mixmedia/support/LogUtils;->showDescription(Landroid/media/MediaDescription;)V

    goto :goto_1

    .line 396
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Queue] is null"

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rating type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extras"

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->showBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
