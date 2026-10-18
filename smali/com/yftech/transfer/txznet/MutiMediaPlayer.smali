.class public Lcom/yftech/transfer/txznet/MutiMediaPlayer;
.super Lcom/yftech/transfer/media/AbsMediaPlayer;
.source "MutiMediaPlayer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "MutiMediaPlayer"

.field public static final PLAYSTATE_LOADING:I = 0x1

.field public static final PLAYSTATE_PLAY:I = 0x3

.field public static final PLAYSTATE_STOP:I = 0x2

.field private static final mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaSessionCallback:Lcom/desaysv/mixmedia/support/MediaSessionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getInstance()Lcom/desaysv/mixmedia/support/MultimediaManager;

    move-result-object v0

    sput-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;-><init>()V

    .line 26
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/txznet/MutiMediaPlayer$1;-><init>(Lcom/yftech/transfer/txznet/MutiMediaPlayer;)V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaSessionCallback:Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 7

    .line 89
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    .line 90
    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getState()I

    move-result v2

    .line 93
    sget-object v3, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {v3}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getDuration()J

    move-result-wide v3

    .line 94
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v6, "android.media.metadata.TITLE"

    .line 95
    invoke-virtual {v5, v6, p0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v6, "android.media.metadata.ARTIST"

    .line 96
    invoke-virtual {v5, v6, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v6, "android.media.metadata.ALBUM"

    .line 97
    invoke-virtual {v5, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v6, "android.media.metadata.DURATION"

    .line 98
    invoke-virtual {v5, v6, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 99
    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "getMediaMetadata:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v3
.end method

.method public getPlayProgress()[J
    .locals 5

    .line 106
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getDuration()J

    move-result-wide v0

    .line 107
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getPosition()J

    move-result-wide v2

    const/4 p0, 0x2

    .line 108
    new-array p0, p0, [J

    const/4 v4, 0x0

    aput-wide v0, p0, v4

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    return-object p0
.end method

.method public getPlayState()I
    .locals 2

    .line 74
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getState()I

    move-result p0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getPlayState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getInstance()Lcom/desaysv/mixmedia/support/MultimediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->connect(Landroid/content/Context;)Lcom/desaysv/mixmedia/support/MultimediaManager;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaSessionCallback:Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    invoke-virtual {v0, p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->registerCallback(Lcom/desaysv/mixmedia/support/MediaSessionCallback;)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 0

    .line 69
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public next()Z
    .locals 1

    .line 140
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->next()V

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " next,mMultimediaManager:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public pause()Z
    .locals 1

    .line 126
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->pause()V

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pause()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public play(I)Z
    .locals 0

    .line 120
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->play()V

    const/4 p0, 0x1

    return p0
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "play()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 114
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->play()V

    const/4 p0, 0x1

    return p0
.end method

.method public prev()Z
    .locals 0

    .line 147
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->previous()V

    const/4 p0, 0x1

    return p0
.end method

.method public stop()Z
    .locals 1

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " stop()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 134
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->stop()V

    const/4 p0, 0x1

    return p0
.end method

.method public uninit()V
    .locals 1

    .line 159
    sget-object v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    iget-object p0, p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMediaSessionCallback:Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    invoke-virtual {v0, p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->unregisterCallback(Lcom/desaysv/mixmedia/support/MediaSessionCallback;)V

    .line 160
    sget-object p0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;->mMultimediaManager:Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->disConnect()V

    return-void
.end method
