package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALCabinKeyInputManager;
import com.tencent.tai.pal.input.CabinKeyEvent;
import com.tencent.tai.pal.input.KeyFilter;
import com.tencent.tai.pal.input.c;
import com.tencent.tai.pal.input.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: CabinKeyInputManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class c extends com.tencent.tai.pal.client.cs.a implements PALCabinKeyInputManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.input.d f81a;
    private final Object b;
    private PALCabinKeyInputManager.CabinKeyEventHandler c;
    private List<PALCabinKeyInputManager.CabinKeyEventHandler> d;
    private boolean e;
    private CabinKeyEvent f;
    private com.tencent.tai.pal.input.c g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        super(context, SDKConstants.SERVICE_INPUT, null);
        this.f81a = null;
        this.b = new Object();
        this.c = null;
        this.d = new CopyOnWriteArrayList();
        this.e = false;
        this.g = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.c.1
            @Override // com.tencent.tai.pal.input.c
            public KeyFilter a() throws RemoteException {
                return c.this.g();
            }

            @Override // com.tencent.tai.pal.input.c
            public void a(CabinKeyEvent cabinKeyEvent) throws RemoteException {
                c.this.a(cabinKeyEvent.getSource(), cabinKeyEvent.getAction(), cabinKeyEvent.getKeyCode(), cabinKeyEvent.getDownTime(), cabinKeyEvent.getEventTime());
            }

            @Override // com.tencent.tai.pal.input.c
            public void b(CabinKeyEvent cabinKeyEvent) throws RemoteException {
                c.this.b(cabinKeyEvent.getSource(), cabinKeyEvent.getAction(), cabinKeyEvent.getKeyCode(), cabinKeyEvent.getDownTime(), cabinKeyEvent.getEventTime());
            }
        };
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        synchronized (this.b) {
            this.f81a = d.a.a(iBinder);
            this.e = false;
            h();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        synchronized (this.b) {
            if (this.f != null) {
                Log.i(SDKConstants.TAG, "PAL service disconnected send action up ");
                b(this.f.getSource(), 2, this.f.getKeyCode(), this.f.getDownTime(), SystemClock.uptimeMillis());
            }
            this.f = null;
            this.f81a = null;
            this.e = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KeyFilter g() {
        KeyFilter keyFilter;
        List<Integer> bindingKeys;
        KeyFilter keyFilter2;
        List<Integer> bindingKeys2;
        HashMap hashMap = new HashMap();
        synchronized (this.b) {
            if (this.c != null && (keyFilter2 = this.c.getKeyFilter()) != null && (bindingKeys2 = keyFilter2.getBindingKeys()) != null) {
                Iterator<Integer> it = bindingKeys2.iterator();
                while (it.hasNext()) {
                    int intValue = it.next().intValue();
                    if (!hashMap.containsKey(Integer.valueOf(intValue))) {
                        hashMap.put(Integer.valueOf(intValue), Integer.valueOf(intValue));
                    }
                }
            }
            for (PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler : this.d) {
                if (cabinKeyEventHandler != null && (keyFilter = cabinKeyEventHandler.getKeyFilter()) != null && (bindingKeys = keyFilter.getBindingKeys()) != null) {
                    Iterator<Integer> it2 = bindingKeys.iterator();
                    while (it2.hasNext()) {
                        int intValue2 = it2.next().intValue();
                        if (!hashMap.containsKey(Integer.valueOf(intValue2))) {
                            hashMap.put(Integer.valueOf(intValue2), Integer.valueOf(intValue2));
                        }
                    }
                }
            }
        }
        KeyFilter keyFilter3 = new KeyFilter();
        Iterator it3 = hashMap.keySet().iterator();
        while (it3.hasNext()) {
            keyFilter3.addFilter(((Integer) it3.next()).intValue());
        }
        return keyFilter3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, long j, long j2) {
        synchronized (this.b) {
            Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyEvent source=" + i + " action=" + i2 + " keyCode=" + i3 + " downTime=" + j + " eventTime=" + j2 + " mListener=" + this.c + " mCabinKeyEventHandlers.size()=" + this.d.size());
            CabinKeyEvent cabinKeyEvent = new CabinKeyEvent(i, i2, i3, j, j2);
            if (this.c != null) {
                KeyFilter keyFilter = this.c.getKeyFilter();
                if (keyFilter != null && keyFilter.match(i3)) {
                    this.c.onKeyEvent(cabinKeyEvent);
                } else {
                    Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyEvent not match  mListener=" + this.c + " keyFilter=" + keyFilter + " keyCode=" + i3);
                }
            }
            for (PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler : this.d) {
                KeyFilter keyFilter2 = cabinKeyEventHandler.getKeyFilter();
                if (keyFilter2 != null && keyFilter2.match(i3)) {
                    cabinKeyEventHandler.onKeyEvent(cabinKeyEvent);
                } else {
                    Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyEvent not match  handler=" + cabinKeyEventHandler + " keyFilter=" + keyFilter2 + " keyCode=" + i3);
                }
            }
            if (i3 == 12 || i3 == 13 || i3 == 8 || i3 == 9) {
                if (cabinKeyEvent.getAction() == 1) {
                    this.f = cabinKeyEvent;
                } else if (cabinKeyEvent.getAction() == 2) {
                    this.f = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2, int i3, long j, long j2) {
        synchronized (this.b) {
            Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent source=" + i + " action=" + i2 + " keyCode=" + i3 + " downTime=" + j + " eventTime=" + j2 + " mListener=" + this.c + " mCabinKeyEventHandlers.size()=" + this.d.size());
            CabinKeyEvent cabinKeyEvent = new CabinKeyEvent(i, i2, i3, j, j2);
            if (this.c != null) {
                KeyFilter keyFilter = this.c.getKeyFilter();
                if (keyFilter == null || !keyFilter.match(i3)) {
                    Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent not match  mListener=" + this.c + " keyFilter=" + keyFilter + " keyCode=" + i3);
                } else if (com.tencent.tai.pal.input.a.a(i3)) {
                    com.tencent.tai.pal.input.a.a(this.c, i, i2, i3, j, j2);
                } else {
                    this.c.onKeyLongPressEvent(cabinKeyEvent);
                }
            }
            for (PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler : this.d) {
                KeyFilter keyFilter2 = cabinKeyEventHandler.getKeyFilter();
                if (keyFilter2 == null || !keyFilter2.match(i3)) {
                    Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent not match  handler=" + cabinKeyEventHandler + " keyFilter=" + keyFilter2 + " keyCode=" + i3);
                } else if (com.tencent.tai.pal.input.a.a(i3)) {
                    com.tencent.tai.pal.input.a.a(cabinKeyEventHandler, i, i2, i3, j, j2);
                } else {
                    cabinKeyEventHandler.onKeyLongPressEvent(cabinKeyEvent);
                }
            }
            if (i3 == 12 || i3 == 13 || i3 == 8 || i3 == 9) {
                if (cabinKeyEvent.getAction() == 1) {
                    this.f = cabinKeyEvent;
                } else if (cabinKeyEvent.getAction() == 2) {
                    this.f = null;
                }
            }
        }
    }

    private void h() {
        com.tencent.tai.pal.input.d dVar = this.f81a;
        if (dVar == null) {
            Log.i(SDKConstants.TAG, "ensureAdapterRegisterStatus cabinKeyInputApi==null mHasRegister:" + this.e);
            return;
        }
        if (!this.e) {
            if (this.c != null || this.d.size() > 0) {
                try {
                    dVar.a(this.g);
                    this.e = true;
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (this.c == null && this.d.size() == 0) {
            try {
                dVar.b(this.g);
                this.e = false;
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALCabinKeyInputManager
    public void setCabinKeyEventListener(PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler) {
        synchronized (this.b) {
            this.c = cabinKeyEventHandler;
            h();
        }
    }

    @Override // com.tencent.tai.pal.client.PALCabinKeyInputManager
    public void registerCabinKeyEventHandler(PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler) {
        Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.registerCabinKeyEventHandler handler=" + cabinKeyEventHandler);
        if (cabinKeyEventHandler == null || this.d.contains(cabinKeyEventHandler)) {
            return;
        }
        synchronized (this.b) {
            if (!this.d.contains(cabinKeyEventHandler) && this.d.add(cabinKeyEventHandler)) {
                h();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALCabinKeyInputManager
    public void unregisterCabinKeyEventHandler(PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler) {
        Log.i(SDKConstants.TAG, "CabinKeyInputManagerImpl.unregisterCabinKeyEventHandler handler=" + cabinKeyEventHandler);
        if (cabinKeyEventHandler == null) {
            return;
        }
        synchronized (this.b) {
            if (this.d.remove(cabinKeyEventHandler)) {
                h();
            }
        }
    }
}
