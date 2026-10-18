.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xcb9e8a3

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0xc3af9a7

    if-eq v0, v1, :cond_2

    const v1, 0xd3aecd9

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_2
    const-string v0, "autochips.intent.action.ALTERNATE_VOLUME_CONTROL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_3
    const-string v0, "com.yftech.intent.action.ap.dialog.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string p1, "SETTING_AP_CHANGE action"

    .line 202
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 204
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_5
    const-string p1, "click"

    .line 205
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 207
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    new-instance p2, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;

    invoke-direct {p2, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;)V

    const-wide/16 v0, 0x258

    invoke-static {p2, v0, v1}, Lcom/yftech/transfer/service/utils/AppUtil;->intervalOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$602(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_3

    .line 191
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const-string v0, "state"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$302(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_ALTERNATE_VOLUME_CONTROL isVREnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$300(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 195
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "ACTION_ALTERNATE_VOLUME_CONTROL abandonAudioFocus vr"

    .line 196
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto/16 :goto_3

    .line 175
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const-string v0, "ui_show"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 176
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 177
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 179
    :cond_6
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 181
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "carplayReceiver:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",isFastAuiShow:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",mainScreen:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 186
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->get()Lcom/yftech/vehicle/sdk/MpuProjectManager;

    move-result-object p1

    const-string p2, "ps -e |grep -E \"fastAui\"|awk \'{ cmd=\"kill -SIGCONT \"$2;system(cmd) }\'"

    invoke-virtual {p1, p2}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSystemCmd(Ljava/lang/String;)Z

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "carplayReceiver: SIGCONT"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
