package com.tencent.car.wechatsdk.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ThreadUtils {
    private static Handler mBackHandler;
    private static Handler sUIHandler = new Handler(Looper.getMainLooper());
    private static HandlerThread mBackThread = new HandlerThread("back");

    static {
        mBackThread.start();
        mBackHandler = new Handler(mBackThread.getLooper());
    }

    public static void runOnUIThread(Runnable runnable) {
        runOnUIThread(runnable, 0L);
    }

    public static void runOnUIThread(Runnable runnable, long j) {
        if (runnable != null) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread() && j == 0) {
                runnable.run();
            } else {
                sUIHandler.postDelayed(runnable, j);
            }
        }
    }

    public static void post(Runnable runnable) {
        sUIHandler.post(runnable);
    }

    public static void removeUIThreadCallback(Runnable runnable) {
        sUIHandler.removeCallbacks(runnable);
    }

    public static void runOnBackThread(Runnable runnable) {
        runOnBackThread(runnable, 0L);
    }

    public static void runOnBackThread(Runnable runnable, long j) {
        if (runnable != null) {
            if (Thread.currentThread() == mBackThread && j == 0) {
                runnable.run();
            } else {
                mBackHandler.postDelayed(runnable, j);
            }
        }
    }

    public static void removeBackThreadCallback(Runnable runnable) {
        mBackHandler.removeCallbacks(runnable);
    }

    public static boolean isOnUIThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static void assertUIThread(String str) {
        if (isOnUIThread()) {
            return;
        }
        throw new AssertionError(str + " should be called on UI thread");
    }
}
