.class final Lcom/tencent/tai/pal/client/cs/a/a;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "AudioManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALAudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/cs/a/a$a;,
        Lcom/tencent/tai/pal/client/cs/a/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tai/pal/audio/b;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/tencent/tai/pal/audio/d$a;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tai/pal/client/cs/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            "Lcom/tencent/tai/pal/client/cs/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Object;

.field private final j:Lcom/tencent/tai/pal/client/cs/a/a$a;

.field private final k:Lcom/tencent/tai/pal/audio/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.AUDIO"

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->b:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->e:Ljava/lang/Object;

    .line 132
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/a$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/a$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/a;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->f:Lcom/tencent/tai/pal/audio/d$a;

    .line 479
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->g:Ljava/util/HashMap;

    .line 481
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    .line 487
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->i:Ljava/lang/Object;

    .line 496
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/a$a;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/a$a;-><init>(Lcom/tencent/tai/pal/client/cs/a/a;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->j:Lcom/tencent/tai/pal/client/cs/a/a$a;

    .line 526
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/a$2;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/a$2;-><init>(Lcom/tencent/tai/pal/client/cs/a/a;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->k:Lcom/tencent/tai/pal/audio/c;

    return-void
.end method

.method private a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Lcom/tencent/tai/pal/client/cs/a/a$b;
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tai/pal/client/cs/a/a$b;

    if-eqz p1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->g:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/client/cs/a/a$b;

    monitor-exit v0

    return-object p0

    .line 571
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/a;Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/client/cs/a/a$b;

    return-object p0
.end method

.method private a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/a;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    return-object p0
.end method

.method private b(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/client/cs/a/a$b;

    monitor-exit v0

    return-object p0

    .line 549
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v2, Lcom/tencent/tai/pal/client/cs/a/a$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/tencent/tai/pal/client/cs/a/a$b;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;Lcom/tencent/tai/pal/client/cs/a/a$1;)V

    .line 551
    iget-object p2, p0, Lcom/tencent/tai/pal/client/cs/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 554
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/a;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/tai/pal/client/cs/a/a;)Lcom/tencent/tai/pal/client/cs/a/a$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->j:Lcom/tencent/tai/pal/client/cs/a/a$a;

    return-object p0
.end method

.method private g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->d:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "registerStreamVolumeListener service not connect"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->f:Lcom/tencent/tai/pal/audio/d$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/audio/b;->a(Lcom/tencent/tai/pal/audio/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 113
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "unregisterStreamVolumeListener service not connect"

    .line 121
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->f:Lcom/tencent/tai/pal/audio/d$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/audio/b;->b(Lcom/tencent/tai/pal/audio/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 127
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 0

    .line 154
    invoke-static {p1}, Lcom/tencent/tai/pal/audio/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/audio/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    .line 155
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->h()V

    :cond_0
    return-void
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 4

    if-eqz p1, :cond_4

    .line 627
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "abandonAudioFocus service not connect"

    .line 629
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 633
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 634
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestAudioFocus_abandonAudioFocus_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 642
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/a/a;->k:Lcom/tencent/tai/pal/audio/c;

    .line 643
    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 642
    invoke-interface {v0, v2, p0}, Lcom/tencent/tai/pal/audio/b;->a(Lcom/tencent/tai/pal/audio/c;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 646
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    return v1

    .line 636
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 637
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0

    .line 625
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal null listener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abandonMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 4

    if-eqz p1, :cond_4

    .line 716
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "abandonMicFocus service not connect"

    .line 718
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 722
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 723
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestMicFocus_abandonMicFocus_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 730
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/a/a;->k:Lcom/tencent/tai/pal/audio/c;

    .line 731
    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-interface {v0, v2, p0}, Lcom/tencent/tai/pal/audio/b;->b(Lcom/tencent/tai/pal/audio/c;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 734
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1

    .line 714
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal null listener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public adjustAllVolume(III)I
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "adjustAllVolume service not connect"

    .line 348
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 352
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 353
    iget-boolean v2, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_adjustAllVolume_supported:Z

    if-eqz p0, :cond_1

    .line 357
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/b;->b(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 359
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 354
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string p1, "PALAudioManager.adjustAllVolume"

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public adjustStreamVolume(III)I
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "adjustStreamVolume service not connect"

    .line 304
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 308
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 309
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_adjustStreamVolume_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/b;->a(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 316
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 310
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(III)I

    move-result p0

    return p0
.end method

.method public adjustVolume(II)I
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "adjustVolume service not connect"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 330
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 331
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_adjustVolume_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/audio/b;->a(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 338
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 332
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(II)I

    move-result p0

    return p0
.end method

.method protected f()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->i()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    return-void
.end method

.method public getAudioAttributes(ILjava/lang/String;)Landroid/media/AudioAttributes;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?"

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal argument tag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAG_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 229
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    .line 233
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    if-nez v0, :cond_3

    const-string p0, "PAL_SDK"

    const-string p1, "getAudioAttributes service not connect"

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 240
    :try_start_1
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 241
    sget-object v1, Lcom/tencent/tai/pal/c;->e:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p0, v1}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 242
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/audio/b;->a(ILjava/lang/String;)Landroid/media/AudioAttributes;

    move-result-object p0

    const-string p2, "PAL_SDK"

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioAttributes supported. tx_stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string p2, "PAL_SDK"

    const-string v0, "exception caught"

    .line 247
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 250
    :cond_4
    invoke-static {p1}, Lcom/tencent/tai/pal/audio/a;->a(I)Landroid/media/AudioAttributes;

    move-result-object p0

    const-string p2, "PAL_SDK"

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioAttributes default tx_stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCurrentActiveStream()I
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string v0, "getCurrentActiveStream service not connect"

    .line 369
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 373
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 374
    iget-boolean v2, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getCurrentActiveStream_supported:Z

    if-eqz p0, :cond_1

    .line 378
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/audio/b;->b()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v2, "exception caught"

    .line 380
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 375
    :cond_1
    new-instance p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    const-string v0, "PALAudioManager.getCurrentActiveStream"

    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getStreamMaxVolume service not connect"

    .line 281
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 286
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 287
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getStreamMaxVolume_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/audio/b;->d(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 294
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 288
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 289
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b(I)I

    move-result p0

    return p0
.end method

.method public getStreamType(I)I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getStreamType service not connect"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_1

    .line 176
    :try_start_0
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 177
    sget-object v2, Lcom/tencent/tai/pal/c;->b:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p0, v2}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "PAL_SDK"

    const-string p1, "versionInfo.compareTo(VersionCompat.VERSION_TX_IM_RING) < 0"

    .line 178
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PAL_SDK"

    const-string p1, "force cast TX_IM_RING to TX_NOTIFICATION"

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x50

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 p0, 0x3c

    if-ne p1, p0, :cond_2

    const-string p0, "PAL_SDK"

    const-string p1, "force cast TX_NAVI_GUIDANCE_L1 to TX_NAVI_GUIDANCE_L2"

    .line 183
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x32

    .line 186
    :cond_2
    :goto_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/audio/b;->a(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 188
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getStreamVolume(I)I
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "getStreamVolume service not connect"

    .line 427
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 431
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 432
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_getStreamVolume_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/audio/b;->c(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 439
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 433
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 434
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->c(I)I

    move-result p0

    return p0
.end method

.method public isStreamMute(I)Z
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "isStreamMute service not connect"

    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 263
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 264
    iget-boolean v3, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_isStreamMute_supported:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/audio/b;->b(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 271
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 265
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 266
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(I)Z

    move-result p0

    return p0
.end method

.method public onAudioEvent(II)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "onAudioEvent service not connect"

    .line 449
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 454
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/audio/b;->d(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 456
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerStreamVolumeListener(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "AudioManagerImpl"

    const-string p1, "registerStreamVolumeListener listener is null"

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 67
    iget-boolean v1, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->h()V

    .line 80
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void

    .line 68
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V

    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/tai/pal/client/cs/a/a;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I
    .locals 7

    if-eqz p1, :cond_6

    if-eqz p4, :cond_1

    const-string v0, "[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?"

    .line 585
    invoke-virtual {p4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal argument tag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 588
    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 593
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p4, 0x0

    .line 597
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v6, 0x0

    if-nez v0, :cond_3

    const-string p0, "PAL_SDK"

    const-string p1, "requestAudioFocus service not connect"

    .line 599
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 603
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 604
    iget-boolean v2, v1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v2, :cond_5

    iget-boolean v1, v1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestAudioFocus_abandonAudioFocus_supported:Z

    if-nez v1, :cond_4

    goto :goto_2

    .line 609
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/tencent/tai/pal/client/cs/a/a;->b(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p1

    .line 610
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 612
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/client/cs/a/a;->k:Lcom/tencent/tai/pal/audio/c;

    .line 613
    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p4

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v1, p2

    move v2, p3

    .line 612
    invoke-interface/range {v0 .. v5}, Lcom/tencent/tai/pal/audio/b;->a(IILcom/tencent/tai/pal/audio/c;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 615
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v6

    .line 606
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0

    .line 583
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal null listener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/tai/pal/client/cs/a/a;->requestMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public requestMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I
    .locals 7

    if-eqz p1, :cond_7

    if-eqz p4, :cond_1

    const-string v0, "[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?"

    .line 664
    invoke-virtual {p4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal argument tag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 672
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p4, 0x0

    .line 677
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v6, 0x0

    if-nez v0, :cond_3

    const-string p0, "PAL_SDK"

    const-string p1, "requestMicFocus service not connect"

    .line 679
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 682
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 683
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 684
    iget-boolean v2, v1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v2, :cond_6

    iget-boolean v1, v1, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_requestMicFocus_abandonMicFocus_supported:Z

    if-nez v1, :cond_4

    goto :goto_4

    .line 689
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/tencent/tai/pal/client/cs/a/a;->b(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Lcom/tencent/tai/pal/client/cs/a/a$b;

    move-result-object p1

    .line 690
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 p4, 0xe6

    if-ne p2, p4, :cond_5

    .line 694
    :try_start_1
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 695
    sget-object v1, Lcom/tencent/tai/pal/c;->h:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p4, v1}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p4

    if-gez p4, :cond_5

    const-string p2, "PAL_SDK"

    const-string p4, "versionInfo.compareTo(VersionCompat.TX_MIC_IM_VR) < 0"

    .line 696
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "PAL_SDK"

    const-string p4, "force cast TX_MIC_IM_VR to TX_MIC_VOIP"

    .line 697
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc8

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    move v1, p2

    .line 702
    iget-object v3, p0, Lcom/tencent/tai/pal/client/cs/a/a;->k:Lcom/tencent/tai/pal/audio/c;

    .line 703
    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v2, p3

    .line 702
    invoke-interface/range {v0 .. v5}, Lcom/tencent/tai/pal/audio/b;->b(IILcom/tencent/tai/pal/audio/c;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :goto_3
    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 705
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v6

    :cond_6
    :goto_4
    return v6

    .line 661
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal null listener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStreamVolume(II)I
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tai/pal/client/cs/a/a;->setStreamVolume(III)I

    move-result p0

    return p0
.end method

.method public setStreamVolume(III)I
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string p0, "PAL_SDK"

    const-string p1, "setStreamVolume service not connect"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 399
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 404
    iget-boolean v4, v3, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v4, :cond_5

    iget-boolean v3, v3, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_setStreamVolume_supported:Z

    if-nez v3, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    :try_start_0
    sget-object p0, Lcom/tencent/tai/pal/c;->f:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {v2, p0}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-ltz p0, :cond_3

    .line 410
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/b;->c(III)I

    move-result p0

    return p0

    .line 411
    :cond_3
    sget-object p0, Lcom/tencent/tai/pal/c;->a:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {v2, p0}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 412
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/audio/b;->c(II)I

    move-result p0

    return p0

    .line 414
    :cond_4
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/audio/b;->b(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 418
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 405
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 406
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b(III)I

    move-result p0

    return p0
.end method

.method public shouldUseAudioAttributes()Z
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->a:Lcom/tencent/tai/pal/audio/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-nez v0, :cond_1

    const-string p0, "PAL_SDK"

    const-string v0, "shouldUseAudioAttributes service not connect"

    .line 198
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->e()V

    .line 203
    :try_start_0
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 204
    sget-object v4, Lcom/tencent/tai/pal/c;->c:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p0, v4}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    if-ltz p0, :cond_2

    .line 205
    invoke-interface {v0}, Lcom/tencent/tai/pal/audio/b;->a()Z

    move-result p0

    const-string v0, "PAL_SDK"

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUseAudioAttributes supported. result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v4, "exception caught"

    .line 210
    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_3

    move v1, v2

    :cond_3
    const-string p0, "PAL_SDK"

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldUseAudioAttributes default result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unregisterStreamVolumeListener(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "AudioManagerImpl"

    const-string p1, "unregisterStreamVolumeListener listener is null"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-boolean v1, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_supported:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/tencent/tai/pal/PlatformSupportInfo;->audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->i()V

    .line 101
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 92
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->g()Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    move-result-object p0

    .line 93
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->b(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V

    return-void
.end method
