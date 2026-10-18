.class Lcom/desaysv/mixmedia/support/XMLYConnection;
.super Lcom/desaysv/mixmedia/support/BaseConnection;
.source "XMLYConnection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/desaysv/mixmedia/support/BaseConnection;-><init>(Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/desaysv/mixmedia/support/XMLYConnection;->reconnect(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method changeSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ONLINE_TRACK:Lcom/desaysv/mixmedia/support/EnumMediaSource;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getCode()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_2

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_media_source"

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/XMLYConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_media_source"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method reconnect(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.desaysv.mixmedia"

    const-string v1, "com.desaysv.mixradio.media.service.MediaSessionService"

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/desaysv/mixmedia/support/XMLYConnection;->connect2MBService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
