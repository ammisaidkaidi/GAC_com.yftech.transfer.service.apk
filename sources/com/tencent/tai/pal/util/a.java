package com.tencent.tai.pal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* compiled from: ThreadUtils.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* compiled from: ThreadUtils.java */
    /* renamed from: com.tencent.tai.pal.util.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class C0042a {

        /* renamed from: a, reason: collision with root package name */
        private static final Handler f154a = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThreadUtils.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private static Handler f155a;

        static {
            HandlerThread handlerThread = new HandlerThread("PAL_WORKER_THREAD");
            handlerThread.start();
            f155a = new Handler(handlerThread.getLooper());
        }
    }

    public static void a(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            C0042a.f154a.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(Runnable runnable) {
        a(runnable, 0L);
    }

    public static void a(Runnable runnable, long j) {
        b.f155a.removeCallbacks(runnable);
        if (j <= 0) {
            if (Looper.myLooper() != b.f155a.getLooper()) {
                b.f155a.post(runnable);
                return;
            } else {
                runnable.run();
                return;
            }
        }
        b.f155a.postDelayed(runnable, j);
    }
}
