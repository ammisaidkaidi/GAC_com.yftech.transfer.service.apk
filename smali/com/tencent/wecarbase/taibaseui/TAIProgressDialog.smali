.class public Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;
.super Lcom/tencent/wecarbase/taibaseui/BaseDialog;
.source "TAIProgressDialog.java"


# instance fields
.field private loadingImageView:Landroid/widget/ImageView;

.field private mCircleAnim:Landroid/view/animation/Animation;

.field private tvMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tai_sdk_base_progress_dialog"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "loading_iv"

    const-string v2, "id"

    .line 31
    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->loadingImageView:Landroid/widget/ImageView;

    const-string v1, "msg_tv"

    const-string v2, "id"

    .line 32
    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->tvMsg:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->dismiss()V

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 48
    invoke-super {p0}, Lcom/tencent/wecarbase/taibaseui/BaseDialog;->show()V

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->mCircleAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->mContext:Landroid/content/Context;

    const-string v1, "wbsdk_anim_round_rotate"

    const-string v2, "anim"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->mCircleAnim:Landroid/view/animation/Animation;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->loadingImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->mCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/TAIProgressDialog;->show()V

    :cond_0
    return-void
.end method
