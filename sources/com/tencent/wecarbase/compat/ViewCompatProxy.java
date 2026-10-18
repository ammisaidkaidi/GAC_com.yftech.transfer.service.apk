package com.tencent.wecarbase.compat;

import android.R;
import android.os.Build;
import android.support.v4.app.SupportActivity;
import android.support.v4.view.ViewCompat;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public class ViewCompatProxy {
    public static int getWindowOverlayType() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2003;
    }

    public static void setFitsSystemWindows(SupportActivity supportActivity, boolean z) {
        ViewCompat.setFitsSystemWindows(((ViewGroup) supportActivity.findViewById(R.id.content)).getChildAt(0), z);
    }
}
