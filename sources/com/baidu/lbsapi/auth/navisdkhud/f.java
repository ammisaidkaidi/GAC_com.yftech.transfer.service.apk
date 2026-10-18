package com.baidu.lbsapi.auth.navisdkhud;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f32a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f32a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        List list;
        e eVar = this.f32a;
        list = this.f32a.b;
        eVar.a(list);
    }
}
