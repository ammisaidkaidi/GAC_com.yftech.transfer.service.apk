package a.b.b;

import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.sceneengine.SceneEngine;
import com.tencent.taiutils.log.LogUtils;
import com.tencent.wecarbase.cloud.IPushService;

/* loaded from: /home/user/work/dex/classes.dex */
public class e implements a.b.b.a.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f13a;

    public e(f fVar) {
        this.f13a = fVar;
    }

    public void a() {
        LogUtils.d(SceneEngine.f42a, "TaiSceneMsg onLinkDisconnected");
        this.f13a.f14a.a(3000L);
    }

    public void a(int i, String str) {
        LogUtils.d(SceneEngine.f42a, "TaiSceneMsg onLinkFailed errCode = " + i + " msg = " + str);
        this.f13a.f14a.a(3000L);
    }

    public void a(IBinder iBinder) {
        LogUtils.d(SceneEngine.f42a, "TaiSceneMsg onLinkSuccess");
        this.f13a.f14a.i = IPushService.Stub.asInterface(iBinder);
        try {
            this.f13a.f14a.b();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
