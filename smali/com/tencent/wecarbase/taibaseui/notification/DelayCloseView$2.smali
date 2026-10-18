.class Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;
.super Ljava/lang/Object;
.source "DelayCloseView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->prepareAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->access$100(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->setProgress(F)V

    .line 110
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->access$002(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;)Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    invoke-static {p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->access$000(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;->this$0:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;

    invoke-static {p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->access$000(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;->onCountDown()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
