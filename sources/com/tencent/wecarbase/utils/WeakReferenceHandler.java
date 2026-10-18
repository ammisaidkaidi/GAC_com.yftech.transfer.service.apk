package com.tencent.wecarbase.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeakReferenceHandler extends Handler {
    private WeakReference<Handler.Callback> mWeakReferCallBack;

    public WeakReferenceHandler(Handler.Callback callback) {
        this.mWeakReferCallBack = new WeakReference<>(callback);
    }

    public WeakReferenceHandler(Looper looper, Handler.Callback callback) {
        super(looper);
        this.mWeakReferCallBack = new WeakReference<>(callback);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Handler.Callback callback = this.mWeakReferCallBack.get();
        if (callback != null) {
            callback.handleMessage(message);
            return;
        }
        LogUtils.d("WeakReferenceHandler", "handleMessage cb is null! handler = " + this);
    }

    @Override // android.os.Handler
    public String toString() {
        Handler.Callback callback = this.mWeakReferCallBack.get();
        StringBuilder sb = new StringBuilder();
        sb.append("WH");
        sb.append(callback != null ? callback.toString() : "None callback");
        return sb.toString();
    }
}
