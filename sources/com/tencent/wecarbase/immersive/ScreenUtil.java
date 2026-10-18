package com.tencent.wecarbase.immersive;

import android.content.Context;
import android.util.DisplayMetrics;
import com.tencent.wecarbase.common.ContextHolder;

/* loaded from: /home/user/work/dex/classes.dex */
public class ScreenUtil {
    private static int mDPI;
    private static float mDensity;
    private static int mHeightPixels;
    private static float mMapDensity;
    private static int mStatusBarHeight;
    private static int mWidthPixels;

    private static Context getContext() {
        Context context = ContextHolder.getContext();
        if (context != null) {
            return context;
        }
        throw new RuntimeException("the context in TNSdkManager is null ,you may have not init the SDK");
    }

    public static float getDensity() {
        Context context;
        if (mDensity == 0.0f && (context = getContext()) != null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            mDensity = displayMetrics.density;
            mDPI = displayMetrics.densityDpi;
            mHeightPixels = displayMetrics.heightPixels;
            mWidthPixels = displayMetrics.widthPixels;
        }
        return mDensity;
    }

    public static boolean isHDPI() {
        return getMapDensity() > 2.0f;
    }

    public static float getMapDensity() {
        if (mMapDensity == 0.0f) {
            initMapDensity();
        }
        return mMapDensity * 1.5f;
    }

    public static float initMapDensity() {
        Context context;
        if (mMapDensity == 0.0f && (context = getContext()) != null) {
            mMapDensity = context.getResources().getDisplayMetrics().density;
        }
        return mMapDensity;
    }

    public static int getDPI() {
        Context context;
        if (mDPI == 0 && (context = getContext()) != null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            mDensity = displayMetrics.density;
            mDPI = displayMetrics.densityDpi;
        }
        return mDPI;
    }

    public static int getWidthPixels() {
        Context context;
        if (mWidthPixels == 0 && (context = getContext()) != null) {
            mWidthPixels = context.getResources().getDisplayMetrics().widthPixels;
        }
        return mWidthPixels;
    }

    public static int getHeightPixels() {
        Context context;
        if (mHeightPixels == 0 && (context = getContext()) != null) {
            mHeightPixels = context.getResources().getDisplayMetrics().heightPixels;
        }
        return mHeightPixels;
    }

    public static int getStatusBarHeight() {
        Context context;
        if (mStatusBarHeight == 0 && (context = getContext()) != null) {
            try {
                Class<?> cls = Class.forName("com.android.internal.R$dimen");
                mStatusBarHeight = context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
            } catch (Throwable unused) {
            }
        }
        return mStatusBarHeight;
    }

    public static int dip2px(int i) {
        return (int) ((getDensity() * i) + 0.5f);
    }

    public static int px2dip(int i) {
        float density = getDensity();
        if (density == 0.0f) {
            density = 1.0f;
        }
        return (int) ((i / density) + 0.5f);
    }

    public static int dip2px(float f) {
        return (int) ((getDensity() * f) + 0.5f);
    }

    public static int px2dip(float f) {
        float density = getDensity();
        if (density == 0.0f) {
            density = 1.0f;
        }
        return (int) ((f / density) + 0.5f);
    }

    public static int percentHeight(float f) {
        return (int) (f * getHeightPixels());
    }

    public static int percentWidth(float f) {
        return (int) (f * getWidthPixels());
    }

    public static int getScreenOrientation() {
        if (getContext() != null) {
            return getContext().getResources().getConfiguration().orientation;
        }
        return 0;
    }
}
