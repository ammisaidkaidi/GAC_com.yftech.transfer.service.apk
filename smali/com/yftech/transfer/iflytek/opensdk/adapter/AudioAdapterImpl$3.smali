.class Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;
.super Ljava/lang/Object;
.source "AudioAdapterImpl.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/audio/util/IAudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    .line 201
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAbandonAudioFocus: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public onCloseChannel(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGet3DSoundMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGetCurrentChannel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGetEQ(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGetEQMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onGetLastMusicSourceChannel()I
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 231
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetLastMusicSourceChannel:  mLastStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " iflytekStream = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onIsAudioFocusOccupy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRequestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$800(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    .line 194
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestAudioFocus:streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",durationHint:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  yfStream = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  result = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceStatusChanged(I)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomAudioService onServiceStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$502(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Z)Z

    .line 106
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$700(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$400(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bind IFlytek Audio Service Successful"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$502(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;Z)Z

    .line 98
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl$3;->this$0:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-static {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSet3DSoundMode(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSetEQ(II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSetEQMode(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSwitchChannel(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
