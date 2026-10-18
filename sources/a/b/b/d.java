package a.b.b;

import com.tencent.sceneengine.SceneEngine;
import java.util.List;
import java.util.TimerTask;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SceneEngine f12a;

    public d(SceneEngine sceneEngine) {
        this.f12a = sceneEngine;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        List list;
        list = this.f12a.e;
        if (list.size() > 0) {
            this.f12a.c();
        }
    }
}
