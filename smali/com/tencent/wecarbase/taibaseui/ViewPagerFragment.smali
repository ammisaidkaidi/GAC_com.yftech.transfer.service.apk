.class public Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewPagerFragment.java"


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mRootView:Landroid/view/View;

.field mTitle1:Landroid/widget/TextView;

.field mTitle2:Landroid/widget/TextView;

.field model:Lcom/tencent/wecarbase/taibaseui/InfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mRootView:Landroid/view/View;

    const-string v1, "title1"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mTitle1:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mRootView:Landroid/view/View;

    const-string v1, "title2"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mTitle2:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mRootView:Landroid/view/View;

    const-string v1, "imageview"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mImageView:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->model:Lcom/tencent/wecarbase/taibaseui/InfoModel;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mTitle1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->model:Lcom/tencent/wecarbase/taibaseui/InfoModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/taibaseui/InfoModel;->getTitle1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mTitle2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->model:Lcom/tencent/wecarbase/taibaseui/InfoModel;

    invoke-virtual {v1}, Lcom/tencent/wecarbase/taibaseui/InfoModel;->getTitle2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->model:Lcom/tencent/wecarbase/taibaseui/InfoModel;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/InfoModel;->getImageResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/tencent/wecarbase/taibaseui/InfoModel;)Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;
    .locals 3

    .line 27
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;

    invoke-direct {v0}, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "model"

    .line 29
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p3, "wbsdk_fragment_view_pager"

    const-string v0, "layout"

    .line 39
    invoke-static {p3, v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mRootView:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "model"

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/taibaseui/InfoModel;

    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->model:Lcom/tencent/wecarbase/taibaseui/InfoModel;

    .line 42
    invoke-direct {p0}, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->initUI()V

    .line 43
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method
