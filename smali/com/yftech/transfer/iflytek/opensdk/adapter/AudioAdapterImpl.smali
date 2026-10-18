.class public Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;
.super Ljava/lang/Object;
.source "AudioAdapterImpl.java"


# static fields
.field private static final MSG_RECONNECT_IFlyTekService:I = 0x1

.field private static final RECONNECT_TIME:I = 0x2710


# instance fields
.field private TAG:Ljava/lang/String;

.field private final carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAudioManager:Lcom/yftech/car/audio/CarAudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIFlyCustomAudioManager:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

.field private final mIfAuidoListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

.field private mIsCustomAudioServiceConnected:Z

.field private mLastStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mLastStreamType:I

    .line 58
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$1;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$2;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 89
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIfAuidoListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    .line 41
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 43
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mCarAudioManager:Lcom/yftech/car/audio/CarAudioManager;

    .line 44
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mCarAudioManager:Lcom/yftech/car/audio/CarAudioManager;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 46
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIfAuidoListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIFlyCustomAudioManager:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    .line 47
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/AudioManager;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIFlyCustomAudioManager:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIfAuidoListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mLastStreamType:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mLastStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIsCustomAudioServiceConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->reConnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/media/AudioManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private reConnect()V
    .locals 4

    .line 71
    iget-boolean v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIsCustomAudioServiceConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mCarAudioManager:Lcom/yftech/car/audio/CarAudioManager;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 53
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->mIfAuidoListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->unregisterListener(Lcom/iflytek/autofly/custom/audio/util/IAudioListener;)I

    return-void
.end method
