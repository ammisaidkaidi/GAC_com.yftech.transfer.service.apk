.class Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;
.super Lcom/desaysv/mixmedia/support/BaseConnection;
.source "KugouUsbBtConnection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/desaysv/mixmedia/support/BaseConnection;-><init>(Landroid/os/Handler;Lcom/desaysv/mixmedia/support/OnSessionCallback;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->reconnect(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method changeSource(Lcom/desaysv/mixmedia/support/EnumMediaSource;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection$1;->$SwitchMap$com$desaysv$mixmedia$support$EnumMediaSource:[I

    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    move p1, v1

    goto :goto_0

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Lcom/desaysv/mixmedia/support/EnumMediaSource;->getCode()I

    move-result p1

    :goto_0
    if-eq p1, v1, :cond_1

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_media_source"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object p0, p0, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "key_media_source"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method reconnect(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.desaysv.mixmedia"

    const-string v1, "com.desaysv.mixmedia.media.service.MediaSessionService"

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/desaysv/mixmedia/support/KugouUsbBtConnection;->connect2MBService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
