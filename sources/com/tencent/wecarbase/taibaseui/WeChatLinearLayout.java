package com.tencent.wecarbase.taibaseui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.tencent.wecarbase.utils.Platform;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeChatLinearLayout extends LinearLayout {
    public WeChatLinearLayout(Context context) {
        super(context);
    }

    public WeChatLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WeChatLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        Platform platform = Platform.getPlatform();
        if (platform == Platform.PUFANGDA_MIRRO || platform == Platform.TUOTU_MIRRO) {
            int size = View.MeasureSpec.getSize(i);
            if (size >= 1280) {
                int i3 = size > 1280 ? 200 : 160;
                setPadding(i3, getPaddingTop(), i3, getPaddingBottom());
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), i2);
                return;
            } else {
                setPadding(0, getPaddingTop(), 0, getPaddingBottom());
                super.onMeasure(i, i2);
                return;
            }
        }
        super.onMeasure(i, i2);
    }
}
