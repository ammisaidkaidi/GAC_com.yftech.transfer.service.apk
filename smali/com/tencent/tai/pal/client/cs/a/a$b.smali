.class final Lcom/tencent/tai/pal/client/cs/a/a$b;
.super Ljava/lang/Object;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a$b;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 467
    iput-object p2, p0, Lcom/tencent/tai/pal/client/cs/a/a$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;Lcom/tencent/tai/pal/client/cs/a/a$1;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/client/cs/a/a$b;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/a$b;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$b;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method private a(I)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$b;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/a$b;I)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/client/cs/a/a$b;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/a$b;)Ljava/lang/String;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$b;->b:Ljava/lang/String;

    return-object p0
.end method
