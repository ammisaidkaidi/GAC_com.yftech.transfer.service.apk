.class final Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$1;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;


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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelBtn()V
    .locals 0

    .line 96
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->clickCancelBtn()V

    return-void
.end method

.method public clickGoBtn()V
    .locals 0

    .line 91
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->clickGoBtn()V

    return-void
.end method

.method public setDismissTime(I)V
    .locals 0

    .line 101
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->setDismissTime(I)V

    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
    .locals 0

    .line 85
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    .line 86
    invoke-virtual {p0, p4}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->setOnNotifyListener(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
    .locals 0

    .line 79
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->getInstance()Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p5}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->setOnNotifyListener(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    return-void
.end method
