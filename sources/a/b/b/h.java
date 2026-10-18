package a.b.b;

import com.tencent.sceneengine.SceneEngine;
import com.tencent.wecarbase.cloud.IPushMessageListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class h extends IPushMessageListener.Stub {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SceneEngine f15a;

    public h(SceneEngine sceneEngine) {
        this.f15a = sceneEngine;
    }

    @Override // com.tencent.wecarbase.cloud.IPushMessageListener
    public void onMessageReceived(String str) {
        this.f15a.a(str, false);
    }
}
