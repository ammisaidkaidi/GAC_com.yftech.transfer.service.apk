package com.tencent.wecarbase.taibaseui.popupview;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPopupViewListener {
    void onAttachedToWindow();

    void onDetachedFromWindow();

    void onNegativeSelection(boolean z);

    void onPopupViewDismiss();

    void onPositiveSelection(boolean z);
}
