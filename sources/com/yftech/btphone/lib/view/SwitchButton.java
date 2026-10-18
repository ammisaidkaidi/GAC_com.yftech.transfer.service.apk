package com.yftech.btphone.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.yftech.btphone.lib.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class SwitchButton extends View implements View.OnClickListener {
    private String TAG;
    private Bitmap bg_off;
    private Bitmap bg_on;
    private float downX;
    private boolean isInterceptEvent;
    private boolean isMove;
    private OnChangedListener listener;
    private long mLastTimeClick;
    private long mSpaceTimeClick;
    private int nationStatus;
    private boolean nowStatus;
    private float nowX;
    private boolean onSlip;
    private Bitmap slipper_btn_no;
    private Bitmap slipper_btn_off;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnChangedListener {
        default void OnChanged(SwitchButton switchButton, boolean z) {
        }

        default void click(SwitchButton switchButton) {
        }

        default void slidingSwitchState(int i) {
        }
    }

    public SwitchButton(Context context) {
        this(context, null);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "SwitchButton";
        this.onSlip = false;
        this.isMove = false;
        this.nowStatus = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 500L;
        this.isInterceptEvent = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MySwitch, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_on);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_off);
        Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_slipper_on);
        BitmapDrawable bitmapDrawable = (BitmapDrawable) obtainStyledAttributes.getDrawable(R.styleable.MySwitch_image_keyVolume_slipper_off);
        this.bg_on = ((BitmapDrawable) drawable).getBitmap();
        this.bg_off = ((BitmapDrawable) drawable2).getBitmap();
        this.slipper_btn_no = ((BitmapDrawable) drawable3).getBitmap();
        this.slipper_btn_off = bitmapDrawable.getBitmap();
        obtainStyledAttributes.recycle();
        init();
    }

    public void init() {
        setOnClickListener(this);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setClickable(z);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        Matrix matrix = new Matrix();
        Paint paint = new Paint();
        if (this.nowX < this.bg_on.getWidth() / 2) {
            canvas.drawBitmap(this.bg_off, matrix, paint);
        } else {
            canvas.drawBitmap(this.bg_on, matrix, paint);
        }
        if (!this.onSlip) {
            f = this.nowStatus ? this.bg_on.getWidth() - this.slipper_btn_no.getWidth() : 0.0f;
        } else if (this.nowX >= this.bg_on.getWidth()) {
            f = this.bg_on.getWidth() - (this.slipper_btn_no.getWidth() / 2);
        } else {
            f = this.nowX - (this.slipper_btn_no.getWidth() / 2);
        }
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > this.bg_on.getWidth() - this.slipper_btn_no.getWidth()) {
            f = this.bg_on.getWidth() - this.slipper_btn_no.getWidth();
        }
        if (f < this.bg_on.getWidth() / 2) {
            canvas.drawBitmap(this.slipper_btn_no, f, 0.0f, paint);
        } else {
            canvas.drawBitmap(this.slipper_btn_off, f, 0.0f, paint);
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Log.d(this.TAG, "dispatchTouchEvent: " + motionEvent);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.mLastTimeClick;
        switch (motionEvent.getAction()) {
            case 0:
                Log.d(this.TAG, "dispatchTouchEvent spaceTime:" + j);
                if (j < this.mSpaceTimeClick) {
                    Log.d(this.TAG, "dispatchTouchEvent quickly");
                    this.isInterceptEvent = true;
                    return true;
                }
                break;
            case 1:
            case 3:
                if (this.isInterceptEvent) {
                    this.isInterceptEvent = false;
                    return true;
                }
                this.isInterceptEvent = false;
                this.mLastTimeClick = elapsedRealtime;
                break;
            case 2:
                if (this.isInterceptEvent) {
                    return true;
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            Log.d(this.TAG, "onTouchEvent: isEnabled false");
            return false;
        }
        int action = motionEvent.getAction();
        if (this.listener != null) {
            this.listener.slidingSwitchState(action);
        }
        switch (action) {
            case 0:
                this.isMove = false;
                if (motionEvent.getX() <= this.bg_off.getWidth() && motionEvent.getY() <= this.bg_off.getHeight()) {
                    this.onSlip = true;
                    this.downX = motionEvent.getX();
                    this.nowX = this.downX;
                    break;
                } else {
                    return false;
                }
                break;
            case 1:
                this.onSlip = false;
                if (this.isMove) {
                    if (motionEvent.getX() >= this.bg_on.getWidth() / 2) {
                        if (this.listener != null) {
                            this.listener.click(this);
                        }
                        this.nowStatus = true;
                        this.nowX = this.bg_off.getWidth();
                    } else {
                        this.nowStatus = false;
                        this.nowX = 0.0f;
                    }
                } else if (this.nowStatus) {
                    this.nowStatus = false;
                    this.nowX = 0.0f;
                } else {
                    if (this.listener != null) {
                        this.listener.click(this);
                    }
                    this.nowStatus = true;
                    this.nowX = this.bg_off.getWidth();
                }
                if (this.listener != null) {
                    this.listener.OnChanged(this, this.nowStatus);
                    break;
                }
                break;
            case 2:
                this.nowX = motionEvent.getX();
                if (Math.abs(this.nowX - this.downX) > 5.0f) {
                    this.isMove = true;
                    break;
                }
                break;
            case 3:
                Log.d(this.TAG, "onTouchEvent, ACTION_CANCEL: " + this.nowStatus);
                setChecked(this.nowStatus);
                break;
        }
        invalidate();
        return true;
    }

    public void setOnChangedListener(OnChangedListener onChangedListener) {
        this.listener = onChangedListener;
    }

    public void setChecked(boolean z) {
        if (z) {
            this.nowX = this.bg_off.getWidth();
        } else {
            this.nowX = 0.0f;
        }
        this.nowStatus = z;
        invalidate();
    }

    public boolean isChecked() {
        return this.nowStatus;
    }

    public void setSpaceTimeClick(long j) {
        this.mSpaceTimeClick = j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.d(this.TAG, "onClick");
        if (!isEnabled()) {
            Log.d(getClass().getSimpleName(), "onTouch: isEnabled false");
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.mLastTimeClick < this.mSpaceTimeClick) {
            Log.d(this.TAG, "onClick quickly");
            return;
        }
        this.mLastTimeClick = elapsedRealtime;
        this.nowX = this.bg_off.getWidth();
        if (this.listener != null) {
            this.listener.OnChanged(this, !this.nowStatus);
        }
        invalidate();
    }
}
