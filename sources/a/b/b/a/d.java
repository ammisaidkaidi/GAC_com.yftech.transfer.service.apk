package a.b.b.a;

import android.os.Handler;
import android.os.IBinder;

/* loaded from: /home/user/work/dex/classes.dex */
public class d implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f7a;

    public d(e eVar) {
        this.f7a = eVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        Handler handler;
        e eVar = this.f7a;
        if (eVar.b != null) {
            handler = eVar.c.f;
            handler.post(new c(this));
        }
    }
}
