package com.tencent.taes.remote.api.search.listener;

import android.os.RemoteException;
import com.tencent.taes.remote.api.search.bean.PoiSearchResult;
import com.tencent.taes.remote.api.search.listener.IPoiSearchListener;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class PoiSearchListener {
    private IPoiSearchListener mInnerListener = new InnerListener(this);

    public abstract void onResult(String str, PoiSearchResult poiSearchResult);

    public IPoiSearchListener getInnerListener() {
        return this.mInnerListener;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerListener extends IPoiSearchListener.Stub {
        WeakReference<PoiSearchListener> mOuterListenerRef;

        public InnerListener(PoiSearchListener poiSearchListener) {
            if (poiSearchListener != null) {
                this.mOuterListenerRef = new WeakReference<>(poiSearchListener);
            }
        }

        @Override // com.tencent.taes.remote.api.search.listener.IPoiSearchListener
        public void onResult(String str, PoiSearchResult poiSearchResult) throws RemoteException {
            PoiSearchListener poiSearchListener = this.mOuterListenerRef != null ? this.mOuterListenerRef.get() : null;
            if (poiSearchListener != null) {
                poiSearchListener.onResult(str, poiSearchResult);
            }
        }
    }
}
