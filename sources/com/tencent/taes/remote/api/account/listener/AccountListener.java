package com.tencent.taes.remote.api.account.listener;

import android.os.RemoteException;
import android.util.Log;
import com.tencent.taes.remote.api.account.bean.WeCarAccount;
import com.tencent.taes.remote.api.account.listener.IAccountListener;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AccountListener {
    private static String TAG = "AccountListener";
    private IAccountListener mInnerListener = new InnerListener(this);

    public abstract void onError(int i);

    public abstract void onSuccess(WeCarAccount weCarAccount);

    public IAccountListener getInnerListener() {
        return this.mInnerListener;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerListener extends IAccountListener.Stub {
        WeakReference<AccountListener> mOuterListenerRef;

        public InnerListener(AccountListener accountListener) {
            if (accountListener != null) {
                this.mOuterListenerRef = new WeakReference<>(accountListener);
            }
        }

        @Override // com.tencent.taes.remote.api.account.listener.IAccountListener
        public void onSuccess(WeCarAccount weCarAccount) throws RemoteException {
            AccountListener accountListener = this.mOuterListenerRef == null ? null : this.mOuterListenerRef.get();
            Log.d(AccountListener.TAG, "onSuccess, listener = " + accountListener + ", account = " + weCarAccount);
            if (accountListener != null) {
                accountListener.onSuccess(weCarAccount);
            }
        }

        @Override // com.tencent.taes.remote.api.account.listener.IAccountListener
        public void onError(int i) throws RemoteException {
            AccountListener accountListener = this.mOuterListenerRef == null ? null : this.mOuterListenerRef.get();
            Log.d(AccountListener.TAG, "onError, listener = " + accountListener + ", error = " + i);
            if (accountListener != null) {
                accountListener.onError(i);
            }
        }
    }
}
