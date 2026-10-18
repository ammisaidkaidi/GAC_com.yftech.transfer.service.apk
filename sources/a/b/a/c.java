package a.b.a;

import android.content.Context;
import com.tencent.scenebizsdk.SceneManager;
import com.tencent.sceneengine.SceneEngine;

/* loaded from: /home/user/work/dex/classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f4a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ SceneManager d;

    public c(SceneManager sceneManager, Context context, String str, String str2) {
        this.d = sceneManager;
        this.f4a = context;
        this.b = str;
        this.c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.b.b.a aVar;
        SceneEngine a2 = SceneEngine.a();
        Context context = this.f4a;
        a2.a(context, "SceneBizSdk", context.getPackageName(), this.b, this.c);
        SceneEngine a3 = SceneEngine.a();
        aVar = this.d.c;
        a3.a(aVar);
        SceneManager.b = true;
    }
}
