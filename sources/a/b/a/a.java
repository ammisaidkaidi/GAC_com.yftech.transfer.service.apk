package a.b.a;

import com.tencent.scenebizsdk.SceneManager;
import com.tencent.scenebizsdk.model.SceneMsg;
import com.tencent.sceneengine.model.SceneMessage;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements a.b.b.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SceneManager f0a;

    public a(SceneManager sceneManager) {
        this.f0a = sceneManager;
    }

    public void a(SceneMessage sceneMessage) {
        a.b.a.b.c cVar;
        a.b.a.a.a aVar;
        if (sceneMessage == null) {
            LogUtils.d(SceneManager.f40a, "message is null");
            return;
        }
        if (sceneMessage.getMsgType() == 5) {
            cVar = this.f0a.e;
            SceneMsg a2 = cVar.a(sceneMessage.getPayload(), sceneMessage.getMsgId(), sceneMessage.getMsgTime());
            if (a2 != null) {
                aVar = this.f0a.d;
                ((a.b.a.a.b) aVar).a(a2);
            }
        }
    }
}
