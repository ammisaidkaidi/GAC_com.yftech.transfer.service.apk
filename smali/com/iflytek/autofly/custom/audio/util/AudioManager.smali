.class public Lcom/iflytek/autofly/custom/audio/util/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

.field private mConnect:Landroid/content/ServiceConnection;

.field private final mCustomAudioFocusChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/iflytek/autofly/custom/audio/util/AudioManager$CustomAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    .line 67
    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mCustomAudioFocusChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 759
    new-instance v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$2;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mConnect:Landroid/content/ServiceConnection;

    .line 125
    new-instance v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;-><init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    .line 383
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->initClient()I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/util/IAudioListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mCustomAudioFocusChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    return-object p0
.end method

.method static synthetic access$502(Lcom/iflytek/autofly/custom/audio/util/AudioManager;Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/iflytek/autofly/custom/audio/util/AudioManager;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    return p0
.end method

.method static synthetic access$702(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/iflytek/autofly/custom/audio/util/AudioManager;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 746
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customaudioservice"

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomAudioService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 751
    sget-object v1, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 752
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    .line 753
    iget v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->notifyClientServiceStatus(I)V

    const-string p0, "AudioManager.Custom"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, -0x3ed

    :goto_0
    return p0
.end method

.method private notifyClientServiceStatus(I)V
    .locals 3

    const-string v0, "AudioManager.Custom"

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/audio/util/AudioManager;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "registerListener context is null"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "AudioManager.Custom"

    const-string p1, "registerListener listener object is null"

    .line 400
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 404
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mContext:Landroid/content/Context;

    .line 405
    sget-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    if-nez p0, :cond_2

    .line 406
    new-instance p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    .line 409
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->registerListenerLocal(Ljava/lang/Object;)I

    .line 411
    sget-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    .line 413
    sget-object p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    const/16 v1, -0x3ee

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, -0x3ef

    const-string p0, "AudioManager.Custom"

    const-string p1, "ERROR REDUNDANCY LISTENER"

    .line 439
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 448
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz p1, :cond_1

    .line 450
    :try_start_1
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    check-cast v0, Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x3

    .line 451
    :try_start_2
    iput v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    .line 452
    iget v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    invoke-direct {p0, v0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->notifyClientServiceStatus(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move v1, p1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "AudioManager.Custom"

    const-string v0, "registerListenerLocal error"

    .line 454
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const-string p0, "AudioManager.Custom"

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerListenerLocal result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2
    move-exception p0

    const-string p1, "AudioManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 444
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 730
    iget v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "AudioManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 732
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 737
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->initClient()I

    move-result p0

    const-string v0, "AudioManager.Custom"

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheck SERVICE_AIDL_NOT_BOUND and init client return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ed

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 464
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 470
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mAudioListener:Lcom/iflytek/autofly/custom/audio/util/IAudioListener;

    .line 475
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz p1, :cond_1

    .line 477
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 479
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "AudioManager.Custom"

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterListenerLocal result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const/16 p0, -0x3eb

    return p0
.end method

.method public static unregisterListener(Lcom/iflytek/autofly/custom/audio/util/IAudioListener;)I
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 424
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 428
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    if-eqz v0, :cond_1

    .line 429
    sget-object v0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->instance:Lcom/iflytek/autofly/custom/audio/util/AudioManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method


# virtual methods
.method public notifyAudioChannel(I)V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "notifyAudioChannel: Service not bound"

    .line 518
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v0, :cond_1

    .line 523
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyAudioChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 525
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyChangeEnvironmentMode(I)I
    .locals 2

    .line 685
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "notifyChangeEnvironmentMode: Service not bound"

    .line 687
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 692
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyChangeEnvironmentMode(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 694
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyChangeFuncBeamForming(II)I
    .locals 2

    .line 585
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "notifyChangeFuncBeamForming: Service not bound"

    .line 587
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 592
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyChangeFuncBeamForming(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 594
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyChangeSampleRate(I)I
    .locals 2

    .line 610
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "notifyChangeSampleRate: Service not bound"

    .line 612
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 617
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyChangeSampleRate(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 619
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyEQModeChanged(I)I
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string p1, "notifyEQModeChanged: Service not bound"

    .line 713
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v0, :cond_1

    .line 718
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyEQModeChanged(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 720
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method public notifyGetBeamForming()I
    .locals 2

    .line 560
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string v1, "notifyGetBeamForming: Service not bound"

    .line 562
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 567
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyGetBeamForming()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 569
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyGetEnvironmentMode()I
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string v1, "notifyGetEnvironmentMode: Service not bound"

    .line 662
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 667
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyGetEnvironmentMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 669
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyGetFuncMode()I
    .locals 2

    .line 537
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string v1, "notifyGetFuncMode: Service not bound"

    .line 539
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 544
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyGetFuncMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 546
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public notifyGetSampleRate()I
    .locals 2

    .line 635
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AudioManager.Custom"

    const-string v1, "notifyGetSampleRate: Service not bound"

    .line 637
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    if-eqz v1, :cond_1

    .line 642
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager;->mRemoteService:Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDL;->notifyGetSampleRate()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 644
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method
