package com.tencent.taiutils;

import android.content.Context;
import android.view.WindowManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class ScreenUtils {
    public ScreenUtils() {
        throw new AssertionError();
    }

    public static float dpToPx(Context context, float f) {
        if (context == null) {
            return -1.0f;
        }
        return f * context.getResources().getDisplayMetrics().density;
    }

    public static int dpToPxInt(Context context, float f) {
        return (int) (dpToPx(context, f) + 0.5f);
    }

    public static float getDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int getDensityDpi(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static int getDisplayHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getDisplayWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getPixelSize(Context context, int i) {
        return context.getResources().getDimensionPixelSize(i);
    }

    public static int getScreenRotation(Context context) {
        switch (((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return -90;
            default:
                return 0;
        }
    }

    public static int getStatusHeight(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static float pxToDp(Context context, float f) {
        if (context == null) {
            return -1.0f;
        }
        return f / context.getResources().getDisplayMetrics().density;
    }

    public static int pxToDpInt(Context context, float f) {
        return (int) (pxToDp(context, f) + 0.5f);
    }
}
