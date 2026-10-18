.class Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;
.super Ljava/lang/Object;
.source "NaviNotifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->access$200(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarbase/utils/ClickUtils;->isSingleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tai_notification_click_layout"

    const-string v2, "id"

    .line 228
    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->access$200(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onGoClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v1, "tai_notification_cancel_layout"

    const-string v2, "id"

    .line 230
    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->access$200(Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;)Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onCancelClick(Landroid/view/View;)V

    .line 234
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$5;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->hide()Z

    return-void
.end method
