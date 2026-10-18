package a.b.b;

import com.tencent.sceneengine.SceneEngine;
import com.tencent.sceneengine.model.SceneMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f16a;
    public final /* synthetic */ SceneMessage b;

    public i(SceneEngine sceneEngine, a aVar, SceneMessage sceneMessage) {
        this.f16a = aVar;
        this.b = sceneMessage;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((a.b.a.a) this.f16a).a(this.b);
    }
}
