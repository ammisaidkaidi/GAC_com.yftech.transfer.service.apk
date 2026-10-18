package com.tencent.wecarbase.client;

import android.os.RemoteException;
import com.tencent.wecarbase.IAccountListener;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.utils.LogUtils;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AccountListener {
    private static String TAG = "AccountListener";
    private IAccountListener mInnerListener = new InnerListener(this);

    public abstract void onError(int i);

    public abstract void onSuccess(WeCarAccount weCarAccount);

    /* JADX INFO: Access modifiers changed from: protected */
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

        @Override // com.tencent.wecarbase.IAccountListener
        public void onSuccess(WeCarAccount weCarAccount) throws RemoteException {
            AccountListener accountListener = this.mOuterListenerRef == null ? null : this.mOuterListenerRef.get();
            LogUtils.d(AccountListener.TAG, "onSuccess, listener = " + accountListener + ", account = " + weCarAccount);
            if (accountListener != null) {
                accountListener.onSuccess(weCarAccount);
            }
        }

        @Override // com.tencent.wecarbase.IAccountListener
        public void onError(int i) throws RemoteException {
            AccountListener accountListener = this.mOuterListenerRef == null ? null : this.mOuterListenerRef.get();
            LogUtils.d(AccountListener.TAG, "onError, listener = " + accountListener + ", error = " + i);
            if (accountListener != null) {
                accountListener.onError(i);
            }
        }
    }
}
