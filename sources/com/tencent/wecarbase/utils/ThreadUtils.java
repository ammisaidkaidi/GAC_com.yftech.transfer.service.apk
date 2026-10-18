package com.tencent.wecarbase.utils;

import android.os.Handler;
import android.os.Looper;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ThreadUtils {
    private static Thread sMainThread = Looper.getMainLooper().getThread();
    private static Handler sMainHandler = new Handler(Looper.getMainLooper());

    private ThreadUtils() {
    }

    public static void post(Runnable runnable) {
        sMainHandler.post(runnable);
    }

    public static void postDelayed(Runnable runnable, long j) {
        sMainHandler.postDelayed(runnable, j);
    }

    public static void removeCallbacks(Runnable runnable) {
        sMainHandler.removeCallbacks(runnable);
    }

    public static void runOnUiThread(Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    public static boolean isMainThread() {
        return sMainThread == Thread.currentThread();
    }

    public static Handler getMainHandler() {
        return sMainHandler;
    }
}
