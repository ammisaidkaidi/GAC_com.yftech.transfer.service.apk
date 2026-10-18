.class public Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;
.super Ljava/lang/Object;
.source "PlayerMgr.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$SimplePlayCallBack;,
        Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;


# instance fields
.field private callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;)Landroid/media/MediaPlayer;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static getInstance()Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;
    .locals 2

    .line 16
    sget-object v0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mInstance:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mInstance:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    invoke-direct {v1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;-><init>()V

    sput-object v1, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mInstance:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mInstance:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    return-object v0
.end method

.method private releasePlayer()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 83
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->releasePlayer()V

    .line 95
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    invoke-interface {p0, p1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;->onPlayEnd(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;)V
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 37
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 40
    iput-object p2, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    if-eqz p2, :cond_1

    .line 42
    invoke-interface {p2, p1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;->onPlayStart(Ljava/lang/String;)V

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 45
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;-><init>(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->releasePlayer()V

    if-eqz p2, :cond_2

    .line 56
    invoke-interface {p2, p1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;->onPlayError(Ljava/lang/Exception;)V

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;->onPlayStop()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    if-eqz v1, :cond_1

    .line 72
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->callBack:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;

    invoke-interface {p0, v0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;->onPlayError(Ljava/lang/Exception;)V

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
