.class Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$6;
.super Lcom/tencent/wecarbase/common/UIHandler;
.source "NaviNotifyView.java"


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

    .line 241
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$6;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-direct {p0}, Lcom/tencent/wecarbase/common/UIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$6;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->hide()Z

    return-void
.end method
