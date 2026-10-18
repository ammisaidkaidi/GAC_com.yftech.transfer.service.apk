package com.tencent.wecarbase.common;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /home/user/work/dex/classes.dex */
public class BgHandler extends Handler {
    private WeakReference<Object> mObject;

    public BgHandler(String str) {
        this(str, 1);
    }

    public BgHandler(String str, Object obj) {
        this(str, 1);
        this.mObject = new WeakReference<>(obj);
    }

    public WeakReference<Object> getObject() {
        return this.mObject;
    }

    public BgHandler(String str, int i) {
        super(startHandlerThread(str, i).getLooper());
    }

    private static HandlerThread startHandlerThread(String str, int i) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        HandlerThread handlerThread = new HandlerThread(str, i) { // from class: com.tencent.wecarbase.common.BgHandler.1
            @Override // android.os.HandlerThread
            protected void onLooperPrepared() {
                atomicBoolean.compareAndSet(false, true);
            }
        };
        handlerThread.start();
        do {
        } while (!atomicBoolean.get());
        return handlerThread;
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        try {
            super.dispatchMessage(message);
        } catch (Throwable th) {
            Log.e("BgHandler", "Exception:" + Log.getStackTraceString(th));
        }
    }

    public void quit() {
        if (getLooper() != null) {
            getLooper().quit();
        }
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        return super.sendMessageAtTime(message, j);
    }
}
