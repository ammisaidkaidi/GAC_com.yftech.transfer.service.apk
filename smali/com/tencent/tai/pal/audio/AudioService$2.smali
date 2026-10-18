.class Lcom/tencent/tai/pal/audio/AudioService$2;
.super Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/audio/AudioService;->a(IILcom/tencent/tai/pal/audio/c;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/tai/pal/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/audio/AudioService;ILjava/lang/String;Lcom/tencent/tai/pal/audio/c;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->b:Lcom/tencent/tai/pal/audio/AudioService;

    iput-object p5, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;-><init>(ILjava/lang/String;Lcom/tencent/tai/pal/audio/c;Lcom/tencent/tai/pal/audio/AudioService$1;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService.requestAudioFocus binderDied() called. remove listener and abandonAudioFocus. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->b:Lcom/tencent/tai/pal/audio/AudioService;

    invoke-static {v0}, Lcom/tencent/tai/pal/audio/AudioService;->a(Lcom/tencent/tai/pal/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->b:Lcom/tencent/tai/pal/audio/AudioService;

    iget-object v2, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/tai/pal/audio/AudioService;->a(Lcom/tencent/tai/pal/audio/AudioService;Ljava/lang/String;)Lcom/tencent/tai/pal/audio/AudioService$OnAudioFocusChangeProxy;

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/tencent/tai/pal/audio/AudioService$2;->b:Lcom/tencent/tai/pal/audio/AudioService;

    invoke-static {v0}, Lcom/tencent/tai/pal/audio/AudioService;->b(Lcom/tencent/tai/pal/audio/AudioService;)Lcom/tencent/tai/pal/audio/AudioAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/audio/AudioAdapter;->abandonAudioFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;)I

    return-void

    :catchall_0
    move-exception p0

    .line 258
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
