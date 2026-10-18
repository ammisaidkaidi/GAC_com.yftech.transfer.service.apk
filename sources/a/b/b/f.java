package a.b.b;

import android.content.Context;
import com.tencent.sceneengine.SceneEngine;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SceneEngine f14a;

    public f(SceneEngine sceneEngine) {
        this.f14a = sceneEngine;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.b.b.a.g gVar;
        Context context;
        String str;
        String str2;
        LogUtils.d(SceneEngine.f42a, "TaiSceneMsg linkRemoteService");
        gVar = this.f14a.h;
        context = this.f14a.d;
        str = this.f14a.q;
        str2 = this.f14a.r;
        gVar.a(context, str, str2, new e(this));
    }
}
