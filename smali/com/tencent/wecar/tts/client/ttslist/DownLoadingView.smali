.class public Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;
.super Landroid/view/View;
.source "DownLoadingView.java"


# instance fields
.field private mBitmapDelete:Landroid/graphics/Bitmap;

.field private mBitmapDown:Landroid/graphics/Bitmap;

.field private mBitmapStop:Landroid/graphics/Bitmap;

.field private mCircleColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mDest:Landroid/graphics/Rect;

.field private mHeasuredHeight:I

.field private mInColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMeasuredWidth:I

.field public volatile mNotFinished:Z

.field private mOval:Landroid/graphics/RectF;

.field private mProgress:I

.field private mRadius:F

.field private mRingColor:I

.field private mRingDefaultPaint:Landroid/graphics/Paint;

.field private mRingPaint:Landroid/graphics/Paint;

.field private mRingRadius:F

.field private mSrc:Landroid/graphics/Rect;

.field private mSrcDelete:Landroid/graphics/Rect;

.field private mStrokeWidth:F

.field private mTotalProgress:I

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mTotalProgress:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mNotFinished:Z

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->initVariable()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView_radius:I

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRadius:F

    .line 63
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView_strokeWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mStrokeWidth:F

    .line 64
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView_circleColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCircleColor:I

    .line 65
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView_ringColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingColor:I

    .line 66
    sget p2, Lcom/tencent/wecar/tts/R$styleable;->TasksCompletedView_inColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mInColor:I

    .line 67
    iget p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRadius:F

    iget p2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    return-void
.end method

.method private initVariable()V
    .locals 5

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    .line 77
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/wecar/tts/R$drawable;->ic_comm_48_download_night:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDown:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/wecar/tts/R$drawable;->ic_comm_48_stop_night:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapStop:Landroid/graphics/Bitmap;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapStop:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapStop:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mSrc:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/wecar/tts/R$drawable;->ic_comm_72_navi_del_night:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDelete:Landroid/graphics/Bitmap;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDelete:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDelete:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mSrcDelete:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCirclePaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mInColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mLinePaint:Landroid/graphics/Paint;

    .line 106
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mLinePaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 120
    iget-boolean v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mNotFinished:Z

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 121
    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRadius:F

    iget-object v4, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 123
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 124
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 125
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingRadius:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 127
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingDefaultPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 129
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mOval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mProgress:I

    int-to-float v1, v1

    iget v4, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mTotalProgress:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, v1

    iget-object v6, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mRingPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 130
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mMeasuredWidth:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 131
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mHeasuredHeight:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 132
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mMeasuredWidth:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 133
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mHeasuredHeight:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 134
    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mProgress:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDown:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapStop:Landroid/graphics/Bitmap;

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mSrc:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mMeasuredWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 138
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mHeasuredHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 139
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mMeasuredWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 140
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    iget v3, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mHeasuredHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 141
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mBitmapDelete:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mSrcDelete:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mDest:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 111
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 112
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mXCenter:I

    .line 113
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mYCenter:I

    .line 114
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mMeasuredWidth:I

    .line 115
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mHeasuredHeight:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 151
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mProgress:I

    .line 152
    iget p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mProgress:I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mNotFinished:Z

    .line 153
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->postInvalidate()V

    return-void
.end method
