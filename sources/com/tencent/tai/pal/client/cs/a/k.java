package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALTelephoneManager;
import com.tencent.tai.pal.telephone.PhoneContact;
import com.tencent.tai.pal.telephone.a;
import com.tencent.tai.pal.telephone.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelephoneManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class k extends com.tencent.tai.pal.client.cs.a implements PALTelephoneManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f95a = "k";
    private final Object b;
    private List<PALTelephoneManager.TelInfoListener> c;
    private com.tencent.tai.pal.telephone.a d;
    private j e;
    private b.a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context) {
        super(context, SDKConstants.SERVICE_TELEPHONE, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList();
        this.d = null;
        this.e = new j();
        this.f = new b.a() { // from class: com.tencent.tai.pal.client.cs.a.k.1
            @Override // com.tencent.tai.pal.telephone.b
            public void a(boolean z) throws RemoteException {
                Log.i(k.f95a, "TelephoneManagerImpl.onTelEnabled:" + z);
                Iterator it = k.this.c.iterator();
                while (it.hasNext()) {
                    ((PALTelephoneManager.TelInfoListener) it.next()).onTelEnabled(z);
                }
                k.this.e.f94a = Boolean.valueOf(z);
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0052 A[LOOP:0: B:5:0x004c->B:7:0x0052, LOOP_END] */
            @Override // com.tencent.tai.pal.telephone.b
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void a(int i, String str) throws RemoteException {
                PhoneContact phoneContact;
                Iterator it;
                Log.i(k.f95a, "TelephoneManagerImpl.onCallStatusChange status:" + i + " contactStr:" + str);
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        phoneContact = new PhoneContact(jSONObject.getString("e_contact_name"), jSONObject.getString("e_contact_number"));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    it = k.this.c.iterator();
                    while (it.hasNext()) {
                        ((PALTelephoneManager.TelInfoListener) it.next()).onCallStatusChange(i, phoneContact);
                    }
                    k.this.e.e = Integer.valueOf(i);
                    k.this.e.f = phoneContact;
                }
                phoneContact = null;
                it = k.this.c.iterator();
                while (it.hasNext()) {
                }
                k.this.e.e = Integer.valueOf(i);
                k.this.e.f = phoneContact;
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(String str) throws RemoteException {
                Log.i(k.f95a, "TelephoneManagerImpl.onUploadTelContacts contacts:" + str);
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONArray jSONArray = new JSONArray(str);
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            arrayList.add(new PhoneContact(jSONObject.optString("e_contact_name"), jSONObject.optString("e_contact_number")));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                Iterator it = k.this.c.iterator();
                while (it.hasNext()) {
                    ((PALTelephoneManager.TelInfoListener) it.next()).onUploadTelContacts(arrayList);
                }
                k.this.e.b = arrayList;
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(boolean z, boolean z2) throws RemoteException {
                Log.i(k.f95a, "TelephoneManagerImpl.onSetIncomingCallStrategy startTtsTip:" + z + " startSpeechRecognition:" + z2);
                Iterator it = k.this.c.iterator();
                while (it.hasNext()) {
                    ((PALTelephoneManager.TelInfoListener) it.next()).onSetIncomingCallStrategy(z, z2);
                }
                k.this.e.c = Boolean.valueOf(z);
                k.this.e.d = Boolean.valueOf(z2);
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public void registerTelInfoListener(PALTelephoneManager.TelInfoListener telInfoListener) {
        if (telInfoListener == null) {
            Log.w(f95a, "registerTelInfoListener listener is null");
            return;
        }
        if (this.c.contains(telInfoListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(telInfoListener)) {
                this.c.add(telInfoListener);
                if (this.e.f94a != null) {
                    Log.i(f95a, "registerTelInfoListener onTelEnabled:" + this.e.f94a);
                    telInfoListener.onTelEnabled(this.e.f94a.booleanValue());
                }
                if (this.e.b != null) {
                    telInfoListener.onUploadTelContacts(this.e.b);
                }
                if (this.e.c != null && this.e.d != null) {
                    telInfoListener.onSetIncomingCallStrategy(this.e.c.booleanValue(), this.e.d.booleanValue());
                }
                if (this.e.e != null) {
                    telInfoListener.onCallStatusChange(this.e.e.intValue(), this.e.f);
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public void unregisterTelInfoListener(PALTelephoneManager.TelInfoListener telInfoListener) {
        if (telInfoListener == null) {
            Log.w(f95a, "unregisterTelInfoListener listener is null");
        } else if (this.c.contains(telInfoListener)) {
            synchronized (this.b) {
                this.c.remove(telInfoListener);
            }
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        Log.i(f95a, "onServiceConnected binder:" + iBinder);
        this.d = a.AbstractBinderC0039a.a(iBinder);
        h();
    }

    private void h() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "registerTelephoneCallback telApiAidl == null");
            return;
        }
        try {
            aVar.a(this.f);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        Log.i(f95a, "onServiceDisconnected");
        i();
        this.d = null;
    }

    private void i() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "unregisterTelephoneCallback telApiAidl == null");
            return;
        }
        try {
            aVar.b(this.f);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public boolean isTelEnable() {
        if (this.e.f94a == null) {
            return false;
        }
        return this.e.f94a.booleanValue();
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int call(String str, String str2) {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "call Service not connected");
            return -2;
        }
        e();
        try {
            return aVar.a(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int answerInComingCall() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "answerInComingCall Service not connected");
            return -2;
        }
        e();
        try {
            return aVar.a();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int refuseInComingCall() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "refuseInComingCall Service not connected");
            return -2;
        }
        e();
        try {
            return aVar.b();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int ignoreInComingCall() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "ignoreInComingCall Service not connected");
            return -2;
        }
        e();
        try {
            return aVar.d();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int viewPhonebook() {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "viewPhonebook Service not connected");
            return -2;
        }
        e();
        try {
            return aVar.e();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public int viewCallRecord(int i) {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "viewCallRecord Service not connected");
            return 2;
        }
        e();
        try {
            return aVar.a(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public PhoneContact getRecentContact(int i) {
        com.tencent.tai.pal.telephone.a aVar = this.d;
        if (aVar == null) {
            Log.i(f95a, "getRecentContact Service not connected");
            return null;
        }
        e();
        try {
            String b = aVar.b(i);
            if (TextUtils.isEmpty(b)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(b);
            return new PhoneContact(jSONObject.getString("e_contact_name"), jSONObject.getString("e_contact_number"));
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALTelephoneManager
    public boolean isTelephoneSupported() {
        if (this.d == null) {
            Log.i(f95a, "isTelephoneSupported Service not connected");
            return false;
        }
        e();
        PlatformSupportInfo b = b();
        if (b == null) {
            return false;
        }
        return b.telephone_supported;
    }
}
