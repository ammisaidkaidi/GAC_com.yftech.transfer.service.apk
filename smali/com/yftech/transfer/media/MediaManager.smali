.class public Lcom/yftech/transfer/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;
    }
.end annotation


# static fields
.field public static final PLAY_STATE_PAUSE:I = 0x2

.field public static final PLAY_STATE_PLAYING:I = 0x1

.field public static final PLAY_STATE_STOP:I = 0x3

.field public static final PLAY_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaManager"

.field private static mInstance:Lcom/yftech/transfer/media/MediaManager;


# instance fields
.field private mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

.field private final mMediaChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaPlayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/transfer/media/AbsMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/yftech/transfer/media/MediaManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/yftech/transfer/media/MediaManager;->mInstance:Lcom/yftech/transfer/media/MediaManager;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/yftech/transfer/media/MediaManager;->mInstance:Lcom/yftech/transfer/media/MediaManager;

    return-object v0

    .line 47
    :cond_0
    const-class v0, Lcom/yftech/transfer/media/MediaManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/yftech/transfer/media/MediaManager;->mInstance:Lcom/yftech/transfer/media/MediaManager;

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Lcom/yftech/transfer/media/MediaManager;

    invoke-direct {v1}, Lcom/yftech/transfer/media/MediaManager;-><init>()V

    sput-object v1, Lcom/yftech/transfer/media/MediaManager;->mInstance:Lcom/yftech/transfer/media/MediaManager;

    .line 51
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/yftech/transfer/media/MediaManager;->mInstance:Lcom/yftech/transfer/media/MediaManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addMediaPlayer(Lcom/yftech/transfer/media/AbsMediaPlayer;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1, p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->setMediaPlayerListener(Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;)V

    :cond_0
    return-void
.end method

.method public addOnMediaChangedListener(Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "player list:\n"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/transfer/media/AbsMediaPlayer;

    const-string v4, "\t"

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/transfer/media/AbsMediaPlayer;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string v3, "-----------------------------------\n"

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "current player:"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public getPlayProgress()[J
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->getPlayProgress()[J

    move-result-object p0

    return-object p0
.end method

.method public getPlayState()I
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->getPlayState()I

    move-result p0

    return p0
.end method

.method public mediaPlayerStart(Lcom/yftech/transfer/media/AbsMediaPlayer;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    :cond_0
    return-void
.end method

.method public next()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->next()Z

    move-result p0

    return p0
.end method

.method public onMediaMetaDataChanged(Lcom/yftech/transfer/media/IMediaPlayer;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;

    .line 212
    invoke-virtual {p1, p2}, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;->onMediaMetaDataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayProgressChanged(Lcom/yftech/transfer/media/IMediaPlayer;JJ)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;

    .line 219
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;->onPlayProgressChanged(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/yftech/transfer/media/IMediaPlayer;I)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;

    .line 205
    invoke-virtual {p1, p2}, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;->onPlayStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->pause()Z

    move-result p0

    return p0
.end method

.method public play(I)Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->play(I)Z

    move-result p0

    return p0
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->play(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p0

    return p0
.end method

.method public prev()Z
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->prev()Z

    move-result p0

    return p0
.end method

.method public removeMediaPlayer(Lcom/yftech/transfer/media/AbsMediaPlayer;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    if-ne v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->setMediaPlayerListener(Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;)V

    .line 74
    iput-object v1, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaPlayerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removeOnMediaChangedListener(Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mMediaChangedListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/yftech/transfer/media/MediaManager;->mCurMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->stop()Z

    move-result p0

    return p0
.end method
