.class Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;
.super Ljava/lang/Object;
.source "AudioDefaultImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/audio/AudioDefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/audio/AudioDefaultImpl;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;->a:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamMuteStateChanged(IZ)V
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;->a:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    invoke-static {p0}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(Lcom/tencent/tai/pal/audio/AudioDefaultImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;->onStreamMuteStateChanged(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStreamVolumeChanged(II)V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/tencent/tai/pal/audio/AudioDefaultImpl$1;->a:Lcom/tencent/tai/pal/audio/AudioDefaultImpl;

    invoke-static {p0}, Lcom/tencent/tai/pal/audio/AudioDefaultImpl;->a(Lcom/tencent/tai/pal/audio/AudioDefaultImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;->onStreamVolumeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
