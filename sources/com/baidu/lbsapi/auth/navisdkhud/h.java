package com.baidu.lbsapi.auth.navisdkhud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Hashtable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class h extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LBSAuthManager f34a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(LBSAuthManager lBSAuthManager, Looper looper) {
        super(looper);
        this.f34a = lBSAuthManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Hashtable hashtable;
        if (a.f28a) {
            a.a("handleMessage !!");
        }
        String string = message.getData().getString("listenerKey");
        hashtable = LBSAuthManager.f;
        LBSAuthManagerListener lBSAuthManagerListener = (LBSAuthManagerListener) hashtable.get(string);
        if (a.f28a) {
            a.a("handleMessage listener = " + lBSAuthManagerListener);
        }
        if (lBSAuthManagerListener != null) {
            lBSAuthManagerListener.onAuthResult(message.what, message.obj.toString());
        }
    }
}
