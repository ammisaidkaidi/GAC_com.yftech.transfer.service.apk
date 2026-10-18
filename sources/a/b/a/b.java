package a.b.a;

import android.content.Context;
import com.tencent.scenebizsdk.SceneManager;
import com.tencent.sceneengine.SceneEngine;

/* loaded from: /home/user/work/dex/classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f2a;
    public final /* synthetic */ String b;
    public final /* synthetic */ SceneManager c;

    public b(SceneManager sceneManager, Context context, String str) {
        this.c = sceneManager;
        this.f2a = context;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.b.b.a aVar;
        SceneEngine a2 = SceneEngine.a();
        Context context = this.f2a;
        a2.a(context, "SceneBizSdk", context.getPackageName(), this.b, "com.tencent.taes.push.mqtt.MqttManager.TaiPushService");
        SceneEngine a3 = SceneEngine.a();
        aVar = this.c.c;
        a3.a(aVar);
        SceneManager.b = true;
    }
}
