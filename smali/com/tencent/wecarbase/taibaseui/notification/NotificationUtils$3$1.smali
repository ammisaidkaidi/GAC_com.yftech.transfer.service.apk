.class Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object v0, v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onCancelClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onGoClick(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object v0, v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onGoClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onNotificationHide()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object v0, v0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;->onNotificationHide()V

    .line 229
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$300()V

    return-void
.end method
