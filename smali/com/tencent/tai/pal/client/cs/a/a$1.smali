.class Lcom/tencent/tai/pal/client/cs/a/a$1;
.super Lcom/tencent/tai/pal/audio/d$a;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/a;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/a$1;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-direct {p0}, Lcom/tencent/tai/pal/audio/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$1;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Lcom/tencent/tai/pal/client/cs/a/a;)Ljava/util/List;

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

    .line 146
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;->onStreamVolumeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/a$1;->a:Lcom/tencent/tai/pal/client/cs/a/a;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/a;->a(Lcom/tencent/tai/pal/client/cs/a/a;)Ljava/util/List;

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

    .line 137
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;->onStreamMuteStateChanged(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
