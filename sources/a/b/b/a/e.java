package a.b.b.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class e implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f8a;
    public final /* synthetic */ a b;
    public final /* synthetic */ g c;

    public e(g gVar, Context context, a aVar) {
        this.c = gVar;
        this.f8a = context;
        this.b = aVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean z;
        IBinder iBinder2;
        Handler handler;
        ServiceConnection serviceConnection;
        LogUtils.d(g.f10a, "onServiceConnected");
        z = this.c.c;
        if (z) {
            Context context = this.f8a;
            serviceConnection = this.c.d;
            context.unbindService(serviceConnection);
            return;
        }
        this.c.b = true;
        if (this.b != null) {
            handler = this.c.f;
            handler.post(new b(this, iBinder));
        }
        this.c.e = iBinder;
        try {
            iBinder2 = this.c.e;
            iBinder2.linkToDeath(new d(this), 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        LogUtils.d(g.f10a, "onServiceDisconnected");
        this.c.b = false;
    }
}
