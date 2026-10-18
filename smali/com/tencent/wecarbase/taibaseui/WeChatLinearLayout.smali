.class public Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeChatLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 29
    invoke-static {}, Lcom/tencent/wecarbase/utils/Platform;->getPlatform()Lcom/tencent/wecarbase/utils/Platform;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->PUFANGDA_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/wecarbase/utils/Platform;->TUOTU_MIRRO:Lcom/tencent/wecarbase/utils/Platform;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_2

    .line 31
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x500

    if-lt v0, v1, :cond_3

    if-le v0, v1, :cond_2

    const/16 p1, 0xc8

    goto :goto_1

    :cond_2
    const/16 p1, 0xa0

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, p1, v2}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->setPadding(IIII)V

    const/high16 p1, -0x80000000

    .line 35
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/tencent/wecarbase/taibaseui/WeChatLinearLayout;->setPadding(IIII)V

    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method
