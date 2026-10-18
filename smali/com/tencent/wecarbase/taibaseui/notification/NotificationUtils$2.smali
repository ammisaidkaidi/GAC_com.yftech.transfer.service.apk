.class final Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelBtnText:Ljava/lang/String;

.field final synthetic val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$okBtnText:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$okBtnText:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$cancelBtnText:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$listener:Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;

    iput p6, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 151
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$100()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$200()V

    .line 157
    :goto_0
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$400()Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$okBtnText:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$cancelBtnText:Ljava/lang/String;

    new-instance v6, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2$1;

    invoke-direct {v6, p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2$1;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;)V

    invoke-interface/range {v1 .. v6}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$INotification;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$NotifyListener;)V

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$002(Z)Z

    .line 184
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils$2;->val$type:I

    invoke-static {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NotificationUtils;->access$502(I)I

    return-void
.end method
