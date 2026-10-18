.class abstract Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;
.super Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OnAudioFocusChangeProxy"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/tai/pal/audio/c;


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/tencent/tai/pal/audio/c;)V
    .locals 1

    .line 457
    invoke-static {p2}, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;-><init>(ILjava/lang/String;)V

    .line 458
    iput-object p2, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->a:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->b:Lcom/tencent/tai/pal/audio/c;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/tencent/tai/pal/audio/c;Lcom/tencent/tai/pal/audio/AudioService$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;-><init>(ILjava/lang/String;Lcom/tencent/tai/pal/audio/c;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 466
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeProxy.onAudioFocusChange focusChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->b:Lcom/tencent/tai/pal/audio/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->b:Lcom/tencent/tai/pal/audio/c;

    invoke-interface {v0}, Lcom/tencent/tai/pal/audio/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->b:Lcom/tencent/tai/pal/audio/c;

    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/tencent/tai/pal/audio/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "PAL_SDK"

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAudioFocusChangeProxy.onAudioFocusChange mAudioFocusDispatcherAidl null or binder not alive, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "exception caught"

    .line 482
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAudioFocusDispatcherAidl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;->b:Lcom/tencent/tai/pal/audio/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
