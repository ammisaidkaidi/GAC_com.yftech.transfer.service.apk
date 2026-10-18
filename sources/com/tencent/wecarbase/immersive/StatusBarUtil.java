package com.tencent.wecarbase.immersive;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.utils.LogUtils;
import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class StatusBarUtil {
    public static final String TAG = "StatusBarUtil";
    private static float appDensity = 0.0f;
    private static float appScaleDensity = 0.0f;
    private static boolean hasSetDensity = false;
    private static DisplayMetrics mAppDisplayMetrics = null;
    private static String mImmersive = "0";
    private static int mNavigationBarHeight;
    private static float mScaledTimes;
    private static int mStatusBarHeight;

    public static void setStatusBarColor(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(i);
        } else if (Build.VERSION.SDK_INT >= 19) {
            setTranslucentStatus(activity);
            SystemBarTintManager systemBarTintManager = new SystemBarTintManager(activity);
            systemBarTintManager.setStatusBarTintEnabled(true);
            systemBarTintManager.setStatusBarTintColor(i);
        }
    }

    @TargetApi(19)
    public static void setTranslucentStatus(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = activity.getWindow();
            window.getDecorView().setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            Window window2 = activity.getWindow();
            WindowManager.LayoutParams attributes = window2.getAttributes();
            attributes.flags = 67108864 | attributes.flags;
            window2.setAttributes(attributes);
        }
    }

    public static void setRootViewFitsSystemWindows(Activity activity, boolean z) {
        ViewGroup viewGroup;
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup viewGroup2 = (ViewGroup) activity.findViewById(R.id.content);
            if (viewGroup2.getChildCount() <= 0 || (viewGroup = (ViewGroup) viewGroup2.getChildAt(0)) == null) {
                return;
            }
            viewGroup.setFitsSystemWindows(z);
        }
    }

    public static boolean setStatusBarDarkTheme(Activity activity, boolean z) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT < 23) {
            return false;
        }
        setStatusBarFontIconDark(activity, z);
        return true;
    }

    public static boolean setStatusBarFontIconDark(Activity activity, boolean z) {
        return setCommonUI(activity, z);
    }

    public static boolean setCommonUI(Activity activity, boolean z) {
        View decorView;
        if (Build.VERSION.SDK_INT < 23 || (decorView = activity.getWindow().getDecorView()) == null) {
            return false;
        }
        int systemUiVisibility = decorView.getSystemUiVisibility();
        int i = z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193);
        if (decorView.getSystemUiVisibility() == i) {
            return true;
        }
        decorView.setSystemUiVisibility(i);
        return true;
    }

    public static int getStatusBarHeight(Context context) {
        if (mStatusBarHeight == 0 && !hasSetDensity) {
            mStatusBarHeight = 0;
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                mStatusBarHeight = context.getResources().getDimensionPixelSize(identifier);
            } else {
                mStatusBarHeight = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height_portrait", "dimen", "android"));
            }
        }
        return mStatusBarHeight;
    }

    public static void setImmersive(Window window) {
        if (isImmersive() && window != null && Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            window.addFlags(134217728);
        } else if (window != null) {
            window.addFlags(1024);
        }
    }

    public static int getNavigationBarHeight(Context context) {
        if (mNavigationBarHeight == 0 && !hasSetDensity && context.getResources().getIdentifier("config_showNavigationBar", "bool", "android") != 0) {
            mNavigationBarHeight = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
        }
        return mNavigationBarHeight;
    }

    public static boolean isNavigationBarShow(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        int screenOrientation = ScreenUtil.getScreenOrientation();
        LogUtils.i(TAG, "orientation=" + screenOrientation + ". realSize=" + point2 + ", size=" + point);
        if (screenOrientation == 2) {
            if (point2.x <= point.x) {
                return false;
            }
        } else if (point2.y <= point.y) {
            return false;
        }
        return true;
    }

    public static int getSoftKeyHeightIfVisible(Context context) {
        if (isNavigationBarShow(context)) {
            return getNavigationBarHeight(context);
        }
        return 0;
    }

    public static DisplayMetrics getRealDisplay(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    public static int getScreenHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i = point.y;
        int height = defaultDisplay.getHeight();
        int navigationBarHeight = getNavigationBarHeight(context);
        LogUtils.i(TAG, "realSize.y=" + i + ", display.getHeight=" + height + ", navigationBarHeight=" + navigationBarHeight + ", display.getHeight+navigationBarHeight=" + (height + navigationBarHeight));
        return i;
    }

    public static int getScreenWidth(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i = point.x;
        int width = defaultDisplay.getWidth();
        int width2 = defaultDisplay.getWidth();
        if (ScreenUtil.getScreenOrientation() == 2) {
            width2 -= getSoftKeyHeightIfVisible(context);
        }
        LogUtils.i(TAG, "realSize.x=" + i + ", display.getWidth=" + width + ", display.getWidth-navigationBarH=" + width2);
        return i;
    }

    public static synchronized void setCustomAppDensity(Application application) {
        synchronized (StatusBarUtil.class) {
            LogUtils.i(TAG, "application=" + application);
            Context applicationContext = application.getApplicationContext();
            int screenWidth = getScreenWidth(applicationContext);
            float screenHeight = (float) getScreenHeight(applicationContext);
            LogUtils.i(TAG, "screenWidth=" + screenWidth + ", sceenHeight=" + screenHeight);
            mAppDisplayMetrics = application.getResources().getDisplayMetrics();
            LogUtils.i(TAG, "Before. appDisplayMetrics=" + mAppDisplayMetrics.getClass().getSuperclass().hashCode() + "\n" + mAppDisplayMetrics + "\n density=" + mAppDisplayMetrics.density + " scaledDensity=" + mAppDisplayMetrics.scaledDensity + " densityDpi=" + mAppDisplayMetrics.densityDpi);
            if (!hasSetDensity) {
                int statusBarHeight = getStatusBarHeight(applicationContext);
                if (isImmersive()) {
                    float f = screenHeight - (statusBarHeight * 4);
                    int softKeyHeightIfVisible = getSoftKeyHeightIfVisible(applicationContext);
                    int screenOrientation = ScreenUtil.getScreenOrientation();
                    LogUtils.i(TAG, "statusBarH=" + statusBarHeight + ", navigationBarH=" + softKeyHeightIfVisible + ", orientation=" + screenOrientation);
                    if (screenOrientation == 1) {
                        f -= softKeyHeightIfVisible;
                    }
                    float f2 = f / screenHeight;
                    LogUtils.i(TAG, "displayHeight=" + f + " scaledTimes=" + f2);
                    float f3 = mAppDisplayMetrics.density * f2;
                    float f4 = mAppDisplayMetrics.scaledDensity * f2;
                    float f5 = f2 * ((float) mAppDisplayMetrics.densityDpi);
                    mAppDisplayMetrics.density = f3;
                    mAppDisplayMetrics.scaledDensity = f4;
                    mAppDisplayMetrics.densityDpi = (int) f5;
                }
                hasSetDensity = true;
            }
            LogUtils.i(TAG, "After. appDisplayMetrics=" + mAppDisplayMetrics.getClass().getSuperclass().hashCode() + "\n" + mAppDisplayMetrics + "\n density=" + mAppDisplayMetrics.density + " scaledDensity=" + mAppDisplayMetrics.scaledDensity + " densityDpi=" + mAppDisplayMetrics.densityDpi);
        }
    }

    public static float getScaledTimes() {
        float f;
        if (mScaledTimes == 0.0f) {
            Context context = ContextHolder.getContext();
            int screenWidth = getScreenWidth(context);
            float screenHeight = getScreenHeight(context);
            LogUtils.i(TAG, "screenWidth=" + screenWidth + ", screenHeight=" + screenHeight);
            int statusBarHeight = getStatusBarHeight(context);
            int screenOrientation = ScreenUtil.getScreenOrientation();
            if (isImmersive() && screenOrientation == 2) {
                f = screenHeight - statusBarHeight;
                LogUtils.i(TAG, "statusBarH=" + statusBarHeight + ", navigationBarH=" + getSoftKeyHeightIfVisible(context) + ", orientation=" + screenOrientation);
                StringBuilder sb = new StringBuilder();
                sb.append("displayHeight=");
                sb.append(f);
                LogUtils.i(TAG, sb.toString());
            } else {
                f = screenHeight;
            }
            mScaledTimes = f / screenHeight;
        }
        LogUtils.i(TAG, "mScaledTimes=" + mScaledTimes);
        return mScaledTimes;
    }

    public static DisplayMetrics getAppDisplayMetrics() {
        if (mAppDisplayMetrics == null) {
            mAppDisplayMetrics = ContextHolder.getContext().getResources().getDisplayMetrics();
            LogUtils.i(TAG, "getAppDisplayMetrics. appDisplayMetrics=" + mAppDisplayMetrics.getClass().getSuperclass().hashCode() + "\n" + mAppDisplayMetrics + "\n density=" + mAppDisplayMetrics.density + " scaledDensity=" + mAppDisplayMetrics.scaledDensity + " densityDpi=" + mAppDisplayMetrics.densityDpi);
        }
        return mAppDisplayMetrics;
    }

    public static boolean isImmersive() {
        return (TextUtils.equals(mImmersive, CarAppList.MediaPage.PAGE_FM) || TextUtils.isEmpty(mImmersive)) ? false : true;
    }

    public static void setImmersive(String str) {
        mImmersive = str;
    }

    public static void setAppDensity(final Application application) {
        final Resources resources = application.getResources();
        final DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (appDensity == 0.0f) {
            appDensity = displayMetrics.density;
            appScaleDensity = displayMetrics.scaledDensity;
            application.registerComponentCallbacks(new ComponentCallbacks() { // from class: com.tencent.wecarbase.immersive.StatusBarUtil.1
                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration configuration) {
                    if (configuration == null || configuration.fontScale <= 0.0f) {
                        return;
                    }
                    float unused = StatusBarUtil.appScaleDensity = resources.getDisplayMetrics().scaledDensity;
                    StatusBarUtil.setCustomDensity(application.getApplicationContext(), displayMetrics);
                }
            });
        }
        setCustomDensity(application.getApplicationContext(), displayMetrics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setCustomDensity(Context context, DisplayMetrics displayMetrics) {
        float scaledTimes = getScaledTimes() * appDensity;
        float f = (appScaleDensity / appDensity) * scaledTimes;
        int i = (int) (160.0f * scaledTimes);
        LogUtils.i(TAG, "targetDensity=" + scaledTimes + " targetScaleDensity=" + f + " targetDensityDpi=" + i);
        displayMetrics.density = scaledTimes;
        displayMetrics.scaledDensity = f;
        displayMetrics.densityDpi = i;
        Configuration configuration = context.getResources().getConfiguration();
        configuration.densityDpi = i;
        context.createConfigurationContext(configuration);
    }

    public static int getPaddingTop(Context context) {
        if (isImmersive()) {
            return getStatusBarHeight(context);
        }
        return 0;
    }

    public static int getPaddingBottom(Context context) {
        if (isImmersive() && ScreenUtil.getScreenOrientation() == 1) {
            return getSoftKeyHeightIfVisible(context);
        }
        return 0;
    }

    public static int getPaddingRight(Context context) {
        if (isImmersive() && ScreenUtil.getScreenOrientation() == 2) {
            return getSoftKeyHeightIfVisible(context);
        }
        return 0;
    }
}
