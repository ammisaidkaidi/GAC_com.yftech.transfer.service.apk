.class Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$4;
.super Ljava/lang/Object;
.source "NaviNotifyView.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->setDismissTime(I)V
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

    .line 211
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$4;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDown()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView$4;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/NaviNotifyView;->hide()Z

    return-void
.end method
