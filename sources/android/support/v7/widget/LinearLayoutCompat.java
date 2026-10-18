package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface OrientationMode {
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    left = virtualChildAt.getRight() + layoutParams.rightMargin;
                } else {
                    left = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    right = (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    right = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                right = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i2 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            if (i == 16) {
                i2 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                i2 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return i2 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        LayoutParams layoutParams;
        View view;
        int max;
        int i19;
        boolean z2;
        int i20;
        int i21 = 0;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i22 = this.mBaselineAlignedChildIndex;
        boolean z3 = this.mUseLargestChild;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        boolean z4 = false;
        boolean z5 = false;
        int i26 = 0;
        float f = 0.0f;
        boolean z6 = true;
        int i27 = Integer.MIN_VALUE;
        while (i25 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i25);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i25);
                i14 = virtualChildCount;
                i15 = mode2;
            } else {
                int i28 = i23;
                if (virtualChildAt.getVisibility() == 8) {
                    i25 += getChildrenSkipCount(virtualChildAt, i25);
                    i14 = virtualChildCount;
                    i15 = mode2;
                    i23 = i28;
                } else {
                    if (hasDividerBeforeChildAt(i25)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f2 = f + layoutParams2.weight;
                    if (mode2 == 1073741824 && layoutParams2.height == 0 && layoutParams2.weight > 0.0f) {
                        int i29 = this.mTotalLength;
                        max = i27;
                        this.mTotalLength = Math.max(i29, layoutParams2.topMargin + i29 + layoutParams2.bottomMargin);
                        i17 = i24;
                        view = virtualChildAt;
                        i14 = virtualChildCount;
                        i15 = mode2;
                        z4 = true;
                        i18 = i26;
                        i13 = i28;
                        i16 = i25;
                        layoutParams = layoutParams2;
                    } else {
                        int i30 = i27;
                        if (layoutParams2.height != 0 || layoutParams2.weight <= 0.0f) {
                            i12 = Integer.MIN_VALUE;
                        } else {
                            layoutParams2.height = -2;
                            i12 = 0;
                        }
                        i13 = i28;
                        int i31 = i12;
                        i14 = virtualChildCount;
                        i15 = mode2;
                        i16 = i25;
                        i17 = i24;
                        i18 = i26;
                        layoutParams = layoutParams2;
                        measureChildBeforeLayout(virtualChildAt, i25, i, 0, i2, f2 == 0.0f ? this.mTotalLength : 0);
                        if (i31 != Integer.MIN_VALUE) {
                            layoutParams.height = i31;
                        }
                        int measuredHeight = virtualChildAt.getMeasuredHeight();
                        int i32 = this.mTotalLength;
                        view = virtualChildAt;
                        this.mTotalLength = Math.max(i32, i32 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
                        max = z3 ? Math.max(measuredHeight, i30) : i30;
                    }
                    if (i22 >= 0 && i22 == i16 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i16 < i22 && layoutParams.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode != 1073741824) {
                        i19 = -1;
                        if (layoutParams.width == -1) {
                            z2 = true;
                            z5 = true;
                            int i33 = layoutParams.leftMargin + layoutParams.rightMargin;
                            int measuredWidth = view.getMeasuredWidth() + i33;
                            int max2 = Math.max(i13, measuredWidth);
                            int combineMeasuredStates = View.combineMeasuredStates(i21, view.getMeasuredState());
                            boolean z7 = !z6 && layoutParams.width == i19;
                            if (layoutParams.weight <= 0.0f) {
                                if (!z2) {
                                    i33 = measuredWidth;
                                }
                                i20 = Math.max(i17, i33);
                            } else {
                                i20 = i17;
                                if (z2) {
                                    measuredWidth = i33;
                                }
                                i18 = Math.max(i18, measuredWidth);
                            }
                            int childrenSkipCount = getChildrenSkipCount(view, i16) + i16;
                            z6 = z7;
                            i23 = max2;
                            i21 = combineMeasuredStates;
                            i24 = i20;
                            i27 = max;
                            i26 = i18;
                            i25 = childrenSkipCount;
                            f = f2;
                            i25++;
                            mode2 = i15;
                            virtualChildCount = i14;
                        }
                    } else {
                        i19 = -1;
                    }
                    z2 = false;
                    int i332 = layoutParams.leftMargin + layoutParams.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i332;
                    int max22 = Math.max(i13, measuredWidth2);
                    int combineMeasuredStates2 = View.combineMeasuredStates(i21, view.getMeasuredState());
                    if (z6) {
                    }
                    if (layoutParams.weight <= 0.0f) {
                    }
                    int childrenSkipCount2 = getChildrenSkipCount(view, i16) + i16;
                    z6 = z7;
                    i23 = max22;
                    i21 = combineMeasuredStates2;
                    i24 = i20;
                    i27 = max;
                    i26 = i18;
                    i25 = childrenSkipCount2;
                    f = f2;
                    i25++;
                    mode2 = i15;
                    virtualChildCount = i14;
                }
            }
            i25++;
            mode2 = i15;
            virtualChildCount = i14;
        }
        int i34 = i23;
        int i35 = i27;
        int i36 = virtualChildCount;
        int i37 = mode2;
        int i38 = i26;
        int i39 = i24;
        if (this.mTotalLength > 0) {
            i3 = i36;
            if (hasDividerBeforeChildAt(i3)) {
                this.mTotalLength += this.mDividerHeight;
            }
        } else {
            i3 = i36;
        }
        if (z3) {
            i4 = i37;
            if (i4 == Integer.MIN_VALUE || i4 == 0) {
                this.mTotalLength = 0;
                int i40 = 0;
                while (i40 < i3) {
                    View virtualChildAt2 = getVirtualChildAt(i40);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength += measureNullChild(i40);
                    } else if (virtualChildAt2.getVisibility() == 8) {
                        i40 += getChildrenSkipCount(virtualChildAt2, i40);
                    } else {
                        LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                        int i41 = this.mTotalLength;
                        this.mTotalLength = Math.max(i41, i41 + i35 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    i40++;
                }
            }
        } else {
            i4 = i37;
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i42 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z4 || (i42 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            this.mTotalLength = 0;
            float f3 = f;
            int i43 = 0;
            while (i43 < i3) {
                View virtualChildAt3 = getVirtualChildAt(i43);
                if (virtualChildAt3.getVisibility() == 8) {
                    i8 = i4;
                    i9 = i42;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f4 = layoutParams4.weight;
                    if (f4 > 0.0f) {
                        int i44 = (int) ((i42 * f4) / f3);
                        float f5 = f3 - f4;
                        int i45 = i42 - i44;
                        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams4.leftMargin + layoutParams4.rightMargin, layoutParams4.width);
                        if (layoutParams4.height == 0) {
                            i11 = 1073741824;
                            if (i4 == 1073741824) {
                                if (i44 <= 0) {
                                    i44 = 0;
                                }
                                virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i44, 1073741824));
                                i21 = View.combineMeasuredStates(i21, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                f3 = f5;
                                i7 = i45;
                            }
                        } else {
                            i11 = 1073741824;
                        }
                        int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i44;
                        if (measuredHeight2 < 0) {
                            measuredHeight2 = 0;
                        }
                        virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i11));
                        i21 = View.combineMeasuredStates(i21, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                        f3 = f5;
                        i7 = i45;
                    } else {
                        i7 = i42;
                    }
                    i8 = i4;
                    int i46 = layoutParams4.leftMargin + layoutParams4.rightMargin;
                    int measuredWidth3 = virtualChildAt3.getMeasuredWidth() + i46;
                    i34 = Math.max(i34, measuredWidth3);
                    if (mode != 1073741824) {
                        i9 = i7;
                        i10 = -1;
                        if (layoutParams4.width == -1) {
                            z = true;
                            if (!z) {
                                i46 = measuredWidth3;
                            }
                            i38 = Math.max(i38, i46);
                            boolean z8 = !z6 && layoutParams4.width == i10;
                            int i47 = this.mTotalLength;
                            this.mTotalLength = Math.max(i47, i47 + virtualChildAt3.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt3));
                            z6 = z8;
                        }
                    } else {
                        i9 = i7;
                        i10 = -1;
                    }
                    z = false;
                    if (!z) {
                    }
                    i38 = Math.max(i38, i46);
                    if (z6) {
                    }
                    int i472 = this.mTotalLength;
                    this.mTotalLength = Math.max(i472, i472 + virtualChildAt3.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt3));
                    z6 = z8;
                }
                i43++;
                i4 = i8;
                i42 = i9;
            }
            i5 = i;
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            i6 = i38;
        } else {
            i6 = Math.max(i38, i39);
            if (z3 && i4 != 1073741824) {
                for (int i48 = 0; i48 < i3; i48++) {
                    View virtualChildAt4 = getVirtualChildAt(i48);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i35, 1073741824));
                    }
                }
            }
            i5 = i;
        }
        if (z6 || mode == 1073741824) {
            i6 = i34;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i6 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i5, i21), resolveSizeAndState);
        if (z5) {
            forceUniformWidth(i3, i2);
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureHorizontal(int i, int i2) {
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        boolean z;
        int baseline;
        int i8;
        int i9;
        int i10;
        boolean z2;
        boolean z3;
        LayoutParams layoutParams;
        int i11;
        View view;
        int i12;
        boolean z4;
        int measuredHeight;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        int i13 = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.mBaselineAligned;
        boolean z6 = this.mUseLargestChild;
        int i14 = 1073741824;
        boolean z7 = mode == 1073741824;
        int i15 = 0;
        int i16 = 0;
        boolean z8 = false;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f2 = 0.0f;
        int i20 = Integer.MIN_VALUE;
        while (true) {
            iArr = iArr3;
            i3 = 8;
            if (i15 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(i15);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i15);
                z2 = z6;
                z3 = z5;
                i11 = i13;
            } else if (virtualChildAt.getVisibility() == 8) {
                i15 += getChildrenSkipCount(virtualChildAt, i15);
                z2 = z6;
                z3 = z5;
                i11 = -1;
            } else {
                if (hasDividerBeforeChildAt(i15)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                f2 += layoutParams2.weight;
                if (mode == i14 && layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                    if (z7) {
                        this.mTotalLength += layoutParams2.leftMargin + layoutParams2.rightMargin;
                    } else {
                        int i21 = this.mTotalLength;
                        this.mTotalLength = Math.max(i21, layoutParams2.leftMargin + i21 + layoutParams2.rightMargin);
                    }
                    if (z5) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(makeMeasureSpec, makeMeasureSpec);
                        i10 = i15;
                        z2 = z6;
                        z3 = z5;
                        layoutParams = layoutParams2;
                        view = virtualChildAt;
                        i11 = -1;
                    } else {
                        i10 = i15;
                        z2 = z6;
                        z3 = z5;
                        layoutParams = layoutParams2;
                        view = virtualChildAt;
                        z8 = true;
                        i12 = 1073741824;
                        i11 = -1;
                        if (mode2 == i12 && layoutParams.height == i11) {
                            z4 = true;
                            z9 = true;
                        } else {
                            z4 = false;
                        }
                        int i22 = layoutParams.topMargin + layoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i22;
                        int combineMeasuredStates = View.combineMeasuredStates(i19, view.getMeasuredState());
                        if (z3 && (baseline2 = view.getBaseline()) != i11) {
                            int i23 = ((((layoutParams.gravity >= 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                            iArr2[i23] = Math.max(iArr2[i23], baseline2);
                            iArr[i23] = Math.max(iArr[i23], measuredHeight - baseline2);
                        }
                        int max = Math.max(i16, measuredHeight);
                        boolean z11 = !z10 && layoutParams.height == i11;
                        if (layoutParams.weight <= 0.0f) {
                            if (!z4) {
                                i22 = measuredHeight;
                            }
                            i18 = Math.max(i18, i22);
                        } else {
                            int i24 = i18;
                            if (z4) {
                                measuredHeight = i22;
                            }
                            i17 = Math.max(i17, measuredHeight);
                            i18 = i24;
                        }
                        int i25 = i10;
                        i16 = max;
                        i15 = getChildrenSkipCount(view, i25) + i25;
                        i19 = combineMeasuredStates;
                        z10 = z11;
                    }
                } else {
                    if (layoutParams2.width != 0 || layoutParams2.weight <= 0.0f) {
                        i9 = Integer.MIN_VALUE;
                    } else {
                        layoutParams2.width = -2;
                        i9 = 0;
                    }
                    i10 = i15;
                    int i26 = i9;
                    z2 = z6;
                    z3 = z5;
                    layoutParams = layoutParams2;
                    i11 = -1;
                    measureChildBeforeLayout(virtualChildAt, i10, i, f2 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    if (i26 != Integer.MIN_VALUE) {
                        layoutParams.width = i26;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z7) {
                        view = virtualChildAt;
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                    } else {
                        view = virtualChildAt;
                        int i27 = this.mTotalLength;
                        this.mTotalLength = Math.max(i27, i27 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                    }
                    if (z2) {
                        i20 = Math.max(measuredWidth, i20);
                    }
                }
                i12 = 1073741824;
                if (mode2 == i12) {
                }
                z4 = false;
                int i222 = layoutParams.topMargin + layoutParams.bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i222;
                int combineMeasuredStates2 = View.combineMeasuredStates(i19, view.getMeasuredState());
                if (z3) {
                    int i232 = ((((layoutParams.gravity >= 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                    iArr2[i232] = Math.max(iArr2[i232], baseline2);
                    iArr[i232] = Math.max(iArr[i232], measuredHeight - baseline2);
                }
                int max2 = Math.max(i16, measuredHeight);
                if (z10) {
                }
                if (layoutParams.weight <= 0.0f) {
                }
                int i252 = i10;
                i16 = max2;
                i15 = getChildrenSkipCount(view, i252) + i252;
                i19 = combineMeasuredStates2;
                z10 = z11;
            }
            i15++;
            i13 = i11;
            iArr3 = iArr;
            z6 = z2;
            z5 = z3;
            i14 = 1073741824;
        }
        boolean z12 = z6;
        boolean z13 = z5;
        int i28 = i13;
        int i29 = i16;
        int i30 = i17;
        int i31 = i18;
        int i32 = i19;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr2[1] != i28 || iArr2[0] != i28 || iArr2[2] != i28 || iArr2[3] != i28) {
            i29 = Math.max(i29, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z12 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i33 = 0;
            while (i33 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i33);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i33);
                } else if (virtualChildAt2.getVisibility() == i3) {
                    i33 += getChildrenSkipCount(virtualChildAt2, i33);
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z7) {
                        this.mTotalLength += layoutParams3.leftMargin + i20 + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i34 = this.mTotalLength;
                        this.mTotalLength = Math.max(i34, i34 + i20 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                }
                i33++;
                i3 = 8;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i35 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z8 || (i35 != 0 && f2 > 0.0f)) {
            float f3 = this.mWeightSum > 0.0f ? this.mWeightSum : f2;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i36 = i30;
            int i37 = -1;
            float f4 = f3;
            int i38 = 0;
            while (i38 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i38);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i6 = i35;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f5 = layoutParams4.weight;
                    if (f5 > 0.0f) {
                        int i39 = (int) ((i35 * f5) / f4);
                        f = f4 - f5;
                        i6 = i35 - i39;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams4.topMargin + layoutParams4.bottomMargin, layoutParams4.height);
                        if (layoutParams4.width == 0) {
                            i8 = 1073741824;
                            if (mode == 1073741824) {
                                if (i39 <= 0) {
                                    i39 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i39, 1073741824), childMeasureSpec);
                                i32 = View.combineMeasuredStates(i32, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            }
                        } else {
                            i8 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i39;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i8), childMeasureSpec);
                        i32 = View.combineMeasuredStates(i32, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    } else {
                        f = f4;
                        i6 = i35;
                    }
                    if (z7) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i40 = this.mTotalLength;
                        this.mTotalLength = Math.max(i40, virtualChildAt3.getMeasuredWidth() + i40 + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z14 = mode2 != 1073741824 && layoutParams4.height == -1;
                    int i41 = layoutParams4.topMargin + layoutParams4.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i41;
                    i37 = Math.max(i37, measuredHeight2);
                    if (!z14) {
                        i41 = measuredHeight2;
                    }
                    int max3 = Math.max(i36, i41);
                    if (z10) {
                        i7 = -1;
                        if (layoutParams4.height == -1) {
                            z = true;
                            if (!z13 && (baseline = virtualChildAt3.getBaseline()) != i7) {
                                int i42 = ((((layoutParams4.gravity < 0 ? this.mGravity : layoutParams4.gravity) & 112) >> 4) & (-2)) >> 1;
                                iArr2[i42] = Math.max(iArr2[i42], baseline);
                                iArr[i42] = Math.max(iArr[i42], measuredHeight2 - baseline);
                            }
                            i36 = max3;
                            z10 = z;
                            f4 = f;
                        }
                    } else {
                        i7 = -1;
                    }
                    z = false;
                    if (!z13) {
                    }
                    i36 = max3;
                    z10 = z;
                    f4 = f;
                }
                i38++;
                i35 = i6;
            }
            i4 = i2;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            i29 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i37 : Math.max(i37, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i5 = i36;
        } else {
            i5 = Math.max(i30, i31);
            if (z12 && mode != 1073741824) {
                for (int i43 = 0; i43 < virtualChildCount; i43++) {
                    View virtualChildAt4 = getVirtualChildAt(i43);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i20, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i4 = i2;
        }
        if (!z10 && mode2 != 1073741824) {
            i29 = i5;
        }
        setMeasuredDimension(resolveSizeAndState | ((-16777216) & i32), View.resolveSizeAndState(Math.max(i29 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i4, i32 << 16));
        if (z9) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity & 112;
        int i9 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i8 == 16) {
            paddingTop = (((i4 - i2) - this.mTotalLength) / 2) + getPaddingTop();
        } else if (i8 == 80) {
            paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop();
        }
        int i10 = 0;
        while (i10 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(i10);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i11 = layoutParams.gravity;
                if (i11 < 0) {
                    i11 = i9;
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this)) & 7;
                if (absoluteGravity == 1) {
                    i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (absoluteGravity == 5) {
                    i5 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                } else {
                    i5 = layoutParams.leftMargin + paddingLeft;
                }
                int i12 = i5;
                if (hasDividerBeforeChildAt(i10)) {
                    paddingTop += this.mDividerHeight;
                }
                int i13 = paddingTop + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i12, i13 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset = i13 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                i10 += getChildrenSkipCount(virtualChildAt, i10);
                paddingTop = nextLocationOffset;
                i6 = 1;
                i10 += i6;
            }
            i6 = 1;
            i10 += i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i15 = i4 - i2;
        int paddingBottom = i15 - getPaddingBottom();
        int paddingBottom2 = (i15 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i16 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i17 = this.mGravity & 112;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i16, ViewCompat.getLayoutDirection(this));
        boolean z3 = true;
        if (absoluteGravity == 1) {
            paddingLeft = (((i3 - i) - this.mTotalLength) / 2) + getPaddingLeft();
        } else if (absoluteGravity == 5) {
            paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (isLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i18 = 0;
        while (i18 < virtualChildCount) {
            int i19 = i5 + (i6 * i18);
            View virtualChildAt = getVirtualChildAt(i19);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i19);
                z = z3;
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i17;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (z2) {
                    i10 = i18;
                    i8 = virtualChildCount;
                    if (layoutParams.height != -1) {
                        i11 = virtualChildAt.getBaseline();
                        i12 = layoutParams.gravity;
                        if (i12 < 0) {
                            i12 = i17;
                        }
                        i13 = i12 & 112;
                        i9 = i17;
                        if (i13 != 16) {
                            z = true;
                            i14 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        } else if (i13 != 48) {
                            if (i13 != 80) {
                                i14 = paddingTop;
                            } else {
                                int i20 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                                if (i11 != -1) {
                                    i20 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i11);
                                }
                                i14 = i20;
                            }
                            z = true;
                        } else {
                            int i21 = layoutParams.topMargin + paddingTop;
                            if (i11 != -1) {
                                z = true;
                                i21 += iArr[1] - i11;
                            } else {
                                z = true;
                            }
                            i14 = i21;
                        }
                        if (hasDividerBeforeChildAt(i19)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i22 = layoutParams.leftMargin + paddingLeft;
                        i7 = paddingTop;
                        setChildFrame(virtualChildAt, i22 + getLocationOffset(virtualChildAt), i14, measuredWidth, measuredHeight);
                        int nextLocationOffset = i22 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        i18 = i10 + getChildrenSkipCount(virtualChildAt, i19);
                        paddingLeft = nextLocationOffset;
                        i18++;
                        z3 = z;
                        virtualChildCount = i8;
                        i17 = i9;
                        paddingTop = i7;
                    }
                } else {
                    i10 = i18;
                    i8 = virtualChildCount;
                }
                i11 = -1;
                i12 = layoutParams.gravity;
                if (i12 < 0) {
                }
                i13 = i12 & 112;
                i9 = i17;
                if (i13 != 16) {
                }
                if (hasDividerBeforeChildAt(i19)) {
                }
                int i222 = layoutParams.leftMargin + paddingLeft;
                i7 = paddingTop;
                setChildFrame(virtualChildAt, i222 + getLocationOffset(virtualChildAt), i14, measuredWidth, measuredHeight);
                int nextLocationOffset2 = i222 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                i18 = i10 + getChildrenSkipCount(virtualChildAt, i19);
                paddingLeft = nextLocationOffset2;
                i18++;
                z3 = z;
                virtualChildCount = i8;
                i17 = i9;
                paddingTop = i7;
            } else {
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i17;
                z = true;
            }
            i18++;
            z3 = z;
            virtualChildCount = i8;
            i17 = i9;
            paddingTop = i7;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((8388615 & this.mGravity) != i2) {
            this.mGravity = i2 | (this.mGravity & (-8388616));
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }
}
