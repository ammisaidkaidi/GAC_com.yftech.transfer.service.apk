.class public Lcom/tencent/tai/pal/audio/AudioDefaultImpl;
.super Ljava/lang/Object;
.source "AudioDefaultImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->c:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;-><init>(Lcom/tencent/tai/pal/audio/AudioDefaultImpl;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->f:Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;

    .line 40
    iput-object p1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->e:Landroid/content/Context;

    const-string v0, "audio"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/audio/AudioDefaultImpl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->f:Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;

    invoke-direct {v1, v2}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;-><init>(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    .line 122
    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl$VolumeChangeBroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_adjustVolume_supported=false AudioDefaultSupported adjustVolume "

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->adjustVolume(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public a(III)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_adjustStreamVolume_supported=false AudioDefaultSupported adjustStreamVolume "

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_requestAudioFocus_abandonAudioFocus_supported=false AudioDefaultSupported abandonAudioFocusByAudioManager "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0
.end method

.method public a(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_requestAudioFocus_abandonAudioFocus_supported=false AudioDefaultSupported requestAudioFocusByAudioManager "

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a()V

    .line 104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_isStreamMute_supported=false AudioDefaultSupported isStreamMute "

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_getStreamMaxVolume_supported=false AudioDefaultSupported getStreamMaxVolume "

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public b(III)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_setStreamVolume_supported=false AudioDefaultSupported setStreamVolume "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x1

    return p0
.end method

.method public b(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b()V

    .line 116
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

.method public c(I)I
    .locals 2

    const-string v0, "PAL_SDK"

    const-string v1, "audio_getStreamVolume_supported=false AudioDefaultSupported getStreamVolume "

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method
