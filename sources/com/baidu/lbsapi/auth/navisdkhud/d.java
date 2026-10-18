package com.baidu.lbsapi.auth.navisdkhud;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f30a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f30a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        HashMap hashMap;
        a.a("postWithHttps start Thread id = " + String.valueOf(Thread.currentThread().getId()));
        context = this.f30a.f29a;
        g gVar = new g(context);
        hashMap = this.f30a.b;
        this.f30a.a(gVar.a(hashMap));
    }
}
