.class Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v2, "tas.action.video.set.enabled"

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->c(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->setMediaControlClient(Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->d(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->e(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->e(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->d(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->notifyPlayStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->f(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->e(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->e(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->f(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->notifyMediaPlayInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,caller back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "tas.focus.video"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object p4

    if-eqz p4, :cond_2

    :cond_1
    const-string p4, "tas.focus.media.control"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p4

    if-nez p4, :cond_3

    :cond_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "-callback mIVideoClient OR mIMediaControlClient == null"

    :goto_1
    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string p4, ""

    const-string v1, "tas.focus.video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p4, p3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;[B)Ljava/lang/String;

    move-result-object p4

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "tas.focus.media.control.add.favorite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_1
    const-string v2, "tas.focus.media.control.current.info"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_2
    const-string v2, "tas.focus.media.control.play"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "tas.focus.media.control.next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_4
    const-string v2, "tas.focus.media.control.pause"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_5
    const-string v2, "tas.focus.media.control.pre"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string v2, "tas.focus.media.control.get.play.status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_7
    const-string v2, "tas.focus.media.control.cancel.favorite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_8
    const-string v2, "tas.focus.video.play"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_9
    const-string v2, "tas.focus.video.play.usb"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==+cancelFavorite"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->cancelFavorite(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;I)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-cancelFavorite"

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==+addFavorite"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->addFavorite(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;I)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-addFavorite"

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+getPlayStatus"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->getPlayStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-getPlayStatus"

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+getCurrentPlayInfo"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->getCurrentPlayInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-getCurrentPlayInfo"

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+pre"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->pre(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-pre"

    goto/16 :goto_1

    :pswitch_5
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+next"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->next(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-next"

    goto/16 :goto_1

    :pswitch_6
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+pause"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->pause(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-pause"

    goto/16 :goto_1

    :pswitch_7
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "==+play"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->b(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->play(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-play"

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v1, "==+playUSBVideo"

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;->playUSBVideo()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-playUSBVideo"

    goto/16 :goto_1

    :pswitch_9
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p4

    const-string v1, "==+playVideo"

    invoke-static {p4, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->a:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;->playVideo()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    const-string p4, "==-playVideo"

    goto/16 :goto_1

    :goto_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-callback, caller:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_6

    const-string p1, "null"

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_4
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dee8f05 -> :sswitch_9
        -0x4d62431b -> :sswitch_8
        -0xe2d88e9 -> :sswitch_7
        -0x98f2225 -> :sswitch_6
        0x1b7c45aa -> :sswitch_5
        0x2d7a133d -> :sswitch_4
        0x540b58cc -> :sswitch_3
        0x540c590d -> :sswitch_2
        0x5c9348dc -> :sswitch_1
        0x6b004d22 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
