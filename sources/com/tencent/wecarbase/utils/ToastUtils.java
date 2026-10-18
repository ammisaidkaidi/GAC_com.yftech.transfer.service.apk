package com.tencent.wecarbase.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.widget.Toast;

/* loaded from: /home/user/work/dex/classes.dex */
public class ToastUtils {
    private ToastUtils() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    private static void showShortOnUiThread(final Activity activity, final CharSequence charSequence) {
        activity.runOnUiThread(new Runnable() { // from class: com.tencent.wecarbase.utils.ToastUtils.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(activity, charSequence, 0).show();
            }
        });
    }

    public static void showShort(Context context, CharSequence charSequence) {
        if (isMainThread()) {
            Toast.makeText(context, charSequence, 0).show();
        } else if (context instanceof Activity) {
            showShortOnUiThread((Activity) context, charSequence);
        }
    }

    public static void showLong(Context context, CharSequence charSequence) {
        if (isMainThread()) {
            Toast.makeText(context, charSequence, 1).show();
        } else if (context instanceof Activity) {
            showLongOnUiThread((Activity) context, charSequence);
        }
    }

    private static void showLongOnUiThread(final Activity activity, final CharSequence charSequence) {
        activity.runOnUiThread(new Runnable() { // from class: com.tencent.wecarbase.utils.ToastUtils.2
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(activity, charSequence, 1).show();
            }
        });
    }

    private static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
