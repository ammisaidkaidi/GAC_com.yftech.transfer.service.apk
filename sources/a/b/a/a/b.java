package a.b.a.a;

import com.tencent.scenebizsdk.IMsgListener;
import com.tencent.scenebizsdk.model.SceneMsg;
import com.tencent.taiutils.log.LogUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1a = "b";
    public CopyOnWriteArrayList<IMsgListener> b = new CopyOnWriteArrayList<>();

    public void a(IMsgListener iMsgListener) {
        LogUtils.d(f1a, "add listener: " + iMsgListener);
        this.b.addIfAbsent(iMsgListener);
    }

    public void a(SceneMsg sceneMsg) {
        Iterator<IMsgListener> it = this.b.iterator();
        while (it.hasNext()) {
            IMsgListener next = it.next();
            LogUtils.d(f1a, "dispatch to listener: " + next);
            next.onMsgReceived(sceneMsg);
        }
    }

    public void b(IMsgListener iMsgListener) {
        LogUtils.d(f1a, "remove listener: " + iMsgListener);
        this.b.remove(iMsgListener);
    }
}
