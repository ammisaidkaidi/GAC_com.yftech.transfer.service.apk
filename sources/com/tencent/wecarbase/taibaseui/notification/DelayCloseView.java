package com.tencent.wecarbase.taibaseui.notification;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class DelayCloseView extends ImageView {
    private Animator mAnimator;
    private CountdownDrawable mCdDrawable;
    private int mCountTime;
    private OnCountDownListener mOnCountDownListener;
    private Property<CountdownDrawable, Float> mProgressProperty;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnCountDownListener {
        void onCountDown();
    }

    public DelayCloseView(Context context) {
        this(context, null);
    }

    public DelayCloseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCountTime = 15000;
        this.mProgressProperty = new Property<CountdownDrawable, Float>(Float.class, NotificationCompat.CATEGORY_PROGRESS) { // from class: com.tencent.wecarbase.taibaseui.notification.DelayCloseView.1
            @Override // android.util.Property
            public Float get(CountdownDrawable countdownDrawable) {
                return Float.valueOf(countdownDrawable.getProgress());
            }

            @Override // android.util.Property
            public void set(CountdownDrawable countdownDrawable, Float f) {
                countdownDrawable.setProgress(f.floatValue());
            }
        };
        if (isInEditMode()) {
            return;
        }
        setWillNotDraw(false);
        initDrawable();
    }

    public void initDrawable() {
        this.mCdDrawable = new CountdownDrawable(AppResourcesUtils.getDimension(AppResourcesUtils.getSdkId("tai_delay_close_bg_ring_width", "dimen")), AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("tai_push_delay_close_bg_ring_color", AppResourcesUtils.RS_COLOR)), AppResourcesUtils.getColor(AppResourcesUtils.getSdkId("tai_push_delay_close_progress_ring_color", AppResourcesUtils.RS_COLOR)));
        setBackground(this.mCdDrawable);
    }

    public void setRingColor(int i, int i2) {
        this.mCdDrawable.setRingColor(i, i2);
    }

    public void setOnCountDownListener(OnCountDownListener onCountDownListener, int i) {
        this.mCountTime = i;
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
        }
        this.mAnimator = prepareAnimator();
        this.mOnCountDownListener = onCountDownListener;
        this.mAnimator.start();
    }

    public void cancelCountDown() {
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
        }
    }

    private Animator prepareAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mCdDrawable, this.mProgressProperty, 1.0f, 0.0f);
        ofFloat.setDuration(this.mCountTime);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.tencent.wecarbase.taibaseui.notification.DelayCloseView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DelayCloseView.this.mOnCountDownListener != null) {
                    DelayCloseView.this.mOnCountDownListener.onCountDown();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                DelayCloseView.this.mCdDrawable.setProgress(0.0f);
                DelayCloseView.this.mOnCountDownListener = null;
            }
        });
        animatorSet.playTogether(ofFloat);
        return animatorSet;
    }
}
