package com.tencent.wecarbase.taibaseui;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.tencent.wecarbase.utils.AppResourcesUtils;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class PageIndicator extends RadioGroup implements CompoundButton.OnCheckedChangeListener {
    private OnPageSelectListener mListener;
    private ViewPager.OnPageChangeListener mOnPageChangeListener;
    private int mPageCount;
    private boolean mSelectable;
    private ViewPager mViewPager;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnPageSelectListener {
        void onPageSelected(int i);
    }

    public PageIndicator(Context context) {
        super(context);
        this.mSelectable = true;
        this.mPageCount = 0;
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.tencent.wecarbase.taibaseui.PageIndicator.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                PageIndicator.this.selectPage(i);
            }
        };
        init(context);
    }

    public PageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSelectable = true;
        this.mPageCount = 0;
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.tencent.wecarbase.taibaseui.PageIndicator.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                PageIndicator.this.selectPage(i);
            }
        };
        init(context);
    }

    private void init(Context context) {
        setOrientation(0);
        setGravity(17);
    }

    public void setSelectable(boolean z) {
        this.mSelectable = z;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof RadioButton) {
                ((RadioButton) childAt).setEnabled(this.mSelectable);
            }
        }
    }

    public boolean getSelectable() {
        return this.mSelectable;
    }

    public void setViewPager(ViewPager viewPager) {
        this.mViewPager = viewPager;
        if (this.mViewPager != null) {
            this.mViewPager.setOnPageChangeListener(this.mOnPageChangeListener);
            setPageCount(this.mViewPager.getAdapter().getCount());
            selectPage(0);
        }
    }

    public void setOnPageSelectListener(OnPageSelectListener onPageSelectListener) {
        this.mListener = onPageSelectListener;
    }

    public void setPageCount(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("page count must > 0");
        }
        if (i == this.mPageCount) {
            return;
        }
        if (i < this.mPageCount) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                removeViewAt(childCount);
                this.mPageCount--;
                if (i == this.mPageCount) {
                    break;
                }
            }
        } else {
            for (int i2 = 0; i2 < i - this.mPageCount; i2++) {
                RadioButton createRadioButton = createRadioButton();
                RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(10, 10);
                layoutParams.setMargins(10, 0, 10, 0);
                createRadioButton.setOnCheckedChangeListener(this);
                addView(createRadioButton, layoutParams);
            }
        }
        this.mPageCount = i;
        requestLayout();
    }

    public void selectPage(int i) {
        if (i < 0 || i >= getChildCount()) {
            return;
        }
        ((RadioButton) getChildAt(i)).setChecked(true);
    }

    public RadioButton createRadioButton() {
        return (RadioButton) LayoutInflater.from(getContext()).inflate(AppResourcesUtils.getSdkId("wbsdk_page_indicator", "layout"), (ViewGroup) this, false);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.mSelectable && z) {
            for (int i = 0; i < getChildCount(); i++) {
                if (compoundButton == getChildAt(i)) {
                    LogUtils.d("page", "check page = " + i);
                    if (this.mViewPager != null) {
                        this.mViewPager.setCurrentItem(i, true);
                    }
                    if (this.mListener != null) {
                        this.mListener.onPageSelected(i);
                        return;
                    }
                    return;
                }
            }
        }
    }
}
