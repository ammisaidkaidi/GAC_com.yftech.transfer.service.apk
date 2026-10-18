package com.tencent.tai.pal.telephone;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.tencent.tai.pal.telephone.a;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TelephoneService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class d extends a.AbstractBinderC0039a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f152a = "d";
    private TelephoneAdapter b;
    private final RemoteCallbackList<b> c = new RemoteCallbackList<>();
    private c d = new c();
    private boolean e = false;
    private TelephoneAdapter.OnTelInfoListener f = new TelephoneAdapter.OnTelInfoListener() { // from class: com.tencent.tai.pal.telephone.d.1
        @Override // com.tencent.tai.pal.telephone.TelephoneAdapter.OnTelInfoListener
        public void onTelEnabled(boolean z) {
            Log.i(SDKConstants.TAG, "TelephoneService.onTelEnabled : " + z);
            d.this.a(z);
        }

        @Override // com.tencent.tai.pal.telephone.TelephoneAdapter.OnTelInfoListener
        public void onCallStatusChange(int i, PhoneContact phoneContact) {
            Log.i(SDKConstants.TAG, "TelephoneService.onCallStatusChange status:" + i + " contact:" + phoneContact);
            d.this.a(i, phoneContact);
        }

        @Override // com.tencent.tai.pal.telephone.TelephoneAdapter.OnTelInfoListener
        public void onUploadTelContacts(List<PhoneContact> list) {
            d.this.a(list);
        }

        @Override // com.tencent.tai.pal.telephone.TelephoneAdapter.OnTelInfoListener
        public void onSetIncomingCallStrategy(boolean z, boolean z2) {
            Log.i(SDKConstants.TAG, "TelephoneService.onSetIncomingCallStrategy : " + z + ", " + z2);
            d.this.a(z, z2);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter == null) {
            throw new NullPointerException("adapter should not be null!");
        }
        if (!(baseAdapter instanceof TelephoneAdapter)) {
            throw new IllegalArgumentException("param not TelephoneAdapter");
        }
        this.b = (TelephoneAdapter) baseAdapter;
        synchronized (this.c) {
            this.e = true;
            this.b.registerOnTelInfoListener(this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.c.getBroadcastItem(i).a(z);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.f151a = Boolean.valueOf(z);
            this.c.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i, PhoneContact phoneContact) {
        String str;
        int i2;
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            if (phoneContact != null && (!TextUtils.isEmpty(phoneContact.getName()) || !TextUtils.isEmpty(phoneContact.getNumber()))) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("e_contact_name", phoneContact.getName());
                    jSONObject.put("e_contact_number", phoneContact.getNumber());
                    str = jSONObject.toString();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                for (i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        this.c.getBroadcastItem(i2).a(i, str);
                    } catch (Exception e2) {
                        Log.e(SDKConstants.TAG, "exception caught", e2);
                        e2.printStackTrace();
                    }
                }
                this.d.e = Integer.valueOf(i);
                this.d.f = str;
                this.c.finishBroadcast();
            }
            str = null;
            while (i2 < beginBroadcast) {
            }
            this.d.e = Integer.valueOf(i);
            this.d.f = str;
            this.c.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(List<PhoneContact> list) {
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            String str = null;
            if (list != null && list.size() != 0) {
                Log.i(f152a, "TelephoneService.onUploadTelContacts,size:" + list.size());
                JSONArray jSONArray = new JSONArray();
                try {
                    int i = 0;
                    for (PhoneContact phoneContact : list) {
                        if (!TextUtils.isEmpty(phoneContact.getName()) || !TextUtils.isEmpty(phoneContact.getNumber())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("e_contact_name", phoneContact.getName());
                            jSONObject.put("e_contact_number", phoneContact.getNumber());
                            jSONArray.put(jSONObject);
                            i++;
                            if (i >= 2000) {
                                break;
                            }
                        }
                    }
                    str = jSONArray.toString();
                } catch (JSONException e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        this.c.getBroadcastItem(i2).a(str);
                    } catch (Exception e2) {
                        Log.e(SDKConstants.TAG, "exception caught", e2);
                        e2.printStackTrace();
                    }
                }
                this.d.b = str;
                this.c.finishBroadcast();
            }
            Log.i(f152a, "TelephoneService.uploadTelContacts contacts is null");
            while (i2 < beginBroadcast) {
            }
            this.d.b = str;
            this.c.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.c.getBroadcastItem(i).a(z, z2);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.c = Boolean.valueOf(z);
            this.d.d = Boolean.valueOf(z2);
            this.c.finishBroadcast();
        }
    }

    @Override // com.tencent.tai.pal.telephone.a
    public void a(b bVar) throws RemoteException {
        if (bVar == null) {
            Log.w(f152a, "registerCallback listener is null");
            return;
        }
        synchronized (this.c) {
            this.c.register(bVar);
            int registeredCallbackCount = this.c.getRegisteredCallbackCount();
            Log.i(f152a, "registerCallback count:" + registeredCallbackCount + ", mHasRegister:" + this.e);
            if (this.e) {
                if (this.d.f151a != null) {
                    bVar.a(this.d.f151a.booleanValue());
                }
                if (this.d.b != null) {
                    bVar.a(this.d.b);
                }
                if (this.d.c != null && this.d.d != null) {
                    bVar.a(this.d.c.booleanValue(), this.d.d.booleanValue());
                }
                if (this.d.e != null) {
                    bVar.a(this.d.e.intValue(), this.d.f);
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.telephone.a
    public void b(b bVar) throws RemoteException {
        if (bVar == null) {
            Log.w(f152a, "unregisterCallback listener is null");
            return;
        }
        synchronized (this.c) {
            this.c.unregister(bVar);
        }
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int a(String str, String str2) throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.call(str, str2);
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int a() throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.answerInComingCall();
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int b() throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.refuseInComingCall();
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int d() throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.ignoreInComingCall();
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int e() throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.viewPhonebook();
    }

    @Override // com.tencent.tai.pal.telephone.a
    public int a(int i) throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        return this.b.viewCallRecord(i);
    }

    @Override // com.tencent.tai.pal.telephone.a
    public String b(int i) throws RemoteException {
        PhoneContact recentContact;
        if (this.b == null || (recentContact = this.b.getRecentContact(i)) == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_contact_name", recentContact.getName());
            jSONObject.put("e_contact_number", recentContact.getNumber());
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
