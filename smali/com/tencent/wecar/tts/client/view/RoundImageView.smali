.class public Lcom/tencent/wecar/tts/client/view/RoundImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RoundImageView.java"


# static fields
.field private static final MODE_CIRCLE:I = 0x1

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_ROUND:I = 0x2


# instance fields
.field private currMode:I

.field private currRound:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    .line 42
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 38
    invoke-direct {p0, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->obtainStyledAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->initViews()V

    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 144
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private obtainStyledAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    sget-object v0, Lcom/tencent/wecar/tts/R$styleable;->RoundImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->RoundImageView_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/tencent/wecar/tts/R$styleable;->RoundImageView_type:I

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    .line 59
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->RoundImageView_roundRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/tencent/wecar/tts/R$styleable;->RoundImageView_roundRadius:I

    iget p3, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    :goto_0
    iput p2, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 84
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingTop()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingLeft()I

    move-result v2

    if-nez v2, :cond_2

    .line 95
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getCropToPadding()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getScrollX()I

    move-result v3

    .line 103
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getScrollY()I

    move-result v4

    .line 104
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v4

    .line 105
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getRight()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getLeft()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 106
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getBottom()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getTop()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    .line 104
    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget v3, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v4, :cond_4

    .line 111
    invoke-direct {p0, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 114
    :cond_4
    iget v3, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    if-ne v3, v5, :cond_5

    .line 115
    invoke-direct {p0, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 118
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    int-to-float v1, v1

    iget v3, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currRound:I

    int-to-float v3, v3

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->mPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 124
    :cond_6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 73
    iget v0, p0, Lcom/tencent/wecar/tts/client/view/RoundImageView;->currMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 75
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 76
    invoke-virtual {p0, p1, p1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    :goto_0
    return-void
.end method
