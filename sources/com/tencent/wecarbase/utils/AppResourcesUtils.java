package com.tencent.wecarbase.utils;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.wecarbase.common.ContextHolder;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppResourcesUtils {
    public static final String RS_COLOR = "color";
    public static final String RS_DRAWABLE = "drawable";
    public static final String RS_STRING = "string";
    public static final String SUFFIX_NIGHT_MODEL = "_night";
    public static final String SUFFIX_PRESS_MODEL = "_press";
    private static final String TAG = "AppResourcesUtils";
    private static Context mContext;
    private static LayoutInflater mInflater;
    private static String mPackageName;
    private static Resources mResources;
    private static SkinStyle mStyle = SkinStyle.DAY;
    private static SparseIntArray mResIdMap = new SparseIntArray();
    private static SparseIntArray mResIdInPressMap = new SparseIntArray();

    public static void init(Context context) {
        mContext = context.getApplicationContext();
        mResources = mContext.getResources();
        mPackageName = mContext.getPackageName();
        mInflater = LayoutInflater.from(mContext);
    }

    public static int getSdkId(String str, String str2) {
        return getId(getContext(), str, str2, mPackageName);
    }

    public static int getId(Context context, String str, String str2, String str3) {
        if (context == null) {
            LogUtils.e(TAG, "getId  name:" + str + "-type:" + str2 + " -packageName:" + str3);
            return 0;
        }
        return context.getResources().getIdentifier(str, str2, str3);
    }

    public static final int[] getStyleableIntArray(String str) {
        try {
            if (getContext() == null) {
                return null;
            }
            return (int[]) Class.forName(mPackageName + ".R$styleable").getDeclaredField(str).get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final int getStyleableIntArrayIndex(String str) {
        try {
            if (getContext() == null) {
                return 0;
            }
            return ((Integer) Class.forName(mPackageName + ".R$styleable").getDeclaredField(str).get(null)).intValue();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static Context getContext() {
        return mContext == null ? ContextHolder.getContext() : mContext;
    }

    private static void setStyle(SkinStyle skinStyle) {
        mResIdMap.clear();
        mResIdInPressMap.clear();
        mStyle = skinStyle;
    }

    public static SkinStyle getStyle() {
        return mStyle;
    }

    public static void clearCacheResId() {
        mResIdMap.clear();
        mResIdInPressMap.clear();
    }

    private static String getResourceNameById(int i) {
        if (mResources == null) {
            return "";
        }
        try {
            return mResources.getResourceEntryName(i);
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    public static Drawable getDrawable(int i) {
        return getDrawable(i, mStyle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        if (r5 == 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Drawable getDrawable(int i, SkinStyle skinStyle) {
        if (mResources == null || skinStyle == null) {
            return null;
        }
        if (skinStyle == SkinStyle.NIGHT) {
            int i2 = mResIdMap.get(i, -1);
            if (i2 == -1) {
                i2 = mResources.getIdentifier(getResourceNameById(i) + SUFFIX_NIGHT_MODEL, RS_DRAWABLE, mPackageName);
                if (i2 != 0) {
                    mResIdMap.put(i, i2);
                }
            }
            i = i2;
        }
        try {
            return mResources.getDrawable(i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int getInteger(int i) {
        if (mResources == null) {
            return 0;
        }
        return mResources.getInteger(i);
    }

    public static int getColor(int i) {
        return getColor(i, mStyle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        if (r5 == 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int getColor(int i, SkinStyle skinStyle) {
        if (mResources == null) {
            return 0;
        }
        if (skinStyle == SkinStyle.NIGHT) {
            int i2 = mResIdMap.get(i, -1);
            if (i2 == -1) {
                i2 = mResources.getIdentifier(getResourceNameById(i) + SUFFIX_NIGHT_MODEL, RS_COLOR, mPackageName);
                if (i2 != 0) {
                    mResIdMap.put(i, i2);
                }
            }
            i = i2;
        }
        try {
            return mResources.getColor(i);
        } catch (Resources.NotFoundException unused) {
            return 0;
        }
    }

    public static String getString(int i) {
        if (mResources == null) {
            return "";
        }
        try {
            return mResources.getString(i);
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    public static String getString(int i, Object... objArr) {
        if (mResources == null) {
            return "";
        }
        try {
            return mResources.getString(i, objArr);
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    public static int getDimension(int i) {
        if (mResources == null) {
            return 0;
        }
        try {
            return (int) mResources.getDimension(i);
        } catch (Resources.NotFoundException unused) {
            return 0;
        }
    }

    public static String[] getStringArray(int i) {
        if (mResources == null) {
            return null;
        }
        try {
            return mResources.getStringArray(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static boolean getBoolean(int i) {
        if (mResources == null) {
            return false;
        }
        try {
            return mResources.getBoolean(i);
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    public static ColorStateList getColorStateList(int i) {
        return getColorStateList(i, mStyle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
    
        if (r5 == 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList getColorStateList(int i, SkinStyle skinStyle) {
        if (getResources() == null) {
            return null;
        }
        if (skinStyle == SkinStyle.NIGHT) {
            int i2 = mResIdMap.get(i, -1);
            if (i2 == -1) {
                i2 = mResources.getIdentifier(getResourceNameById(i) + SUFFIX_NIGHT_MODEL, RS_DRAWABLE, mPackageName);
                if (i2 != 0) {
                    mResIdMap.put(i, i2);
                }
            }
            i = i2;
        }
        try {
            return mResources.getColorStateList(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static Resources getResources() {
        Context context;
        if (mResources == null && (context = ContextHolder.getContext()) != null) {
            mResources = context.getResources();
            mPackageName = context.getPackageName();
        }
        return mResources;
    }

    public static Bitmap getBitmap(int i) {
        if (mResources == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeResource(mResources, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static View inflate(int i, ViewGroup viewGroup) {
        return mInflater.inflate(i, viewGroup);
    }

    public static View inflate(int i, ViewGroup viewGroup, boolean z) {
        return mInflater.inflate(i, viewGroup, z);
    }

    public static Animation loadAnimation(int i) {
        return AnimationUtils.loadAnimation(getContext(), i);
    }

    public static Interpolator loadInterpolator(int i) {
        return AnimationUtils.loadInterpolator(getContext(), i);
    }

    public static LayoutAnimationController loadLayoutAnimation(int i) {
        return AnimationUtils.loadLayoutAnimation(getContext(), i);
    }

    public static void setBackground(View view, int i) {
        if (view == null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 16) {
            view.setBackground(getDrawable(i));
        } else {
            view.setBackgroundDrawable(getDrawable(i));
        }
    }

    public static void setImageSrc(ImageView imageView, int i) {
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(getDrawable(i));
    }

    public static void setProgressDrawableSrc(ProgressBar progressBar, int i) {
        if (progressBar == null) {
            return;
        }
        progressBar.setProgressDrawable(getDrawable(i));
    }

    public static void setTextColor(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        textView.setTextColor(getColor(i));
    }

    public static void setTextColor(Button button, int i) {
        if (button == null) {
            return;
        }
        button.setTextColor(getColor(i));
    }

    public static void setTextColorSelector(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        textView.setTextColor(getColorStateList(i));
    }

    public static void setBackgroundColor(View view, int i) {
        if (view == null) {
            return;
        }
        view.setBackgroundColor(getColor(i));
    }

    public static void setHintTextColor(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        textView.setHintTextColor(getColor(i));
    }

    public static void setColorFilter(ImageView imageView, int i) {
        imageView.setColorFilter(getColor(i));
    }

    public static Drawable getDrawable(String str) {
        String str2;
        if (mResources == null || TextUtils.isEmpty(str)) {
            return null;
        }
        if (mStyle == SkinStyle.NIGHT) {
            str2 = str + SUFFIX_NIGHT_MODEL;
        } else {
            str2 = str;
        }
        int identifier = mResources.getIdentifier(str2, RS_DRAWABLE, mPackageName);
        if (identifier == 0) {
            identifier = mResources.getIdentifier(str, RS_DRAWABLE, mPackageName);
        }
        try {
            return mResources.getDrawable(identifier);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getString(String str) {
        if (mResources == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return mResources.getString(mResources.getIdentifier(str, RS_STRING, mPackageName));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int dp2px(int i) {
        try {
            mResources = getResources();
            if (mResources != null) {
                return (int) TypedValue.applyDimension(1, i, mResources.getDisplayMetrics());
            }
            mContext = ContextHolder.getContext();
            if (mContext != null) {
                mResources = mContext.getResources();
            }
            if (mResources != null) {
                return (int) TypedValue.applyDimension(1, i, mResources.getDisplayMetrics());
            }
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return 0;
        }
    }

    public static void setImageSelector(ImageView imageView, int i) {
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(getDrawableSelector(i, mStyle));
    }

    public static StateListDrawable getDrawableSelector(int i, SkinStyle skinStyle) {
        String str;
        Drawable drawable;
        if (mResources == null || skinStyle == null) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        try {
            String resourceNameById = getResourceNameById(i);
            if (skinStyle == SkinStyle.DAY) {
                str = resourceNameById + SUFFIX_PRESS_MODEL;
            } else {
                int i2 = mResIdMap.get(i, -1);
                if (i2 == -1 || i2 == 0) {
                    int identifier = mResources.getIdentifier(resourceNameById + SUFFIX_NIGHT_MODEL, RS_DRAWABLE, mPackageName);
                    int i3 = (identifier == 0 || identifier == -1) ? i : identifier;
                    mResIdMap.put(i, identifier);
                    i = i3;
                } else {
                    i = i2;
                }
                str = resourceNameById + SUFFIX_PRESS_MODEL + SUFFIX_NIGHT_MODEL;
            }
            int i4 = mResIdInPressMap.get(i);
            if (i4 == -1 || i4 == 0) {
                int identifier2 = mResources.getIdentifier(str, RS_DRAWABLE, mPackageName);
                if (identifier2 != 0 && identifier2 != -1) {
                    i4 = identifier2;
                    mResIdInPressMap.put(i, i4);
                }
                i4 = i;
                mResIdInPressMap.put(i, i4);
            }
            Drawable drawable2 = mResources.getDrawable(i);
            if (i4 == i) {
                drawable = drawable2.getConstantState().newDrawable().mutate();
                if (Build.VERSION.SDK_INT < 21) {
                    drawable = getDrawableWithSpecAlpha(drawable, 127);
                } else {
                    drawable.setAlpha(127);
                }
            } else {
                drawable = mResources.getDrawable(i4);
            }
            stateListDrawable.addState(new int[]{R.attr.state_pressed, R.attr.state_enabled}, drawable);
            stateListDrawable.addState(new int[]{R.attr.state_enabled}, drawable2);
            stateListDrawable.addState(new int[0], drawable2);
            return stateListDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Drawable getDrawableWithSpecAlpha(Drawable drawable, int i) {
        if (!(drawable instanceof BitmapDrawable)) {
            return drawable;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAlpha(i);
        canvas.drawBitmap(((BitmapDrawable) drawable).getBitmap(), 0.0f, 0.0f, paint);
        return new BitmapDrawable(getResources(), createBitmap);
    }
}
