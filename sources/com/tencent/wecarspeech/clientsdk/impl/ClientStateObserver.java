package com.tencent.wecarspeech.clientsdk.impl;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: /home/user/work/dex/classes.dex */
public class ClientStateObserver {
    private int mActivityCount = 0;
    private Application mContext;
    private OnFrontStateListener mStateListener;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnFrontStateListener {
        void onStateChanged(boolean z);
    }

    static /* synthetic */ int access$008(ClientStateObserver clientStateObserver) {
        int i = clientStateObserver.mActivityCount;
        clientStateObserver.mActivityCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$010(ClientStateObserver clientStateObserver) {
        int i = clientStateObserver.mActivityCount;
        clientStateObserver.mActivityCount = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ClientStateObserver(Application application) {
        this.mContext = application;
        registerLifecycleCallbacks();
    }

    public void startObserve(OnFrontStateListener onFrontStateListener) {
        this.mStateListener = onFrontStateListener;
        checkInFront();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInFront() {
        boolean z = this.mActivityCount > 0;
        if (this.mStateListener != null) {
            this.mStateListener.onStateChanged(z);
        }
    }

    private void registerLifecycleCallbacks() {
        this.mContext.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.tencent.wecarspeech.clientsdk.impl.ClientStateObserver.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                ClientStateObserver.access$008(ClientStateObserver.this);
                ClientStateObserver.this.checkInFront();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                ClientStateObserver.access$010(ClientStateObserver.this);
                ClientStateObserver.this.checkInFront();
            }
        });
    }
}
