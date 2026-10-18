package com.tencent.tai.pal.platform.adapter;

import android.content.Context;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: PlatformAdapterWrapper.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private boolean f136a;
    private IPlatformAdapter b;
    private PlatformSupportInfo c;

    public a() {
        this("com.tencent.tai.pal.platform.adapter.PlatformAdapter");
    }

    public a(String str) {
        this.f136a = false;
        try {
            this.b = (IPlatformAdapter) Class.forName(str).newInstance();
        } catch (Exception unused) {
            Log.w(SDKConstants.TAG, "PlatformAdapterWrapper : class reflect error. adapterClassPath=" + str);
            this.b = null;
        }
    }

    public void a(Context context) {
        try {
            this.b.onCreate(context);
            this.c = this.b.getSupportInfo();
            this.b.onInitialized();
            this.f136a = true;
            Log.i(SDKConstants.TAG, "PlatformAdapterWrapper : create succeed");
        } catch (Exception e) {
            Log.w(SDKConstants.TAG, "PlatformAdapterWrapper : create failed.", e);
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public PlatformSupportInfo a() {
        if (!this.f136a) {
            throw new RuntimeException("PlatformAdapterWrapper : please call create() first");
        }
        return this.c;
    }

    public <T extends BaseAdapter> T a(Class<T> cls) {
        if (!this.f136a) {
            throw new RuntimeException("PlatformAdapterWrapper : please call create() first");
        }
        if (this.c.isAdapterSupported(cls)) {
            Log.i(SDKConstants.TAG, "PlatformAdapterWrapper getAdapter supported : " + cls.getSimpleName());
            T t = (T) this.b.getAdapter(cls);
            if (t != null) {
                return t;
            }
            throw new RuntimeException("PlatformAdapterWrapper getAdapter return null : " + cls.getSimpleName());
        }
        Log.i(SDKConstants.TAG, "PlatformAdapterWrapper getAdapter NOT supported : " + cls.getSimpleName());
        throw new RuntimeException("PlatformAdapterWrapper getAdapter NOT supported : " + cls.getSimpleName());
    }
}
