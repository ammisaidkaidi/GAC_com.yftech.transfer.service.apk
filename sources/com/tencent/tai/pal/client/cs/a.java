package com.tencent.tai.pal.client.cs;

import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALServiceManager;

/* compiled from: BaseManager.java */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private String f72a;
    private String b;
    private Context c;
    private PlatformSupportInfo d;

    protected abstract void a(IBinder iBinder);

    protected abstract void f();

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Context context, String str, String str2) {
        this.c = context;
        this.f72a = str;
        this.b = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PlatformSupportInfo b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f72a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z, IBinder iBinder, PlatformSupportInfo platformSupportInfo) {
        this.d = platformSupportInfo;
        if (!z) {
            f();
            return;
        }
        if (iBinder != null) {
            try {
                if (iBinder.isBinderAlive()) {
                    a(iBinder);
                }
            } catch (IllegalStateException e) {
                Log.e(SDKConstants.TAG, "exception caught", e);
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        if (!PALServiceManager.isServiceConnected()) {
            throw new IllegalStateException("ServiceManager not connected!");
        }
    }
}
