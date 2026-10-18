package com.tencent.taes.impl.base;

import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseConnectApi<T extends IRegitsterConnectStateApi> extends AbstractApi implements IRegitsterConnectStateApi {
    private List<IServerConnectListener> mServerConnectListeners = new CopyOnWriteArrayList();
    private IServerConnectListener mListener = new IServerConnectListener() { // from class: com.tencent.taes.impl.base.BaseConnectApi.1
        @Override // com.tencent.taes.remote.api.IServerConnectListener
        public void onConnected() {
            BaseConnectApi.this.notifyConnected();
        }

        @Override // com.tencent.taes.remote.api.IServerConnectListener
        public void onDisConnected() {
            BaseConnectApi.this.notifyDisConnected();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDisConnected() {
        Iterator<IServerConnectListener> it = this.mServerConnectListeners.iterator();
        while (it.hasNext()) {
            it.next().onDisConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyConnected() {
        Iterator<IServerConnectListener> it = this.mServerConnectListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnected();
        }
    }

    @Override // com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        if (iServerConnectListener == null || this.mServerConnectListeners.contains(iServerConnectListener)) {
            return;
        }
        this.mServerConnectListeners.add(iServerConnectListener);
    }

    @Override // com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void unregisterConnectListener(IServerConnectListener iServerConnectListener) {
        if (iServerConnectListener == null) {
            return;
        }
        this.mServerConnectListeners.remove(iServerConnectListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerInnerConnectListener(T t) {
        if (t != null) {
            t.registerConnectListener(this.mListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void unregisterInnerConnectListener(T t) {
        if (t != null) {
            t.unregisterConnectListener(this.mListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void unregisterConnectListener() {
        Iterator<IServerConnectListener> it = this.mServerConnectListeners.iterator();
        while (it.hasNext()) {
            this.mServerConnectListeners.remove(it.next());
        }
    }
}
