.class public Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
.super Ljava/lang/Object;
.source "FlowPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$Holder;
    }
.end annotation


# static fields
.field public static final CODE_NOT_CONNECTED:I = 0x7d1

.field public static final CODE_REMOTE_EXCEPTION:I = 0x7d2

.field public static final CODE_SERVICE_ERROR:I = 0x7d3

.field public static final CODE_SUCCESS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "_Music_FlowPlayControl"


# instance fields
.field private bIsPlaying:Z

.field private bServiceConnected:Z

.field private mAppViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/IAppView;",
            ">;"
        }
    .end annotation
.end field

.field private mBindListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/BindListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/PlayStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveMessenger:Landroid/os/Messenger;

.field private mSendMessenger:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;-><init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mHandler:Landroid/os/Handler;

    .line 828
    new-instance v0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$2;-><init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyPlayPause()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyPlayStop()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyMediaFavorChange(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyPlayModeChange(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyPlayListChange()V

    return-void
.end method

.method static synthetic access$1502(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mSendMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mReceiveMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->addMessenger()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->showLoading()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyServiceConnected()V

    return-void
.end method

.method static synthetic access$2100(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyServiceDisconnected()V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyBindDied()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->hideLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;ZZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->isWxOpenCloseFlag(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->setLoginState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->setExpireState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyMediaChange(Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V

    return-void
.end method

.method static synthetic access$802(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bIsPlaying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyPlayStart()V

    return-void
.end method

.method private addMessenger()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "addMessenger"

    .line 809
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xbb9

    .line 811
    iput v1, v0, Landroid/os/Message;->what:I

    .line 812
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 813
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
    .locals 1

    .line 61
    invoke-static {}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$Holder;->access$100()Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    move-result-object v0

    return-object v0
.end method

.method private hideLoading()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "  hideLoading  "

    .line 106
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/IAppView;

    .line 109
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/IAppView;->finishSearch()V

    goto :goto_0

    .line 111
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isWxOpenCloseFlag(ZZ)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isOpenCloseFlag  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isLogin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/IAppView;

    .line 118
    invoke-interface {v1, p1, p2}, Lcom/tencent/wecarflow/controlsdk/IAppView;->onWXBindActivityOpenOrClose(ZZ)V

    goto :goto_0

    .line 120
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyBindDied()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyBindDied: "

    .line 796
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    monitor-enter v0

    .line 798
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/BindListener;

    .line 799
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/BindListener;->onBindDied()V

    goto :goto_0

    .line 801
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyMediaChange(Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMediaChange info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;

    .line 712
    invoke-interface {v1, p1}, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;->onMediaChange(Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V

    goto :goto_0

    .line 714
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyMediaFavorChange(Z)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMediaFavorChange isFavored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;

    .line 721
    invoke-interface {v1, p1}, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;->onFavorChange(Z)V

    goto :goto_0

    .line 723
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyPlayListChange()V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 736
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;

    .line 737
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;->onPlayListChange()V

    goto :goto_0

    .line 739
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyPlayModeChange(I)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;

    .line 729
    invoke-interface {v1, p1}, Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;->onModeChange(I)V

    goto :goto_0

    .line 731
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyPlayPause()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyPlayPause"

    .line 752
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 754
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;

    .line 755
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;->onPause()V

    goto :goto_0

    .line 757
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyPlayStart()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyPlayStart"

    .line 743
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;

    .line 746
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;->onStart()V

    goto :goto_0

    .line 748
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyPlayStop()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyPlayStop"

    .line 761
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;

    .line 764
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;->onStop()V

    goto :goto_0

    .line 766
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyServiceConnected()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyServiceConnected"

    .line 778
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/BindListener;

    .line 781
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/BindListener;->onServiceConnected()V

    goto :goto_0

    .line 783
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyServiceDisconnected()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "notifyServiceDisconnected"

    .line 787
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/BindListener;

    .line 790
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/BindListener;->onServiceDisconnected()V

    goto :goto_0

    .line 792
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeMessenger()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "removeMessenger"

    .line 817
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xbba

    .line 819
    iput v1, v0, Landroid/os/Message;->what:I

    .line 820
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 821
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method private semanticSearch()V
    .locals 0

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)I
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-boolean v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    if-eqz v0, :cond_0

    .line 860
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mSendMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p0, "_Music_FlowPlayControl"

    const-string p1, "sendMessage success: "

    .line 861
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x7d0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "_Music_FlowPlayControl"

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 p0, 0x7d2

    return p0

    :cond_0
    const/16 p0, 0x7d1

    return p0
.end method

.method private setExpireState(Z)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  setLoginState  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/IAppView;

    .line 136
    invoke-interface {v1, p1}, Lcom/tencent/wecarflow/controlsdk/IAppView;->onExpireChanged(Z)V

    goto :goto_0

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setLoginState(Z)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  setLoginState  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/IAppView;

    .line 127
    invoke-interface {v1, p1}, Lcom/tencent/wecarflow/controlsdk/IAppView;->setLoginUI(Z)V

    goto :goto_0

    .line 129
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showLoading()V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "  showLoading  "

    .line 97
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarflow/controlsdk/IAppView;

    .line 100
    invoke-interface {v1}, Lcom/tencent/wecarflow/controlsdk/IAppView;->beginSearch()V

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addBindListener(Lcom/tencent/wecarflow/controlsdk/BindListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBindListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addFavor()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "addFavor"

    .line 432
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f1

    .line 434
    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public addIAppViewListener(Lcom/tencent/wecarflow/controlsdk/IAppView;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppViewListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addMediaChangeListener(Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMediaChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addPlayStateListener(Lcom/tencent/wecarflow/controlsdk/PlayStateListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPlayStateListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bindPlayService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "bindPlayService"

    .line 381
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.wecarflow"

    const-string v2, "com.tencent.wecarflow.launcherwidget.UpdateWidgetService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 386
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.tencent.wecarflow.service_init"

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 389
    invoke-virtual {p1, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 394
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 395
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public cancelFavor()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "cancelFavor"

    .line 444
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f2

    .line 446
    iput v1, v0, Landroid/os/Message;->what:I

    .line 447
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public closeApp()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "closeApp"

    .line 404
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f0

    .line 406
    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doNext()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doNext"

    .line 483
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 485
    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doPause()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doPause"

    .line 507
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    .line 509
    iput v1, v0, Landroid/os/Message;->what:I

    .line 510
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doPlay()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doPlay"

    .line 519
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 521
    iput v1, v0, Landroid/os/Message;->what:I

    .line 522
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doPlay(I)I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doPlay index"

    .line 593
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3fa

    .line 595
    iput v1, v0, Landroid/os/Message;->what:I

    .line 596
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 597
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doPre()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doPre"

    .line 471
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 473
    iput v1, v0, Landroid/os/Message;->what:I

    .line 474
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doRecommend()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doRecommend"

    .line 495
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f5

    .line 497
    iput v1, v0, Landroid/os/Message;->what:I

    .line 498
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public doStop()I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "doStop"

    .line 531
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    .line 533
    iput v1, v0, Landroid/os/Message;->what:I

    .line 534
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public getCurrentIndex(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarflow/controlsdk/QueryCallback<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3f7

    .line 582
    iput v1, v0, Landroid/os/Message;->what:I

    .line 583
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;

    invoke-direct {v2, p1}, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;-><init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 584
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public getCurrentList(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarflow/controlsdk/QueryCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/MediaInfo;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "getCurrentList"

    .line 601
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f9

    .line 603
    iput v1, v0, Landroid/os/Message;->what:I

    .line 604
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;

    invoke-direct {v2, p1}, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;-><init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 605
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public getCurrentMedia(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarflow/controlsdk/QueryCallback<",
            "Lcom/tencent/wecarflow/controlsdk/MediaInfo;",
            ">;)I"
        }
    .end annotation

    const-string v0, "_Music_FlowPlayControl"

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMedia: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f6

    .line 574
    iput v1, v0, Landroid/os/Message;->what:I

    .line 575
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;

    invoke-direct {v2, p1}, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;-><init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 576
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 609
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bIsPlaying:Z

    return p0
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 825
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    return p0
.end method

.method notifyProgress(Ljava/lang/String;JJ)V
    .locals 8

    .line 770
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 772
    invoke-interface/range {v2 .. v7}, Lcom/tencent/wecarflow/controlsdk/PlayStateListener;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 774
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public playFavor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "_Music_FlowPlayControl"

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playFavor from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 332
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.wecar"

    const-string v2, "com.tencent.wecarflow.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 335
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "from"

    .line 336
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "where"

    const/4 v0, 0x3

    .line 337
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "taskId"

    .line 338
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "semantic"

    .line 339
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 340
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "_Music_FlowPlayControl"

    const-string p2, "\u5e94\u7528\u672a\u5b89\u88c5"

    .line 344
    invoke-static {p1, p2}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public queryCurrent(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarflow/controlsdk/QueryCallback<",
            "Lcom/tencent/wecarflow/controlsdk/MediaInfo;",
            ">;)I"
        }
    .end annotation

    const-string v0, "_Music_FlowPlayControl"

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCurrent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ef

    .line 560
    iput v1, v0, Landroid/os/Message;->what:I

    .line 561
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;

    invoke-direct {v2, p1}, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;-><init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 562
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public queryPlaying(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarflow/controlsdk/QueryCallback<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "_Music_FlowPlayControl"

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ee

    .line 546
    iput v1, v0, Landroid/os/Message;->what:I

    .line 547
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;

    invoke-direct {v2, p1}, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;-><init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 548
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public removeBindListener(Lcom/tencent/wecarflow/controlsdk/BindListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBindListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mBindListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeIAppViewListener(Lcom/tencent/wecarflow/controlsdk/IAppView;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIAppViewListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mAppViewListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMediaChangeListener(Lcom/tencent/wecarflow/controlsdk/MediaChangeListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMediaChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 673
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePlayStateListener(Lcom/tencent/wecarflow/controlsdk/PlayStateListener;)V
    .locals 3

    const-string v0, "_Music_FlowPlayControl"

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePlayStateListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mPlayListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 705
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public semanticSearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "_Music_FlowPlayControl"

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semanticSearch from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_0
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.tencent.wecar"

    const-string v1, "com.tencent.wecarflow.MainActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "from"

    .line 265
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "where"

    const/4 p2, 0x1

    .line 266
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "taskId"

    const-wide/16 v1, 0x0

    .line 267
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "semantic"

    .line 268
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 269
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    const-string p0, "_Music_FlowPlayControl"

    const-string p1, "\u5e94\u7528\u672a\u5b89\u88c5"

    .line 273
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public semanticSearchInService(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "semanticSearchInService"

    .line 285
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f4

    .line 287
    iput v1, v0, Landroid/os/Message;->what:I

    .line 288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "where"

    const/4 v3, 0x1

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "taskId"

    const-wide/16 v3, 0x0

    .line 290
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "from"

    .line 291
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "semantic"

    .line 292
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public setPlayMode(I)I
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "setPlayMode"

    .line 458
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f3

    .line 460
    iput v1, v0, Landroid/os/Message;->what:I

    .line 461
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 462
    invoke-direct {p0, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public showFavor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "_Music_FlowPlayControl"

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFavor from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 358
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.wecar"

    const-string v2, "com.tencent.wecarflow.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 361
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "from"

    .line 362
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "where"

    const/4 v0, 0x2

    .line 363
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "taskId"

    .line 364
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "semantic"

    .line 365
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 366
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "_Music_FlowPlayControl"

    const-string p2, "\u5e94\u7528\u672a\u5b89\u88c5"

    .line 370
    invoke-static {p1, p2}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public startPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "_Music_FlowPlayControl"

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 306
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.wecar"

    const-string v2, "com.tencent.wecarflow.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 309
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "from"

    .line 310
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "where"

    const/4 v0, 0x4

    .line 311
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "taskId"

    .line 312
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "semantic"

    .line 313
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 314
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "_Music_FlowPlayControl"

    const-string p2, "\u5e94\u7528\u672a\u5b89\u88c5"

    .line 318
    invoke-static {p1, p2}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public startPlayActivity(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "_Music_FlowPlayControl"

    const-string v0, "startPlayActivity"

    .line 237
    invoke-static {p0, v0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :try_start_0
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.tencent.wecar"

    const-string v1, "com.tencent.wecarflow.MainActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 243
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "_Music_FlowPlayControl"

    const-string p1, "\u5e94\u7528\u672a\u5b89\u88c5"

    .line 247
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unbindPlayService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "_Music_FlowPlayControl"

    const-string v1, "unbindPlayService"

    .line 416
    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-boolean v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->removeMessenger()V

    .line 419
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->bServiceConnected:Z

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mSendMessenger:Landroid/os/Messenger;

    .line 422
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->mReceiveMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method
