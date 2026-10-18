.class public Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;
.super Landroid/widget/ImageView;
.source "DelayCloseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

.field private mCountTime:I

.field private mOnCountDownListener:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

.field private mProgressProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3a98

    .line 24
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCountTime:I

    .line 30
    new-instance p1, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$1;

    const-class p2, Ljava/lang/Float;

    const-string v0, "progress"

    invoke-direct {p1, p0, p2, v0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$1;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mProgressProperty:Landroid/util/Property;

    .line 48
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setWillNotDraw(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->initDrawable()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mOnCountDownListener:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;)Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mOnCountDownListener:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    return-object p0
.end method

.method private prepareAnimator()Landroid/animation/Animator;
    .locals 4

    .line 83
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    iget-object v2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mProgressProperty:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 87
    iget v2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCountTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    new-instance v2, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;

    invoke-direct {v2, p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$2;-><init>(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x1

    .line 113
    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public initDrawable()V
    .locals 5

    .line 56
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    const-string v1, "tai_delay_close_bg_ring_width"

    const-string v2, "dimen"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getDimension(I)I

    move-result v1

    const-string v2, "tai_push_delay_close_bg_ring_color"

    const-string v3, "color"

    .line 57
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v2

    const-string v3, "tai_push_delay_close_progress_ring_color"

    const-string v4, "color"

    .line 58
    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getColor(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;-><init>(III)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    .line 59
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnCountDownListener(Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;I)V
    .locals 0

    .line 67
    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCountTime:I

    .line 68
    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->prepareAnimator()Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    .line 72
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mOnCountDownListener:Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView$OnCountDownListener;

    .line 73
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setRingColor(II)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/DelayCloseView;->mCdDrawable:Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->setRingColor(II)V

    return-void
.end method
