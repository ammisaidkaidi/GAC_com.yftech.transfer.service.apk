.class public Lcom/tencent/wecarbase/taibaseui/PageIndicator;
.super Landroid/widget/RadioGroup;
.source "PageIndicator.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageCount:I

.field private mSelectable:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    .line 40
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;-><init>(Lcom/tencent/wecarbase/taibaseui/PageIndicator;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    .line 40
    new-instance p2, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;

    invoke-direct {p2, p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator$1;-><init>(Lcom/tencent/wecarbase/taibaseui/PageIndicator;)V

    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->setOrientation(I)V

    const/16 p1, 0x11

    .line 59
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public createRadioButton()Landroid/widget/RadioButton;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "wbsdk_page_indicator"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getSelectable()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 138
    invoke-virtual {p0, p2}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const-string p1, "page"

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mListener:Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;

    if-eqz p1, :cond_2

    .line 144
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mListener:Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;

    invoke-interface {p0, p2}, Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;->onPageSelected(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public selectPage(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnPageSelectListener(Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mListener:Lcom/tencent/wecarbase/taibaseui/PageIndicator$OnPageSelectListener;

    return-void
.end method

.method public setPageCount(I)V
    .locals 5

    if-ltz p1, :cond_4

    .line 94
    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    if-ne p1, v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    if-ge p1, v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 100
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->removeViewAt(I)V

    .line 101
    iget v1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    .line 102
    iget v1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 108
    :goto_1
    iget v2, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    sub-int v2, p1, v2

    if-ge v1, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->createRadioButton()Landroid/widget/RadioButton;

    move-result-object v2

    .line 111
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v3, v4, v0, v4, v0}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 114
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_3
    :goto_2
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mPageCount:I

    .line 119
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->requestLayout()V

    return-void

    .line 92
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "page count must > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSelectable(Z)V
    .locals 2

    .line 63
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/widget/RadioButton;

    .line 68
    iget-boolean v1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mSelectable:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 79
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->setPageCount(I)V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/PageIndicator;->selectPage(I)V

    :cond_0
    return-void
.end method
