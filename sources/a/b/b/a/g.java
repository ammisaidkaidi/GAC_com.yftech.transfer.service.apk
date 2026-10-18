package a.b.b.a;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f10a = "g";
    public volatile boolean b;
    public volatile boolean c;
    public ServiceConnection d;
    public IBinder e;
    public Handler f = new Handler(Looper.getMainLooper());

    public void a(Context context, String str, String str2, a aVar) {
        String str3 = f10a;
        StringBuilder a2 = a.a.a.a.a.a("TaiSceneMsg linkRemoteService isConnected = ");
        a2.append(this.b);
        LogUtils.d(str3, a2.toString());
        if (this.b) {
            context.unbindService(this.d);
        }
        this.c = false;
        this.b = false;
        if (this.d == null) {
            this.d = new e(this, context, aVar);
        }
        Intent intent = new Intent();
        intent.setAction(str2);
        LogUtils.d(f10a, "hostPkg = " + str);
        if (str == null) {
            str = "com.tencent.wecarnavi";
        }
        intent.setPackage(str);
        context.bindService(intent, this.d, 1);
        this.f.postDelayed(new f(this, aVar), 10000L);
    }
}
