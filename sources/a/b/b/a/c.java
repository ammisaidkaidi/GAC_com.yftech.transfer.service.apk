package a.b.b.a;

import android.os.Handler;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f6a;

    public c(d dVar) {
        this.f6a = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        LogUtils.d(g.f10a, "onLinkDisconnected");
        handler = this.f6a.f7a.c.f;
        handler.removeCallbacksAndMessages(null);
        ((a.b.b.e) this.f6a.f7a.b).a();
        this.f6a.f7a.c.e = null;
    }
}
