.class Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;
.super Landroid/os/Handler;
.source "PopupViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;Landroid/os/Looper;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    .line 144
    invoke-static {v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->access$000(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "slide_up"

    const-string v3, "anim"

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$1;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-virtual {v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->dismissPopupWindows()V

    .line 152
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
