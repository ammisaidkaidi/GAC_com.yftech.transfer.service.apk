package com.tencent.tai.pal.input;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.input.d;
import com.tencent.tai.pal.service.BaseAdapter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: CabinKeyEventService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends d.a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private CabinKeyEventAdapter f119a;
    private boolean c = false;
    private CabinKeyEventAdapter.CabinKeyEventDispatcher d = new CabinKeyEventAdapter.CabinKeyEventDispatcher() { // from class: com.tencent.tai.pal.input.b.1
        @Override // com.tencent.tai.pal.input.CabinKeyEventAdapter.CabinKeyEventDispatcher
        public Set<Integer> getRegisteredKeyCodeSet() {
            int beginBroadcast;
            List<Integer> bindingKeys;
            HashMap hashMap = new HashMap();
            synchronized (b.this.b) {
                beginBroadcast = b.this.b.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    try {
                        KeyFilter a2 = ((c) b.this.b.getBroadcastItem(i)).a();
                        if (a2 != null && (bindingKeys = a2.getBindingKeys()) != null) {
                            Iterator<Integer> it = bindingKeys.iterator();
                            while (it.hasNext()) {
                                int intValue = it.next().intValue();
                                if (!hashMap.containsKey(Integer.valueOf(intValue))) {
                                    hashMap.put(Integer.valueOf(intValue), Integer.valueOf(intValue));
                                }
                            }
                        }
                    } catch (Exception e) {
                        Log.e(SDKConstants.TAG, "exception caught", e);
                        e.printStackTrace();
                    }
                }
                b.this.b.finishBroadcast();
            }
            Log.i(SDKConstants.TAG, "CabinKeyEventService:getRegisteredKeyCodeSet count: " + beginBroadcast + "keys.keySet(): " + hashMap.keySet());
            return hashMap.keySet();
        }

        @Override // com.tencent.tai.pal.input.CabinKeyEventAdapter.CabinKeyEventDispatcher
        public void dispatchKeyEvent(int i, int i2, int i3, long j, long j2) {
            int i4 = i3;
            synchronized (b.this.b) {
                int beginBroadcast = b.this.b.beginBroadcast();
                Log.i(SDKConstants.TAG, "CabinKeyEventService:dispatchKeyEvent count: " + beginBroadcast + " source: " + i + " action: " + i2 + " keyCode: " + i4 + " downTime: " + j + " eventTime: " + j2);
                int i5 = 0;
                while (i5 < beginBroadcast) {
                    try {
                        c cVar = (c) b.this.b.getBroadcastItem(i5);
                        KeyFilter a2 = cVar.a();
                        if (a2 != null && a2.match(i4)) {
                            cVar.a(new CabinKeyEvent(i, i2, i3, j, j2));
                        }
                    } catch (Exception e) {
                        Log.e(SDKConstants.TAG, "exception caught", e);
                        e.printStackTrace();
                    }
                    i5++;
                    i4 = i3;
                }
                b.this.b.finishBroadcast();
            }
        }

        @Override // com.tencent.tai.pal.input.CabinKeyEventAdapter.CabinKeyEventDispatcher
        public void dispatchKeyLongPressEvent(int i, int i2, int i3, long j, long j2) {
            int i4 = i3;
            synchronized (b.this.b) {
                int beginBroadcast = b.this.b.beginBroadcast();
                Log.i(SDKConstants.TAG, "CabinKeyEventService:dispatchKeyLongPressEvent count: " + beginBroadcast + " source: " + i + " action: " + i2 + " keyCode: " + i4 + " downTime: " + j + " eventTime: " + j2);
                int i5 = 0;
                while (i5 < beginBroadcast) {
                    try {
                        c cVar = (c) b.this.b.getBroadcastItem(i5);
                        KeyFilter a2 = cVar.a();
                        if (a2 != null && a2.match(i4)) {
                            if (a.a(i3)) {
                                a.a(cVar, i, i2, i3, j, j2);
                            } else {
                                cVar.b(new CabinKeyEvent(i, i2, i3, j, j2));
                            }
                        }
                    } catch (Exception e) {
                        Log.e(SDKConstants.TAG, "exception caught", e);
                        e.printStackTrace();
                    }
                    i5++;
                    i4 = i3;
                }
                b.this.b.finishBroadcast();
            }
        }
    };
    private final RemoteCallbackList<c> b = new RemoteCallbackList<>();

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof CabinKeyEventAdapter) {
            this.f119a = (CabinKeyEventAdapter) baseAdapter;
            synchronized (this.b) {
                if (this.b.getRegisteredCallbackCount() > 0) {
                    this.c = true;
                    this.f119a.registerCabinKeyEventDispatcher(this.d);
                } else {
                    this.c = false;
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.input.d
    public void a(c cVar) throws RemoteException {
        synchronized (this.b) {
            this.b.register(cVar);
            int registeredCallbackCount = this.b.getRegisteredCallbackCount();
            if (!this.c && registeredCallbackCount > 0 && this.f119a != null) {
                this.f119a.registerCabinKeyEventDispatcher(this.d);
                this.c = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.input.d
    public void b(c cVar) throws RemoteException {
        synchronized (this.b) {
            this.b.unregister(cVar);
            if (this.b.getRegisteredCallbackCount() == 0 && this.c && this.f119a != null) {
                this.f119a.unregisterCabinKeyEventDispatcher(this.d);
                this.c = false;
            }
        }
    }
}
