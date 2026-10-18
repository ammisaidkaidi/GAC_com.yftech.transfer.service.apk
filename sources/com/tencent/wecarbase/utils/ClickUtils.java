package com.tencent.wecarbase.utils;

import android.os.SystemClock;

/* loaded from: /home/user/work/dex/classes.dex */
public class ClickUtils {
    public static final int MIN_CLICK_DELAY_TIME = 500;
    private static long lastClickTime;

    public static boolean isSingleClick() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - lastClickTime <= 500) {
            return false;
        }
        lastClickTime = elapsedRealtime;
        return true;
    }

    public static boolean isNormalClick() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - lastClickTime <= 250) {
            return false;
        }
        lastClickTime = elapsedRealtime;
        return true;
    }
}
