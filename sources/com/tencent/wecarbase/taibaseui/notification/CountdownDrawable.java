package com.tencent.wecarbase.taibaseui.notification;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CountdownDrawable extends Drawable {
    private static final int PROGRESS_FACTOR = 360;
    private int outlineColor;
    private float progress;
    private int ringColor;
    private int ringWidth;
    private int showNumber;
    private Paint mPaint = new Paint();
    private RectF mArcRect = new RectF();

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public CountdownDrawable(int i, int i2, int i3) {
        this.outlineColor = i2;
        this.ringColor = i3;
        this.ringWidth = i;
        this.mPaint.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        float width = ((bounds.height() > bounds.width() ? bounds.width() : bounds.height()) / 2) - this.ringWidth;
        float f = width * 2.0f;
        float width2 = (bounds.width() - f) / 2.0f;
        float height = (bounds.height() - f) / 2.0f;
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.ringWidth);
        this.mPaint.setColor(this.outlineColor);
        canvas.drawCircle(bounds.centerX(), bounds.centerY(), width, this.mPaint);
        float f2 = this.ringWidth / 2;
        this.mPaint.setColor(this.ringColor);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mArcRect.set(width2 + f2, height + f2, (width2 + f) - f2, (height + f) - f2);
        canvas.drawArc(this.mArcRect, -90.0f, this.progress, false, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mPaint.getAlpha();
    }

    public float getProgress() {
        return this.progress / 360.0f;
    }

    public void setProgress(float f) {
        this.progress = f * 360.0f;
        invalidateSelf();
    }

    public int getShowNumber() {
        return this.showNumber;
    }

    public void setShowNumber(int i) {
        this.showNumber = i;
        invalidateSelf();
    }

    public void setRingColor(int i, int i2) {
        this.outlineColor = i;
        this.ringColor = i2;
        invalidateSelf();
    }
}
