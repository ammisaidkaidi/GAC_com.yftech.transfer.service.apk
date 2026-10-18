.class public Lcom/tencent/wecarflow/controlsdk/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackHandler"


# instance fields
.field private callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarflow/controlsdk/QueryCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CallbackHandler"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "media_get_play_list"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseMediaInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v0}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onSuccess(Ljava/lang/Object;)V

    const-string p0, "CallbackHandler"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback onSuccess jsonArray: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onError(I)V

    const-string p0, "CallbackHandler"

    const-string p1, "callback onError"

    .line 67
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "media_index"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 75
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onSuccess(Ljava/lang/Object;)V

    const-string p0, "CallbackHandler"

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback onSuccess jsonArray: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onError(I)V

    const-string p0, "CallbackHandler"

    const-string p1, "callback onError"

    .line 79
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 49
    invoke-static {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseMediaInfo(Landroid/os/Bundle;)Lcom/tencent/wecarflow/controlsdk/MediaInfo;

    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onSuccess(Ljava/lang/Object;)V

    const-string p0, "CallbackHandler"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback onSuccess media: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->getMediaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onError(I)V

    const-string p0, "CallbackHandler"

    const-string p1, "callback onError"

    .line 54
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 38
    invoke-static {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseMediaInfo(Landroid/os/Bundle;)Lcom/tencent/wecarflow/controlsdk/MediaInfo;

    move-result-object p1

    .line 39
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onSuccess(Ljava/lang/Object;)V

    const-string p0, "CallbackHandler"

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback onSuccess media: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->getMediaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onError(I)V

    const-string p0, "CallbackHandler"

    const-string p1, "callback onError"

    .line 43
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "media_playing"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 28
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onSuccess(Ljava/lang/Object;)V

    const-string p0, "CallbackHandler"

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback onSuccess playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_4
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/CallbackHandler;->callback:Lcom/tencent/wecarflow/controlsdk/QueryCallback;

    invoke-interface {p0, v1}, Lcom/tencent/wecarflow/controlsdk/QueryCallback;->onError(I)V

    const-string p0, "CallbackHandler"

    const-string p1, "callback onError"

    .line 32
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d7
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
