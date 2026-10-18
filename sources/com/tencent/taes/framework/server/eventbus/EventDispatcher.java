package com.tencent.taes.framework.server.eventbus;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taes.framework.bean.IPCEvent;
import com.tencent.taes.framework.interfaces.IEventListener;
import com.tencent.taes.framework.interfaces.IEventPublisher;
import com.tencent.taes.framework.interfaces.IEventSubscriber;
import com.tencent.taes.framework.interfaces.IRouterStrategy;
import com.tencent.taes.framework.listener.IPCEventListener;
import com.tencent.taes.framework.remote.IEventDispatchService;
import com.tencent.taes.framework.server.BaseClient;
import com.tencent.taes.framework.server.router.SMSRouterStrategy;
import com.tencent.taes.util.PackageUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class EventDispatcher extends BaseClient implements IEventSubscriber, IEventPublisher {
    public static final String ACTION = "com.tencent.taes.framework.EVENT_DISPATCH";
    private static final String TAG = "EventDispatcher";
    private IEventDispatchService dispatchService;
    private String mClientName;
    private final M2MHashMap<String, IEventListener> mEventListenersMap;
    private final List<IPCEvent> mPendingPublishEvents;
    private final HashSet<String> mPendingSubscribeEvents;
    private IRouterStrategy mRouterStrategy;

    public EventDispatcher(Context context, String[] strArr) {
        super(context);
        this.mEventListenersMap = new M2MHashMap<>();
        this.mPendingSubscribeEvents = new HashSet<>();
        this.mPendingPublishEvents = new CopyOnWriteArrayList();
        this.mClientName = PackageUtils.getProcessName(this.mContext);
        this.mRouterStrategy = new SMSRouterStrategy();
        this.mRouterStrategy.scanAndSortService(context, ACTION, Arrays.asList(strArr));
        IRouterStrategy.ServiceItemInfo hostServiceInfo = this.mRouterStrategy.getHostServiceInfo();
        if (hostServiceInfo != null) {
            connect(hostServiceInfo.intent, null);
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IEventSubscriber
    public void subscribe(String str, IEventListener iEventListener) {
        Log.i(TAG, "subscribe: " + str);
        if (TextUtils.isEmpty(str) || iEventListener == null) {
            Log.i(TAG, "subscribe but invalid event or listener");
            return;
        }
        synchronized (this.mEventListenersMap) {
            this.mEventListenersMap.put(str, iEventListener);
        }
        subscribeOnServer(str);
    }

    private void subscribeOnServer(String str) {
        synchronized (this.mPendingSubscribeEvents) {
            if (!isConnected()) {
                Log.i(TAG, "subscribe but is not connected, so pending");
                this.mPendingSubscribeEvents.add(str);
            } else {
                if (this.dispatchService == null) {
                    Log.w(TAG, "subscribe but ipcInterface is null, so pending");
                    synchronized (this.mPendingSubscribeEvents) {
                        this.mPendingSubscribeEvents.add(str);
                    }
                    return;
                }
                try {
                    this.dispatchService.subscribe(this.mClientName, str, null);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IEventSubscriber
    public void unsubscribe(String str, IEventListener iEventListener) {
        Log.i(TAG, "unsubscribe: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.mEventListenersMap) {
            this.mEventListenersMap.remove(str, iEventListener);
            if (this.mEventListenersMap.containsKey(str)) {
                return;
            }
            if (this.dispatchService == null) {
                Log.w(TAG, "unregisterModule but ipcInterface is null");
                return;
            }
            try {
                this.dispatchService.unsubscribe(this.mClientName, str, null);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IEventSubscriber
    public void unsubscribe(IEventListener iEventListener) {
        Log.i(TAG, "unsubscribe");
        if (iEventListener == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this.mEventListenersMap) {
            for (String str : this.mEventListenersMap.removeValue(iEventListener)) {
                if (!this.mEventListenersMap.containsKey(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (this.dispatchService == null) {
            Log.w(TAG, "unsubscribe but ipcInterface is null");
            return;
        }
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.dispatchService.unsubscribe(this.mClientName, (String) it.next(), null);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IEventSubscriber
    public void onEvent(IPCEvent iPCEvent) {
        Log.i(TAG, "onEvent, event:" + iPCEvent + "  " + Thread.currentThread());
        synchronized (this.mEventListenersMap) {
            Set<IEventListener> valueSet = this.mEventListenersMap.getValueSet(iPCEvent.name);
            if (valueSet != null && valueSet.size() > 0) {
                Iterator<IEventListener> it = valueSet.iterator();
                while (it.hasNext()) {
                    it.next().onEvent(iPCEvent);
                }
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IEventPublisher
    public void publish(IPCEvent iPCEvent) {
        publish(this.mClientName, iPCEvent, false);
    }

    public synchronized void publish(String str, IPCEvent iPCEvent, boolean z) {
        if (!isConnected()) {
            this.mPendingPublishEvents.add(iPCEvent);
            return;
        }
        Log.i(TAG, "publish event:" + iPCEvent);
        if (this.dispatchService != null) {
            try {
                this.dispatchService.publish(str, iPCEvent, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.framework.server.BaseClient
    protected void handleConnect(IBinder iBinder) {
        Log.i(TAG, "handleConnected, re-subscribe events");
        this.dispatchService = IEventDispatchService.Stub.asInterface(iBinder);
        try {
            this.dispatchService.registerEventListener(PackageUtils.getProcessName(this.mContext), new IPCEventListener.Stub() { // from class: com.tencent.taes.framework.server.eventbus.EventDispatcher.1
                @Override // com.tencent.taes.framework.listener.IPCEventListener
                public void onEvent(IPCEvent iPCEvent) throws RemoteException {
                    EventDispatcher.this.onEvent(iPCEvent);
                }
            });
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        synchronized (this.mPendingSubscribeEvents) {
            if (this.mPendingSubscribeEvents.size() > 0) {
                HashSet hashSet = new HashSet(this.mPendingSubscribeEvents);
                this.mPendingSubscribeEvents.clear();
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    subscribeOnServer((String) it.next());
                }
            }
        }
        if (this.mPendingPublishEvents.size() != 0) {
            Iterator<IPCEvent> it2 = this.mPendingPublishEvents.iterator();
            while (it2.hasNext()) {
                publish(it2.next());
            }
            this.mPendingPublishEvents.clear();
        }
    }

    @Override // com.tencent.taes.framework.server.BaseClient
    protected void handleDisConnect() {
        Set<String> keySet;
        Log.i(TAG, "handleDisconnected, pending subscribe all local events");
        synchronized (this.mEventListenersMap) {
            keySet = this.mEventListenersMap.keySet();
        }
        synchronized (this.mPendingSubscribeEvents) {
            this.mPendingSubscribeEvents.addAll(keySet);
        }
    }
}
