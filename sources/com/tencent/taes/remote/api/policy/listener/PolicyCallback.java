package com.tencent.taes.remote.api.policy.listener;

import android.os.RemoteException;
import com.tencent.taes.remote.api.policy.listener.IPolicyListener;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class PolicyCallback {
    private IPolicyListener mInnerListener = new InnerListener(this);

    public abstract void onNotify(int i, int i2, int i3);

    public IPolicyListener getInnerListener() {
        return this.mInnerListener;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerListener extends IPolicyListener.Stub {
        WeakReference<PolicyCallback> mOuterListenerRef;

        public InnerListener(PolicyCallback policyCallback) {
            if (policyCallback != null) {
                this.mOuterListenerRef = new WeakReference<>(policyCallback);
            }
        }

        @Override // com.tencent.taes.remote.api.policy.listener.IPolicyListener
        public void onNotify(int i, int i2, int i3) throws RemoteException {
            PolicyCallback policyCallback = this.mOuterListenerRef == null ? null : this.mOuterListenerRef.get();
            if (policyCallback != null) {
                policyCallback.onNotify(i, i2, i3);
            }
        }
    }
}
