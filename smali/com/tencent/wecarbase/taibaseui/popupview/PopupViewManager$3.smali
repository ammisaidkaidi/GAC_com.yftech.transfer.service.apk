.class Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;
.super Ljava/lang/Object;
.source "PopupViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->removeAllViewInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 387
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 388
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->access$200(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    invoke-static {v0}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->access$100(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 389
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager$3;->this$0:Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->access$102(Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
