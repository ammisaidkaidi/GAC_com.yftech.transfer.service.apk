.class public Lcom/tencent/wecarbase/taibaseui/ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/taibaseui/InfoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/taibaseui/InfoModel;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerAdapter;->mItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/ViewPagerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;

    invoke-static {p0}, Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;->newInstance(Lcom/tencent/wecarbase/taibaseui/InfoModel;)Lcom/tencent/wecarbase/taibaseui/ViewPagerFragment;

    move-result-object p0

    return-object p0
.end method
