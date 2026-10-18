package com.tencent.taes.framework.server.connect;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.lang.reflect.Field;

/* loaded from: /home/user/work/dex/classes.dex */
public class SimpleThrottle {
    private static final long DEFAULT_TIME_WINDOW = 100;
    private static Handler sHandler = new Handler(Looper.getMainLooper()) { // from class: com.tencent.taes.framework.server.connect.SimpleThrottle.1
        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            Runnable runnable = (Runnable) SimpleThrottle.getDeclaredField(message, "callback");
            if (runnable instanceof EventRunnable) {
                ((EventRunnable) runnable).run(message.obj);
            } else {
                super.dispatchMessage(message);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class EventRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }

        public abstract void run(Object obj);
    }

    public static void onEvent(Runnable runnable) {
        onEvent(runnable, DEFAULT_TIME_WINDOW);
    }

    public static void onEvent(Runnable runnable, long j) {
        sHandler.removeCallbacks(runnable);
        sHandler.postDelayed(runnable, j);
    }

    public static void cancelEvent(Runnable runnable) {
        sHandler.removeCallbacks(runnable);
    }

    public static void onEvent(EventRunnable eventRunnable, Object obj) {
        onEvent(eventRunnable, obj, DEFAULT_TIME_WINDOW);
    }

    public static void onEvent(EventRunnable eventRunnable, Object obj, long j) {
        sHandler.removeCallbacks(eventRunnable, obj);
        postDelayed(eventRunnable, obj, j);
    }

    public static void cancelEvent(EventRunnable eventRunnable, Object obj) {
        sHandler.removeCallbacks(eventRunnable, obj);
    }

    private static boolean postDelayed(Runnable runnable, Object obj, long j) {
        if (j < 0) {
            j = 0;
        }
        return sHandler.postAtTime(runnable, obj, SystemClock.uptimeMillis() + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getDeclaredField(Object obj, String str) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
