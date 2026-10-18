.class public Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;
.super Lcom/tencent/tai/pal/audio/AudioAdapter;
.source "AudioAdapterImpl.java"


# static fields
.field public static final YF_STREAM_TX_APP_NOTIFICATION:I = 0x5

.field public static final YF_STREAM_TX_MEDIA:I = 0x3

.field public static final YF_STREAM_TX_NAVI_GUIDANCE_L2:I = 0x18

.field public static final YF_STREAM_TX_VR_ACTIVE:I = 0x1a

.field public static final YF_STREAM_TX_VR_TTS:I = 0x1a

.field public static final YF_STREAM_TX_WECHAT_MESSAGING:I = 0x9

.field public static final YF_STREAM_TX_WECHAT_VOIP:I = 0x1b


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private mContext:Landroid/content/Context;

.field private mLockObj:Ljava/lang/Object;

.field private mOnStreamVolumeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/tencent/tai/pal/audio/AudioAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mLockObj:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl$1;-><init>(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 46
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->notifyStreamVolumeChange(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->notifyStreamMuteStateChange(IZ)V

    return-void
.end method

.method private notifyStreamMuteStateChange(IZ)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call AudioAdapterImpl notifyStreamMuteStateChange ,the streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;

    .line 77
    invoke-interface {v1, p1, p2}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;->onStreamMuteStateChange(IZ)V

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifyStreamVolumeChange(II)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call AudioAdapterImpl notifyStreamVolumeChange ,the streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;

    .line 61
    invoke-interface {v1, p1, p2}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;->onStreamVolumeChange(II)V

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;)I
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abandon audio focus,parocessId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;->getProcessId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0
.end method

.method public abandonMicFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public adjustAllVolume(III)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public adjustStreamVolume(III)I
    .locals 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call adjustStreamVolume in value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v4, p2, :cond_0

    if-gt v2, v0, :cond_3

    :cond_0
    if-ne v3, p2, :cond_1

    if-lt v2, v1, :cond_3

    :cond_1
    const/16 v0, 0x64

    if-eq v0, p2, :cond_3

    const/16 v0, -0x64

    if-eq v0, p2, :cond_3

    const/16 v0, 0x65

    if-ne v0, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0

    .line 180
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v3
.end method

.method public adjustVolume(II)I
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    .line 222
    iget-object v2, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 223
    iget-object v3, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v5, p1, :cond_0

    if-gt v3, v0, :cond_1

    :cond_0
    if-ne v4, p1, :cond_2

    if-ge v3, v2, :cond_2

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v4

    :cond_2
    return v1
.end method

.method public getCurrentActiveStream()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getStreamMaxVolume(I)I
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamMaxVolume in value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",return value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getStreamType(I)I
    .locals 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_6

    const/16 p0, 0x14

    const/16 v0, 0x1a

    if-eq p1, p0, :cond_5

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_4

    const/16 p0, 0x32

    if-eq p1, p0, :cond_3

    const/16 p0, 0x50

    if-eq p1, p0, :cond_2

    const/16 p0, 0x64

    if-eq p1, p0, :cond_1

    const/16 p0, 0x6e

    const/4 v0, 0x3

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_6

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamType in value:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(No include IAudioApi),return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return v0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamType in value:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return v0

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamType in value:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return v0

    .line 133
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call getStreamType in value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return p1

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call getStreamType in value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return p1

    .line 127
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call getStreamType in value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return p1

    .line 124
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamType in value:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return v0

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call getStreamType in value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return p1
.end method

.method public getStreamVolume(I)I
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getStreamVolume in value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",return value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isStreamMute(I)Z
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call isStreamMute in value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return value:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return p0
.end method

.method public registerOnStreamVolumeChangeListener(Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public requestAudioFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;II)I
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request audio focus,parocessId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;->getProcessId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",durationHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method

.method public requestMicFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setStreamVolume(III)I
    .locals 2

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call setStreamVolume in value:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 189
    iget-object p3, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p3

    .line 190
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-lt p2, p3, :cond_1

    if-ge p2, v0, :cond_1

    .line 195
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return p3

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public unregisterOnStreamVolumeChangeListener(Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/AudioAdapterImpl;->mOnStreamVolumeChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
