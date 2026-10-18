package com.tencent.wecar.tts.larklite.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ThreadUtils {

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class MainThreadHandlerLazyHolder {
        private static final Handler sMainThreadHandler = new Handler(Looper.getMainLooper());

        private MainThreadHandlerLazyHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class WorkerThreadHandlerLazyHolder {
        private static Handler sWorkerThreadHandler;

        private WorkerThreadHandlerLazyHolder() {
        }

        static {
            HandlerThread handlerThread = new HandlerThread("TTS_WORKER_THREAD");
            handlerThread.start();
            sWorkerThreadHandler = new Handler(handlerThread.getLooper());
        }
    }

    public static void runOnUiThread(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            MainThreadHandlerLazyHolder.sMainThreadHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void runOnWorkerThread(Runnable runnable) {
        runOnWorkerThreadDelayed(runnable, 0L);
    }

    public static void runOnWorkerThreadDelayed(Runnable runnable, long j) {
        WorkerThreadHandlerLazyHolder.sWorkerThreadHandler.removeCallbacks(runnable);
        if (j <= 0) {
            if (Looper.myLooper() != WorkerThreadHandlerLazyHolder.sWorkerThreadHandler.getLooper()) {
                WorkerThreadHandlerLazyHolder.sWorkerThreadHandler.post(runnable);
                return;
            } else {
                runnable.run();
                return;
            }
        }
        WorkerThreadHandlerLazyHolder.sWorkerThreadHandler.postDelayed(runnable, j);
    }
}
