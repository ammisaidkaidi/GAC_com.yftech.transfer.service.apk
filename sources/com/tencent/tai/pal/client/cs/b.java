package com.tencent.tai.pal.client.cs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ServiceConnectionHelper.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private a f103a;
    private WeakReference<Context> b;
    private String c = null;
    private ServiceConnection d = new ServiceConnection() { // from class: com.tencent.tai.pal.client.cs.b.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e(SDKConstants.TAG, "ServiceConnectionHelper.onServiceConnected");
            if (b.this.f103a != null) {
                b.this.f103a.a(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.e(SDKConstants.TAG, "ServiceConnectionHelper.onServiceDisconnected");
            b.this.c = null;
            if (b.this.f103a != null) {
                b.this.f103a.d();
            }
        }
    };

    /* compiled from: ServiceConnectionHelper.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(IBinder iBinder);

        void d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f103a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context) throws RuntimeException {
        Log.i(SDKConstants.TAG, "ServiceConnectionHelper.bindService");
        this.b = new WeakReference<>(context);
        return context.bindService(b(context), this.d, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Context context = this.b.get();
        if (context != null) {
            try {
                context.unbindService(this.d);
            } catch (Exception e) {
                Log.w(SDKConstants.TAG, "ServiceConnectionHelper.unbindService error.", e);
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.c;
    }

    private Intent b(Context context) throws RuntimeException {
        Intent c = c(context);
        if (c == null) {
            Log.i(SDKConstants.TAG, "getMatchIntent getSinglePackageServiceIntent return null, try getMultiPackageServiceIntent");
            c = d(context);
        }
        if (c == null) {
            throw new RuntimeException("PAL_SDK getMatchIntent cannot find service match pal action");
        }
        ComponentName component = c.getComponent();
        if (component != null) {
            this.c = component.getPackageName();
        }
        return c;
    }

    private Intent c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("com.tencent.tai.pal.PALCore.single_package");
        intent.addFlags(32);
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            Log.e(SDKConstants.TAG, "single-package Service NOT found");
            return null;
        }
        Intent intent2 = new Intent(intent);
        ComponentName a2 = a(queryIntentServices, context.getPackageName());
        if (a2 == null) {
            Log.e(SDKConstants.TAG, "single-package Service NOT found in current package");
            return null;
        }
        intent2.setComponent(a2);
        return intent2;
    }

    private Intent d(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("com.tencent.tai.pal.PALCore");
        intent.addFlags(32);
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            Log.e(SDKConstants.TAG, "multi-package Service NOT found");
            return null;
        }
        Intent intent2 = new Intent(intent);
        ComponentName a2 = a(queryIntentServices, "com.tencent.tai.pal.platform.app");
        if (a2 == null) {
            Log.e(SDKConstants.TAG, "multi-package Service NOT found in package:com.tencent.tai.pal.platform.app");
            a2 = a(queryIntentServices, (String) null);
            if (a2 == null) {
                return null;
            }
        }
        intent2.setComponent(a2);
        return intent2;
    }

    private ComponentName a(List<ResolveInfo> list, String str) {
        String str2;
        ResolveInfo resolveInfo;
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            int i2 = -1;
            int i3 = -1;
            while (i < list.size()) {
                if ("com.tencent.tai.pal.platformdemo".equalsIgnoreCase(list.get(i).serviceInfo.packageName)) {
                    i3 = i;
                } else {
                    i2 = i;
                }
                i++;
            }
            if (i2 != -1) {
                resolveInfo = list.get(i2);
            } else {
                resolveInfo = list.get(i3);
            }
            str = resolveInfo.serviceInfo.packageName;
            str2 = resolveInfo.serviceInfo.name;
        } else {
            int i4 = 0;
            while (true) {
                if (i4 >= list.size()) {
                    str2 = null;
                    break;
                }
                ResolveInfo resolveInfo2 = list.get(i4);
                if (!str.equals(resolveInfo2.serviceInfo.packageName)) {
                    Log.i(SDKConstants.TAG, "ServiceConnectionHelper.getMatchComponent invalid packageName=" + resolveInfo2.serviceInfo.packageName);
                    i4++;
                } else {
                    str2 = resolveInfo2.serviceInfo.name;
                    Log.i(SDKConstants.TAG, "ServiceConnectionHelper.getMatchComponent found packageName=" + resolveInfo2.serviceInfo.packageName);
                    i = 1;
                    break;
                }
            }
            if (i == 0) {
                return null;
            }
        }
        ComponentName componentName = new ComponentName(str, str2);
        Log.i(SDKConstants.TAG, "ServiceConnectionHelper.getMatchComponent return component packageName=" + str + " className=" + str2);
        return componentName;
    }
}
