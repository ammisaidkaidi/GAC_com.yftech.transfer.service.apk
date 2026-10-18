package com.tencent.wecarspeech.sdk;

import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    protected final String f207a = LogUtils.GLOBAL_LOG_TAG + getClass().getSimpleName();
    private JSONObject b = new JSONObject();

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        c.a().a(getClass().getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.b.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                b.this.a(z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                return b.this.a(str, str2, bArr, i);
            }
        });
    }

    private void b() {
        Iterator<String> keys = this.b.keys();
        while (keys.hasNext()) {
            keys.next();
            keys.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str, int i) {
        try {
            this.b.put(str, i);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str, Object obj) {
        try {
            this.b.put(str, obj);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str, boolean z) {
        try {
            this.b.put(str, z);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
    }

    protected abstract void a(boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized byte[] a() {
        byte[] bytes;
        bytes = this.b.toString().getBytes();
        b();
        return bytes;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized byte[] a(ActionRet actionRet) {
        if (actionRet == null) {
            return null;
        }
        try {
            this.b.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, actionRet.toJson());
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        byte[] bytes = this.b.toString().getBytes();
        b();
        return bytes;
    }

    protected abstract byte[] a(String str, String str2, byte[] bArr, int i);
}
