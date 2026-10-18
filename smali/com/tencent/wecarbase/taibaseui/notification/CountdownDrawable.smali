.class public Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CountdownDrawable.java"


# static fields
.field private static final PROGRESS_FACTOR:I = 0x168


# instance fields
.field private mArcRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private outlineColor:I

.field private progress:F

.field private ringColor:I

.field private ringWidth:I

.field private showNumber:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mArcRect:Landroid/graphics/RectF;

    .line 33
    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->outlineColor:I

    .line 34
    iput p3, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringColor:I

    .line 35
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringWidth:I

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 42
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 45
    :goto_0
    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    div-float/2addr v5, v3

    .line 50
    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v3, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->outlineColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    iget v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v1, v2, v0

    add-float v3, v5, v0

    add-float/2addr v2, v4

    sub-float/2addr v2, v0

    add-float/2addr v5, v4

    sub-float/2addr v5, v0

    .line 62
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    iget-object v0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    iget-object v7, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000    # -90.0f

    iget v9, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->progress:F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getProgress()F
    .locals 1

    .line 84
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->progress:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getShowNumber()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->showNumber:I

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    .line 88
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->progress:F

    .line 89
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRingColor(II)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->outlineColor:I

    .line 103
    iput p2, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->ringColor:I

    .line 104
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShowNumber(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->showNumber:I

    .line 98
    invoke-virtual {p0}, Lcom/tencent/wecarbase/taibaseui/notification/CountdownDrawable;->invalidateSelf()V

    return-void
.end method
