package a.b.b.a;

import android.os.Handler;
import android.os.IBinder;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IBinder f5a;
    public final /* synthetic */ e b;

    public b(e eVar, IBinder iBinder) {
        this.b = eVar;
        this.f5a = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        LogUtils.d(g.f10a, "onLinkSuccess");
        ((a.b.b.e) this.b.b).a(this.f5a);
        handler = this.b.c.f;
        handler.removeCallbacksAndMessages(null);
    }
}
