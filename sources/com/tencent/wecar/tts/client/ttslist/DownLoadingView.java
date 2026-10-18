package com.tencent.wecar.tts.client.ttslist;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.wecar.tts.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class DownLoadingView extends View {
    private Bitmap mBitmapDelete;
    private Bitmap mBitmapDown;
    private Bitmap mBitmapStop;
    private int mCircleColor;
    private Paint mCirclePaint;
    private Rect mDest;
    private int mHeasuredHeight;
    private int mInColor;
    private Paint mLinePaint;
    private int mMeasuredWidth;
    public volatile boolean mNotFinished;
    private RectF mOval;
    private int mProgress;
    private float mRadius;
    private int mRingColor;
    private Paint mRingDefaultPaint;
    private Paint mRingPaint;
    private float mRingRadius;
    private Rect mSrc;
    private Rect mSrcDelete;
    private float mStrokeWidth;
    private int mTotalProgress;
    private int mXCenter;
    private int mYCenter;

    public DownLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalProgress = 100;
        this.mNotFinished = true;
        initAttrs(context, attributeSet);
        initVariable();
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.TasksCompletedView, 0, 0);
        this.mRadius = obtainStyledAttributes.getDimension(R.styleable.TasksCompletedView_radius, 80.0f);
        this.mStrokeWidth = obtainStyledAttributes.getDimension(R.styleable.TasksCompletedView_strokeWidth, 10.0f);
        this.mCircleColor = obtainStyledAttributes.getColor(R.styleable.TasksCompletedView_circleColor, -1);
        this.mRingColor = obtainStyledAttributes.getColor(R.styleable.TasksCompletedView_ringColor, -1);
        this.mInColor = obtainStyledAttributes.getColor(R.styleable.TasksCompletedView_inColor, -1);
        this.mRingRadius = this.mRadius + (this.mStrokeWidth / 2.0f);
    }

    private void initVariable() {
        this.mOval = new RectF();
        this.mBitmapDown = BitmapFactory.decodeResource(getResources(), R.drawable.ic_comm_48_download_night);
        this.mBitmapStop = BitmapFactory.decodeResource(getResources(), R.drawable.ic_comm_48_stop_night);
        this.mSrc = new Rect(0, 0, this.mBitmapStop.getWidth() - 1, this.mBitmapStop.getHeight() - 1);
        this.mDest = new Rect();
        this.mBitmapDelete = BitmapFactory.decodeResource(getResources(), R.drawable.ic_comm_72_navi_del_night);
        this.mSrcDelete = new Rect(0, 0, this.mBitmapDelete.getWidth() - 1, this.mBitmapDelete.getHeight() - 1);
        this.mCirclePaint = new Paint();
        this.mCirclePaint.setAntiAlias(true);
        this.mCirclePaint.setColor(this.mInColor);
        this.mCirclePaint.setStyle(Paint.Style.FILL);
        this.mRingDefaultPaint = new Paint();
        this.mRingDefaultPaint.setAntiAlias(true);
        this.mRingDefaultPaint.setColor(this.mCircleColor);
        this.mRingDefaultPaint.setStyle(Paint.Style.STROKE);
        this.mRingDefaultPaint.setStrokeWidth(this.mStrokeWidth);
        this.mRingPaint = new Paint();
        this.mRingPaint.setAntiAlias(true);
        this.mRingPaint.setColor(this.mRingColor);
        this.mRingPaint.setStyle(Paint.Style.STROKE);
        this.mRingPaint.setStrokeWidth(this.mStrokeWidth);
        this.mLinePaint = new Paint();
        this.mLinePaint.setColor(-7829368);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mXCenter = getWidth() / 2;
        this.mYCenter = getHeight() / 2;
        this.mMeasuredWidth = getMeasuredWidth();
        this.mHeasuredHeight = getMeasuredHeight();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mNotFinished) {
            canvas.drawCircle(this.mXCenter, this.mYCenter, this.mRadius, this.mCirclePaint);
            this.mOval.left = this.mXCenter - this.mRingRadius;
            this.mOval.top = this.mYCenter - this.mRingRadius;
            this.mOval.right = (this.mRingRadius * 2.0f) + (this.mXCenter - this.mRingRadius);
            this.mOval.bottom = (this.mRingRadius * 2.0f) + (this.mYCenter - this.mRingRadius);
            canvas.drawArc(this.mOval, -90.0f, 360.0f, false, this.mRingDefaultPaint);
            canvas.drawArc(this.mOval, -90.0f, 360.0f * (this.mProgress / this.mTotalProgress), false, this.mRingPaint);
            this.mDest.left = this.mXCenter - (this.mMeasuredWidth / 3);
            this.mDest.top = this.mYCenter - (this.mHeasuredHeight / 3);
            this.mDest.right = this.mXCenter + (this.mMeasuredWidth / 3);
            this.mDest.bottom = this.mYCenter + (this.mHeasuredHeight / 3);
            canvas.drawBitmap(this.mProgress <= 0 ? this.mBitmapDown : this.mBitmapStop, this.mSrc, this.mDest, (Paint) null);
            return;
        }
        this.mDest.left = this.mXCenter - (this.mMeasuredWidth / 2);
        this.mDest.top = this.mYCenter - (this.mHeasuredHeight / 2);
        this.mDest.right = this.mXCenter + (this.mMeasuredWidth / 2);
        this.mDest.bottom = this.mYCenter + (this.mHeasuredHeight / 2);
        canvas.drawBitmap(this.mBitmapDelete, this.mSrcDelete, this.mDest, (Paint) null);
    }

    public void setProgress(int i) {
        this.mProgress = i;
        this.mNotFinished = this.mProgress < 100;
        postInvalidate();
    }
}
