.class final Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x7c706fae

    if-eq p1, v0, :cond_1

    const v0, 0x3f7cb0b4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "action.notity.set.time"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "action.notity.revcmd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p0, "time"

    const/16 p1, 0xa

    .line 299
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 300
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 301
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;->setDismissTime(I)V

    :cond_3
    const-string p1, "Asr"

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NotificationUtils:set time:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string p0, "cmd"

    .line 284
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cmd_ok"

    .line 285
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 287
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;->clickGoBtn()V

    :cond_4
    const-string p0, "Asr"

    const-string p1, "NotificationUtils:rev cmd ok"

    .line 289
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "cmd_cancel"

    .line 290
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 291
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 292
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;->clickCancelBtn()V

    :cond_6
    const-string p0, "Asr"

    const-string p1, "NotificationUtils:rev cmd cancel"

    .line 294
    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
