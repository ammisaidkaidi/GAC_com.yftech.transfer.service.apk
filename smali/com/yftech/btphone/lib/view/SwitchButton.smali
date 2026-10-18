.class public Lcom/yftech/btphone/lib/view/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private downX:F

.field private isInterceptEvent:Z

.field private isMove:Z

.field private listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

.field private mLastTimeClick:J

.field private mSpaceTimeClick:J

.field private nationStatus:I

.field private nowStatus:Z

.field private nowX:F

.field private onSlip:Z

.field private slipper_btn_no:Landroid/graphics/Bitmap;

.field private slipper_btn_off:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/yftech/btphone/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/btphone/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SwitchButton"

    .line 20
    iput-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->onSlip:Z

    .line 33
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isMove:Z

    .line 38
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    const-wide/16 v1, 0x1f4

    .line 50
    iput-wide v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    .line 135
    iput-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    .line 63
    sget-object v1, Lcom/yftech/btphone/lib/R$styleable;->MySwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 65
    sget p3, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_off:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 66
    sget v0, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_slipper_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    sget v1, Lcom/yftech/btphone/lib/R$styleable;->MySwitch_image_keyVolume_slipper_off:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 69
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_off:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->init()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 141
    iget-wide v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    sub-long v2, v0, v2

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    if-eqz v0, :cond_1

    return v5

    .line 159
    :pswitch_1
    iget-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 160
    iput-boolean v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    return v5

    .line 163
    :cond_0
    iput-boolean v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    .line 164
    iput-wide v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent spaceTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-wide v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string v0, "dispatchTouchEvent quickly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v5, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isInterceptEvent:Z

    return v5

    .line 168
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .line 83
    invoke-virtual {p0, p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 282
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTouch: isEnabled false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 290
    iget-wide v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 291
    iget-object p0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string p1, "onClick quickly"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_1
    iput-wide v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mLastTimeClick:J

    .line 296
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    .line 297
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz p1, :cond_2

    .line 298
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->OnChanged(Lcom/yftech/btphone/lib/view/SwitchButton;Z)V

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 100
    iget v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 106
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->onSlip:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 107
    iget v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1

    .line 110
    :cond_1
    iget v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_1

    .line 112
    :cond_2
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_4

    move v0, v2

    goto :goto_2

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    .line 123
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 127
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 128
    iget-object p0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_no:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 130
    :cond_6
    iget-object p0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->slipper_btn_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    const-string p1, "onTouchEvent: isEnabled false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    invoke-interface {v2, v0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->slidingSwitchState(I)V

    :cond_1
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 235
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, ACTION_CANCEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/view/SwitchButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 197
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    .line 198
    iget p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    iget v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->downX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 199
    iput-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isMove:Z

    goto/16 :goto_2

    .line 204
    :pswitch_2
    iput-boolean v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->onSlip:Z

    .line 205
    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isMove:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 206
    iget-boolean p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    if-eqz p1, :cond_2

    .line 207
    iput-boolean v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 208
    iput v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz p1, :cond_3

    .line 211
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    invoke-interface {p1, p0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->click(Lcom/yftech/btphone/lib/view/SwitchButton;)V

    .line 213
    :cond_3
    iput-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 214
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    .line 218
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz p1, :cond_5

    .line 219
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    invoke-interface {p1, p0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->click(Lcom/yftech/btphone/lib/view/SwitchButton;)V

    .line 221
    :cond_5
    iput-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 222
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    goto :goto_0

    .line 224
    :cond_6
    iput-boolean v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 225
    iput v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    if-eqz p1, :cond_9

    .line 230
    iget-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    iget-boolean v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    invoke-interface {p1, p0, v0}, Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;->OnChanged(Lcom/yftech/btphone/lib/view/SwitchButton;Z)V

    goto :goto_2

    .line 186
    :pswitch_3
    iput-boolean v1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->isMove:Z

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    goto :goto_1

    .line 190
    :cond_7
    iput-boolean v2, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->onSlip:Z

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->downX:F

    .line 192
    iget p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->downX:F

    iput p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    goto :goto_2

    :cond_8
    :goto_1
    return v1

    .line 242
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->invalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowX:F

    .line 267
    :goto_0
    iput-boolean p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->nowStatus:Z

    .line 268
    invoke-virtual {p0}, Lcom/yftech/btphone/lib/view/SwitchButton;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/yftech/btphone/lib/view/SwitchButton;->setClickable(Z)V

    return-void
.end method

.method public setOnChangedListener(Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->listener:Lcom/yftech/btphone/lib/view/SwitchButton$OnChangedListener;

    return-void
.end method

.method public setSpaceTimeClick(J)V
    .locals 0

    .line 276
    iput-wide p1, p0, Lcom/yftech/btphone/lib/view/SwitchButton;->mSpaceTimeClick:J

    return-void
.end method
