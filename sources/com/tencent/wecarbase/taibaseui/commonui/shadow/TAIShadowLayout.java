package com.tencent.wecarbase.taibaseui.commonui.shadow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIShadowLayout extends FrameLayout {
    private float mCornerRadius;
    private float mDx;
    private float mDy;
    private float mElevation;
    private boolean mForceInvalidateShadow;
    private boolean mInvalidateShadowOnSizeChanged;
    private int mShadowColor;

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return 0;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return 0;
    }

    public TAIShadowLayout(Context context) {
        super(context);
        this.mInvalidateShadowOnSizeChanged = true;
        this.mForceInvalidateShadow = false;
        initView(context, null);
    }

    public TAIShadowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInvalidateShadowOnSizeChanged = true;
        this.mForceInvalidateShadow = false;
        initView(context, attributeSet);
    }

    public TAIShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInvalidateShadowOnSizeChanged = true;
        this.mForceInvalidateShadow = false;
        initView(context, attributeSet);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i <= 0 || i2 <= 0) {
            return;
        }
        if (getBackground() == null || this.mInvalidateShadowOnSizeChanged || this.mForceInvalidateShadow) {
            this.mForceInvalidateShadow = false;
            setBackgroundCompat(i, i2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mForceInvalidateShadow) {
            this.mForceInvalidateShadow = false;
            setBackgroundCompat(i3 - i, i4 - i2);
        }
    }

    public void setInvalidateShadowOnSizeChanged(boolean z) {
        this.mInvalidateShadowOnSizeChanged = z;
    }

    public void invalidateShadow() {
        this.mForceInvalidateShadow = true;
        requestLayout();
        invalidate();
    }

    private void initView(Context context, AttributeSet attributeSet) {
        initAttributes(context, attributeSet);
        int abs = (int) (this.mElevation + Math.abs(this.mDx));
        int abs2 = (int) (this.mElevation + Math.abs(this.mDy));
        setPadding(abs, abs2, abs, abs2);
    }

    private void setBackgroundCompat(int i, int i2) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), createShadowBitmap(i, i2, this.mCornerRadius, this.mElevation, this.mDx, this.mDy, this.mShadowColor, 0));
        if (Build.VERSION.SDK_INT <= 16) {
            setBackgroundDrawable(bitmapDrawable);
        } else {
            setBackground(bitmapDrawable);
        }
    }

    private void initAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = getTypedArray(context, attributeSet, AppResourcesUtils.getStyleableIntArray("TAIShadowLayout"));
        if (typedArray == null) {
            return;
        }
        try {
            this.mCornerRadius = typedArray.getDimension(AppResourcesUtils.getStyleableIntArrayIndex("TAIShadowLayout_shadow_radius"), getResources().getDimension(AppResourcesUtils.getSdkId("tai_sdk_default_corner_radius", "dimen")));
            this.mElevation = typedArray.getDimension(AppResourcesUtils.getStyleableIntArrayIndex("TAIShadowLayout_shadow_elevation"), getResources().getDimension(AppResourcesUtils.getSdkId("tai_sdk_default_shadow_radius", "dimen")));
            this.mDx = typedArray.getDimension(AppResourcesUtils.getStyleableIntArrayIndex("TAIShadowLayout_shadow_dx"), 0.0f);
            this.mDy = typedArray.getDimension(AppResourcesUtils.getStyleableIntArrayIndex("TAIShadowLayout_shadow_dy"), 0.0f);
            this.mShadowColor = typedArray.getColor(AppResourcesUtils.getStyleableIntArrayIndex("TAIShadowLayout_shadow_color"), getResources().getColor(AppResourcesUtils.getSdkId("tai_push_default_shadow_color", AppResourcesUtils.RS_COLOR)));
        } finally {
            typedArray.recycle();
        }
    }

    private TypedArray getTypedArray(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private Bitmap createShadowBitmap(int i, int i2, float f, float f2, float f3, float f4, int i3, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(f2, f2, i - f2, i2 - f2);
        if (f4 > 0.0f) {
            rectF.top += f4;
            rectF.bottom -= f4;
        } else if (f4 < 0.0f) {
            rectF.top += Math.abs(f4);
            rectF.bottom -= Math.abs(f4);
        }
        if (f3 > 0.0f) {
            rectF.left += f3;
            rectF.right -= f3;
        } else if (f3 < 0.0f) {
            rectF.left += Math.abs(f3);
            rectF.right -= Math.abs(f3);
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i4);
        paint.setStyle(Paint.Style.FILL);
        if (!isInEditMode()) {
            paint.setShadowLayer(f2, f3, f4, i3);
        }
        canvas.drawRoundRect(rectF, f, f, paint);
        return createBitmap;
    }
}
