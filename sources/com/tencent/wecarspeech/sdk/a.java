package com.tencent.wecarspeech.sdk;

import android.content.Context;
import android.os.RemoteException;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.wecarspeech.sdk.util.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f206a = LogUtils.GLOBAL_LOG_TAG + a.class.getSimpleName();
    private static volatile a d;
    private IWeCarSpeechSdkService b;
    private Context c;

    private a() {
    }

    public static a a() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                }
            }
        }
        return d;
    }

    public void a(Context context) {
        this.c = context.getApplicationContext();
    }

    public void a(IWeCarSpeechSdkService iWeCarSpeechSdkService) {
        String str = f206a;
        StringBuilder sb = new StringBuilder();
        sb.append("+handlerSdkServiceStateChange(), service:");
        sb.append(iWeCarSpeechSdkService == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.b = iWeCarSpeechSdkService;
        String str2 = f206a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-handlerSdkServiceStateChange(), service:");
        sb2.append(iWeCarSpeechSdkService == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public byte[] a(String str, byte[] bArr) {
        String str2 = f206a;
        StringBuilder sb = new StringBuilder();
        sb.append("sdk dispatch action:");
        sb.append(str);
        sb.append(" data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.i(str2, sb.toString());
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (this.b == null) {
            return null;
        }
        try {
            return this.b.actionCall(this.c.getPackageName(), str, bArr);
        } catch (RemoteException e) {
            LogUtils.e(f206a, e.toString());
            return null;
        }
    }
}
