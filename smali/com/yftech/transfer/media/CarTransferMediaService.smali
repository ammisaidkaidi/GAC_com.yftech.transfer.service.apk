.class public Lcom/yftech/transfer/media/CarTransferMediaService;
.super Landroid/support/v4/media/MediaBrowserServiceCompat;
.source "CarTransferMediaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;,
        Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarTransferMediaService"


# instance fields
.field private mMediaChangedListener:Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;

.field private mMediaManager:Lcom/yftech/transfer/media/MediaManager;

.field private mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mMediaSessionCallback:Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/transfer/media/CarTransferMediaService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/transfer/media/CarTransferMediaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yftech/transfer/media/CarTransferMediaService;)Lcom/yftech/transfer/media/MediaManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    return-object p0
.end method

.method private getProductMediaPlayer()Lcom/yftech/transfer/media/AbsMediaPlayer;
    .locals 3

    .line 72
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x798d1bde

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CB_IHU19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/CarTransferMediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/transfer/txznet/TxznetMediaPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 75
    :cond_2
    new-instance v0, Lcom/yftech/transfer/txznet/MutiMediaPlayer;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/MutiMediaPlayer;-><init>()V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "===========transfer media service=========="

    .line 479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/MediaManager;->dump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public notifyMediaMetaDataChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/media/CarTransferMediaService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 46
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onCreate()V

    .line 47
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v1, "transfer.media"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 48
    new-instance v0, Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;-><init>(Lcom/yftech/transfer/media/CarTransferMediaService;Lcom/yftech/transfer/media/CarTransferMediaService$1;)V

    iput-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSessionCallback:Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;

    .line 49
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSessionCallback:Lcom/yftech/transfer/media/CarTransferMediaService$MediaSessionCallback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 51
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 53
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/media/CarTransferMediaService;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 54
    invoke-direct {p0}, Lcom/yftech/transfer/media/CarTransferMediaService;->getProductMediaPlayer()Lcom/yftech/transfer/media/AbsMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    .line 55
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {v0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->init()V

    .line 56
    new-instance v0, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;-><init>(Lcom/yftech/transfer/media/CarTransferMediaService;Lcom/yftech/transfer/media/CarTransferMediaService$1;)V

    iput-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaChangedListener:Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;

    .line 57
    invoke-static {}, Lcom/yftech/transfer/media/MediaManager;->getInstance()Lcom/yftech/transfer/media/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    .line 58
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    iget-object v1, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/MediaManager;->addMediaPlayer(Lcom/yftech/transfer/media/AbsMediaPlayer;)V

    .line 59
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    iget-object v1, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/MediaManager;->mediaPlayerStart(Lcom/yftech/transfer/media/AbsMediaPlayer;)V

    .line 60
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    iget-object v1, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/media/AbsMediaPlayer;->setMediaPlayerListener(Lcom/yftech/transfer/media/AbsMediaPlayer$IMediaPlayerListener;)V

    .line 61
    iget-object v0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaChangedListener:Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/media/MediaManager;->addOnMediaChangedListener(Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 485
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onDestroy()V

    .line 486
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaPlayer:Lcom/yftech/transfer/media/AbsMediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/AbsMediaPlayer;->uninit()V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/yftech/transfer/media/CarTransferMediaService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "onGetRoot:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 92
    new-instance p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p1, "transfer.media"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService;->mMediaManager:Lcom/yftech/transfer/media/MediaManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/media/MediaManager;->getMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
