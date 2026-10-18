.class final Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$buttonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    iput p5, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 206
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$buttonText:Ljava/lang/String;

    new-instance v4, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;

    invoke-direct {v4, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3$1;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V

    const/4 v0, 0x1

    .line 233
    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$002(Z)Z

    .line 234
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$3;->val$type:I

    invoke-static {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$502(I)I

    :cond_0
    return-void
.end method
