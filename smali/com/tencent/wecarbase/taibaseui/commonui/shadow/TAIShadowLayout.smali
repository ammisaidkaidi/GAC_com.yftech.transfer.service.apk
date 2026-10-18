.class public Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;
.super Landroid/widget/FrameLayout;
.source "TAIShadowLayout.java"


# instance fields
.field private mCornerRadius:F

.field private mDx:F

.field private mDy:F

.field private mElevation:F

.field private mForceInvalidateShadow:Z

.field private mInvalidateShadowOnSizeChanged:Z

.field private mShadowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 32
    iput-boolean p3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    const/4 p3, 0x0

    .line 33
    iput-boolean p3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createShadowBitmap(IIFFFFII)Landroid/graphics/Bitmap;
    .locals 4

    .line 132
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    sub-float/2addr p1, p4

    int-to-float p2, p2

    sub-float/2addr p2, p4

    invoke-direct {v2, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p1, 0x0

    cmpl-float p2, p6, p1

    if-lez p2, :cond_0

    .line 142
    iget p2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p6

    iput p2, v2, Landroid/graphics/RectF;->top:F

    .line 143
    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p6

    iput p2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    cmpg-float p2, p6, p1

    if-gez p2, :cond_1

    .line 145
    iget p2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr p2, v3

    iput p2, v2, Landroid/graphics/RectF;->top:F

    .line 146
    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr p2, v3

    iput p2, v2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    cmpl-float p2, p5, p1

    if-lez p2, :cond_2

    .line 150
    iget p1, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, p5

    iput p1, v2, Landroid/graphics/RectF;->left:F

    .line 151
    iget p1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p5

    iput p1, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    cmpg-float p1, p5, p1

    if-gez p1, :cond_3

    .line 153
    iget p1, v2, Landroid/graphics/RectF;->left:F

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, v2, Landroid/graphics/RectF;->left:F

    .line 154
    iget p1, v2, Landroid/graphics/RectF;->right:F

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, v2, Landroid/graphics/RectF;->right:F

    .line 157
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x1

    .line 158
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    invoke-virtual {p1, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_4

    .line 163
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 166
    :cond_4
    invoke-virtual {v1, v2, p3, p3, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "TAIShadowLayout"

    .line 109
    invoke-static {v0}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p2, "TAIShadowLayout_shadow_radius"

    .line 115
    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArrayIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tai_sdk_default_corner_radius"

    const-string v2, "dimen"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mCornerRadius:F

    const-string p2, "TAIShadowLayout_shadow_elevation"

    .line 116
    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArrayIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tai_sdk_default_shadow_radius"

    const-string v2, "dimen"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mElevation:F

    const-string p2, "TAIShadowLayout_shadow_dx"

    .line 117
    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArrayIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDx:F

    const-string p2, "TAIShadowLayout_shadow_dy"

    .line 118
    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArrayIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDy:F

    const-string p2, "TAIShadowLayout_shadow_color"

    .line 119
    invoke-static {p2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getStyleableIntArrayIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tai_push_default_shadow_color"

    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/AppResourcesUtils;->getSdkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mShadowColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iget p1, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mElevation:F

    iget p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDx:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 92
    iget p2, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mElevation:F

    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 93
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->setPadding(IIII)V

    return-void
.end method

.method private setBackgroundCompat(II)V
    .locals 9

    .line 98
    iget v3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mCornerRadius:F

    iget v4, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mElevation:F

    iget v5, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDx:F

    iget v6, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mDy:F

    iget v7, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mShadowColor:I

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->createShadowBitmap(IIFFFFII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 100
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateShadow()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    .line 84
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->requestLayout()V

    .line 85
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 71
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 72
    iget-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 74
    invoke-direct {p0, p4, p5}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->setBackgroundCompat(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    if-eqz p3, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 64
    iput-boolean p3, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mForceInvalidateShadow:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->setBackgroundCompat(II)V

    :cond_1
    return-void
.end method

.method public setInvalidateShadowOnSizeChanged(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/wecarbase/taibaseui/commonui/shadow/TAIShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    return-void
.end method
