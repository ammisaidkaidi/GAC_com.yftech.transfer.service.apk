package a.b.b.a;

import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f9a;
    public final /* synthetic */ g b;

    public f(g gVar, a aVar) {
        this.b = gVar;
        this.f9a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        z = this.b.b;
        if (z) {
            return;
        }
        this.b.c = true;
        LogUtils.d(g.f10a, "isTimeOut");
        a aVar = this.f9a;
        if (aVar != null) {
            ((a.b.b.e) aVar).a(101, "link timeout !");
        }
    }
}
