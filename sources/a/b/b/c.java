package a.b.b;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.sceneengine.model.SceneMessage;
import com.tencent.sceneengine.model.StopCond;
import com.tencent.taiutils.GsonUtils;
import com.tencent.taiutils.log.LogUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static volatile c f11a;
    public n b;
    public List<SceneMessage> c = new CopyOnWriteArrayList();

    public static c a() {
        if (f11a == null) {
            synchronized (c.class) {
                if (f11a == null) {
                    f11a = new c();
                }
            }
        }
        return f11a;
    }

    public void a(Context context, int i) {
        LogUtils.d("MetaMsgManager", "accountEnvType=" + i);
        n nVar = new n();
        boolean z = false;
        nVar.b = context.getSharedPreferences("meta_messages_" + i, 0);
        nVar.f19a = nVar.b.edit();
        this.b = nVar;
        n nVar2 = this.b;
        if (nVar2 == null) {
            throw new IllegalStateException("MetaMsgManager has not been initiated");
        }
        String str = (String) nVar2.a("key_meta_msg_list", null);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) GsonUtils.mGson.fromJson(str, new b(this).getType());
        if (copyOnWriteArrayList != null) {
            StringBuilder a2 = a.a.a.a.a.a("restore messages.size = ");
            a2.append(copyOnWriteArrayList.size());
            LogUtils.d("MetaMsgManager", a2.toString());
            if (copyOnWriteArrayList.size() == 0) {
                return;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (a((SceneMessage) it.next())) {
                    z = true;
                }
            }
            if (z) {
                b();
            }
        }
    }

    public final boolean a(SceneMessage sceneMessage) {
        if (sceneMessage == null) {
            return false;
        }
        int size = this.c.size();
        LogUtils.i("MetaMsgManager", "addWithoutPersist size=" + size);
        for (int i = 0; i < size; i++) {
            SceneMessage sceneMessage2 = this.c.get(i);
            if (sceneMessage.isSameType(sceneMessage2)) {
                LogUtils.i("MetaMsgManager", "addWithoutPersist isSameType");
                if (sceneMessage.getMsgTime() <= sceneMessage2.getMsgTime()) {
                    return false;
                }
                this.c.set(i, sceneMessage);
                return true;
            }
            LogUtils.i("MetaMsgManager", "addWithoutPersist  not isSameType");
        }
        this.c.add(sceneMessage);
        return true;
    }

    public final synchronized void b() {
        if (this.b == null) {
            throw new IllegalStateException("MetaMsgManager has not been initiated");
        }
        this.b.b("key_meta_msg_list", GsonUtils.mGson.toJson(this.c));
    }

    public boolean b(SceneMessage sceneMessage) {
        boolean z;
        List<List<StopCond>> stoppedCond = sceneMessage.getStoppedCond();
        if (stoppedCond != null && stoppedCond.size() > 0) {
            loop0: for (List<StopCond> list : stoppedCond) {
                if (list != null && list.size() > 0) {
                    for (StopCond stopCond : list) {
                        if (stopCond != null && 2 == stopCond.stopCondType) {
                            z = true;
                            break loop0;
                        }
                    }
                }
            }
        }
        z = false;
        return !z;
    }
}
