package com.tencent.wecar.tts.client;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.taes.remote.api.impl.tts.TtsRemoteApi;
import com.tencent.taes.remote.api.tts.ITtsApi;
import com.tencent.wecar.tts.log.TtsLog;
import com.tencent.wecar.tts.server.TtsService;

/* loaded from: /home/user/work/dex/classes.dex */
public final class TtsManagerInner {
    private static final String TAG = "TtsManagerInner";
    private volatile boolean mConnected;
    private final ServiceConnection mServiceConnection;
    private final TtsRemoteApi mTtsRemoteApi;

    private TtsManagerInner() {
        this.mTtsRemoteApi = new TtsRemoteApi();
        this.mServiceConnection = new ServiceConnection() { // from class: com.tencent.wecar.tts.client.TtsManagerInner.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                TtsLog.d(TtsManagerInner.TAG, "onServiceConnected: " + componentName);
                TtsManagerInner.this.mTtsRemoteApi.binderConnect(iBinder);
                TtsManagerInner.this.mConnected = true;
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                TtsLog.d(TtsManagerInner.TAG, "onServiceDisconnected: " + componentName);
                TtsManagerInner.this.mTtsRemoteApi.binderDisConnect();
                TtsManagerInner.this.mConnected = false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SingletonHolder {
        private static final TtsManagerInner INSTANCE = new TtsManagerInner();

        private SingletonHolder() {
        }
    }

    public static TtsManagerInner getInstance() {
        return SingletonHolder.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindService(Context context) {
        if (this.mConnected) {
            return;
        }
        context.bindService(new Intent(context, (Class<?>) TtsService.class), this.mServiceConnection, 1);
    }

    public ITtsApi getITtsApi() {
        return this.mTtsRemoteApi;
    }
}
