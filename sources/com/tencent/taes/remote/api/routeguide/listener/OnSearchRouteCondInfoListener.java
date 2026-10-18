package com.tencent.taes.remote.api.routeguide.listener;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.tencent.taes.remote.api.routeguide.IRouteGuideListener;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class OnSearchRouteCondInfoListener {
    private IRouteGuideListener mInnerListener = new InnerListener(this);

    public abstract void onRoadCondInfo(String str);

    public IRouteGuideListener getInnerListener() {
        return this.mInnerListener;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerListener extends IRouteGuideListener.Stub {
        private WeakReference<OnSearchRouteCondInfoListener> mOnSearchRouteCondInfoListenerRef;
        private final Handler mUIHandler = new Handler(Looper.getMainLooper());

        public InnerListener(OnSearchRouteCondInfoListener onSearchRouteCondInfoListener) {
            if (onSearchRouteCondInfoListener != null) {
                this.mOnSearchRouteCondInfoListenerRef = new WeakReference<>(onSearchRouteCondInfoListener);
            }
        }

        @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideListener
        public void onRoadCondInfo(final String str) throws RemoteException {
            final OnSearchRouteCondInfoListener onSearchRouteCondInfoListener = this.mOnSearchRouteCondInfoListenerRef != null ? this.mOnSearchRouteCondInfoListenerRef.get() : null;
            if (onSearchRouteCondInfoListener != null) {
                this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.api.routeguide.listener.OnSearchRouteCondInfoListener.InnerListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        onSearchRouteCondInfoListener.onRoadCondInfo(str);
                    }
                });
            }
        }
    }
}
