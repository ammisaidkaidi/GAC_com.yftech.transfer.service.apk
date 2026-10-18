.class Lcom/tencent/tai/pal/audio/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/audio/AudioService;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/tai/pal/audio/AudioService$1;->a:Lcom/tencent/tai/pal/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamMuteStateChange(IZ)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioService$1;->a:Lcom/tencent/tai/pal/audio/AudioService;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/audio/AudioService;->a(Lcom/tencent/tai/pal/audio/AudioService;IZ)V

    return-void
.end method

.method public onStreamVolumeChange(II)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioService$1;->a:Lcom/tencent/tai/pal/audio/AudioService;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/audio/AudioService;->a(Lcom/tencent/tai/pal/audio/AudioService;II)V

    return-void
.end method
