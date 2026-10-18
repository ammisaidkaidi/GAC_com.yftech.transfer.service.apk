.class public Lcom/desaysv/mixmedia/support/MultimediaManager;
.super Ljava/lang/Object;
.source "MultimediaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultimediaManager"

.field private static sInstance:Lcom/desaysv/mixmedia/support/MultimediaManager;


# instance fields
.field private final accountCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/desaysv/mixmedia/support/AccountCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/desaysv/mixmedia/support/MediaSessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

.field private final lyric:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaControlCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

.field private volatile mediaController:Landroid/media/session/MediaController;

.field private final mediaId:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final needReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final position:Ljava/util/concurrent/atomic/AtomicLong;

.field private final positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private weakReferenceContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->accountCallbacks:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->needReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Lcom/desaysv/mixmedia/support/MultimediaManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/desaysv/mixmedia/support/MultimediaManager$1;-><init>(Lcom/desaysv/mixmedia/support/MultimediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->position:Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    sget-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->lyric:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    new-instance v0, Lcom/desaysv/mixmedia/support/MultimediaManager$2;

    invoke-direct {v0, p0}, Lcom/desaysv/mixmedia/support/MultimediaManager$2;-><init>(Lcom/desaysv/mixmedia/support/MultimediaManager;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaControlCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->position:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->lyric:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/desaysv/mixmedia/support/MultimediaManager;Lcom/desaysv/mixmedia/support/EnumMediaSource;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->onChangeMediaSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/desaysv/mixmedia/support/MultimediaManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/desaysv/mixmedia/support/MultimediaManager;->setAtomicReference(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->accountCallbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/HashSet;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$400(Lcom/desaysv/mixmedia/support/MultimediaManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    return-object p0
.end method

.method static synthetic access$600(Lcom/desaysv/mixmedia/support/MultimediaManager;)Lcom/desaysv/mixmedia/support/XMLYConnection;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    return-object p0
.end method

.method static synthetic access$700(Lcom/desaysv/mixmedia/support/MultimediaManager;Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->refreshLiveData(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    return-void
.end method

.method static synthetic access$800(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/media/session/MediaController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$802(Lcom/desaysv/mixmedia/support/MultimediaManager;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic access$900(Lcom/desaysv/mixmedia/support/MultimediaManager;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/desaysv/mixmedia/support/MultimediaManager;
    .locals 2

    .line 57
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sInstance:Lcom/desaysv/mixmedia/support/MultimediaManager;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/desaysv/mixmedia/support/MultimediaManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager;->sInstance:Lcom/desaysv/mixmedia/support/MultimediaManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/desaysv/mixmedia/support/MultimediaManager;

    invoke-direct {v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;-><init>()V

    sput-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager;->sInstance:Lcom/desaysv/mixmedia/support/MultimediaManager;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sInstance:Lcom/desaysv/mixmedia/support/MultimediaManager;

    return-object v0
.end method

.method private getNowPlayingAlbum()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.ALBUM"

    .line 883
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ALBUM"

    .line 884
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNowPlayingArtist()Ljava/lang/String;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.ARTIST"

    .line 823
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ARTIST"

    .line 824
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNowPlayingDisplayIconUrl()Ljava/lang/String;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 913
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 914
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNowPlayingDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 868
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 869
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNowPlayingDuration()J
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.DURATION"

    .line 853
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 854
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getNowPlayingMediaId()Ljava/lang/String;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 898
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 899
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNowPlayingTitle()Ljava/lang/String;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.TITLE"

    .line 838
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 839
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getQueueItem(Lcom/desaysv/mixmedia/support/BaseConnection;Ljava/lang/String;)Landroid/media/session/MediaSession$QueueItem;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 448
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getQueue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    .line 453
    invoke-virtual {v0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    return-object p0

    .line 449
    :cond_3
    :goto_0
    sget-object p1, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    const-string p2, "getQueueItem  return null"

    invoke-static {p1, p2}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private onChangeMediaSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)Z
    .locals 4

    .line 939
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onChangeMediaSource] source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sourceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 944
    sget-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager$3;->$SwitchMap$com$desaysv$mixmedia$support$EnumMediaSource:[I

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 958
    sget-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    const-string v2, "[onChangeMediaSource] connection null "

    invoke-static {v1, v2}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :pswitch_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    .line 954
    sget-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onChangeMediaSource] connection to ximalaya: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :pswitch_1
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    .line 949
    sget-object v1, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onChangeMediaSource] connection to kugou: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :goto_0
    iget-object v1, v0, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iput-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    .line 962
    iput-object p1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 963
    invoke-direct {p0, v0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->refreshLiveData(Lcom/desaysv/mixmedia/support/BaseConnection;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLiveData(Lcom/desaysv/mixmedia/support/BaseConnection;)V
    .locals 13

    .line 772
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refreshLiveData] connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 773
    iget-object v0, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 776
    :cond_0
    iget-object v0, p1, Lcom/desaysv/mixmedia/support/BaseConnection;->mediaController:Landroid/media/session/MediaController;

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    .line 777
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getNowPlayingDuration()J

    move-result-wide v10

    .line 778
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->position:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 779
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getBufferedPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 780
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getPlayState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 781
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getMediaSource()Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    .line 782
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getNowPlayingMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/desaysv/mixmedia/support/MultimediaManager;->setAtomicReference(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 784
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    sget-object v2, Lcom/desaysv/mixmedia/support/EnumMediaSource;->BT_MUSIC:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    if-eq v0, v2, :cond_1

    .line 787
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/desaysv/mixmedia/support/MediaSessionCallback;

    .line 793
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/BaseConnection;->getPlayState()I

    move-result v1

    invoke-interface {v12, v1}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onStateChanged(I)V

    .line 794
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 795
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 797
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getCollected()Z

    move-result v6

    .line 798
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getAlbum()Ljava/lang/String;

    move-result-object v7

    .line 799
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getArtist()Ljava/lang/String;

    move-result-object v8

    .line 800
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    move-object v1, v12

    move-wide v4, v10

    .line 794
    invoke-interface/range {v1 .. v9}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaChanged(Ljava/lang/String;Ljava/lang/CharSequence;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->position:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-object v1, v12

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onPlayPositionChanged(JJJ)V

    .line 802
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueChanged(Ljava/util/List;)V

    .line 803
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private setAtomicReference(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 809
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 810
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static startAccountActivity(Landroid/content/Context;)V
    .locals 3

    .line 985
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.desaysv.mixmedia"

    const-string v2, "com.desaysv.mixmedia.AccountActivity"

    .line 986
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 987
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 988
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startMixMedia(Landroid/content/Context;)V
    .locals 3

    .line 973
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.desaysv.mixmedia"

    const-string v2, "com.desaysv.mixmedia.MainActivity"

    .line 974
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 975
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 976
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addAccountListener(Lcom/desaysv/mixmedia/support/AccountCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 756
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->accountCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 754
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "addAccountListener : callback cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public changeMediaSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeMediaSource] change source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager$3;->$SwitchMap$com$desaysv$mixmedia$support$EnumMediaSource:[I

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 527
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_media_source"

    .line 528
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_media_source"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 519
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_media_source"

    .line 520
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_media_source"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public collectOrNot()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getCollected()Z

    move-result v0

    .line 592
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    :cond_0
    return-void
.end method

.method public connect(Landroid/content/Context;)Lcom/desaysv/mixmedia/support/MultimediaManager;
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->needReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    .line 480
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaControlCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

    invoke-direct {v0, p1, v1, v2}, Lcom/desaysv/mixmedia/support/XMLYConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    invoke-virtual {v0, p1}, Lcom/desaysv/mixmedia/support/XMLYConnection;->reconnect(Landroid/content/Context;)V

    .line 485
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    if-nez v0, :cond_2

    .line 486
    new-instance v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaControlCallback:Lcom/desaysv/mixmedia/support/OnSessionCallback;

    invoke-direct {v0, p1, v1, v2}, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V

    iput-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    goto :goto_1

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    invoke-virtual {v0, p1}, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->reconnect(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-object p0
.end method

.method public disConnect()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->needReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    if-eqz v0, :cond_1

    .line 502
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    :cond_1
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 661
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.ALBUM"

    .line 662
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ALBUM"

    .line 663
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 671
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.ARTIST"

    .line 672
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.ARTIST"

    .line 673
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCollected()Z
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.RATING"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 601
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 602
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 603
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->lyric:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 651
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 652
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 653
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getMediaSourceArray()[Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 0

    .line 469
    invoke-static {}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->values()[Lcom/desaysv/mixmedia/support/EnumMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()J
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 611
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionBuf()J
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 621
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 681
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceType()Lcom/desaysv/mixmedia/support/EnumMediaSource;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 641
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 631
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 632
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 633
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public next()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 570
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 558
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 552
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method public play(Landroid/media/session/MediaSession$QueueItem;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 545
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play(): index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    :cond_0
    return-void
.end method

.method public playAlbum(ILjava/lang/String;)V
    .locals 3

    .line 1064
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_query_key"

    .line 1066
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "value_album_id"

    .line 1067
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v1, v1, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    const-string v2, "key_play_album"

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1071
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_query_key"

    .line 1072
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_xmly_active_item_id"

    .line 1073
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_play_track"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public playKgSongs(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/desaysv/mixmedia/media/data/bean/Music;",
            ">;)V"
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1086
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_xmly_queue_title"

    .line 1087
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_action_play_song"

    .line 1088
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_action_play_song"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public previous()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 564
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public queryAlbum(Ljava/lang/String;I)V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1043
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_query_key"

    .line 1044
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "value_query_group"

    .line 1045
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v1, v1, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    const-string v2, "key_query_album"

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1050
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_query_key"

    .line 1051
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "value_query_group"

    .line 1052
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_query_album"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public queryModeChoice()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1028
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string v1, "key_query_mode"

    invoke-virtual {p0, v1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1030
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1031
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string v1, "key_query_mode"

    invoke-virtual {p0, v1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/desaysv/mixmedia/support/MediaSessionCallback;)V
    .locals 12

    if-eqz p1, :cond_1

    .line 720
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getDuration()J

    move-result-wide v10

    .line 723
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->lyric:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onLyricReceived(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 725
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getCollected()Z

    move-result v6

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getAlbum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getArtist()Ljava/lang/String;

    move-result-object v8

    .line 726
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    move-object v1, p1

    move-wide v4, v10

    .line 724
    invoke-interface/range {v1 .. v9}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaChanged(Ljava/lang/String;Ljava/lang/CharSequence;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueChanged(Ljava/util/List;)V

    .line 728
    invoke-virtual {p0}, Lcom/desaysv/mixmedia/support/MultimediaManager;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onMediaQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->sourceType:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    invoke-interface {p1, v0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onSourceTypeChanged(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V

    .line 730
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->position:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->positionBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onPlayPositionChanged(JJJ)V

    .line 731
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/desaysv/mixmedia/support/MediaSessionCallback;->onStateChanged(I)V

    :cond_0
    return-void

    .line 718
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "registerCallback : MediaSessionCallback cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAccountListener(Lcom/desaysv/mixmedia/support/AccountCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 768
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->accountCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 766
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unregisterCallback : MediaSessionCallback cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestBtUsbConnState()Ljava/lang/Boolean;
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string v0, "request_bt_usb_conn_state"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 p0, 0x0

    .line 1013
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public requestLoginState()V
    .locals 3

    .line 995
    sget-object v0, Lcom/desaysv/mixmedia/support/MultimediaManager;->TAG:Ljava/lang/String;

    const-string v1, "requestLoginState"

    invoke-static {v0, v1}, Lcom/desaysv/mixmedia/support/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->kugouUsbBtConnection:Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    const-string v1, "key_xmly_user"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object v0, v0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1000
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->xmlyConnection:Lcom/desaysv/mixmedia/support/XMLYConnection;

    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string v0, "key_xmly_user"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public requestMediaSource()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 1018
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string v0, "key_request_media_source"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 576
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 582
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/desaysv/mixmedia/support/MediaSessionCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 744
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/MultimediaManager;->callbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 742
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unregisterCallback : MediaSessionCallback cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
