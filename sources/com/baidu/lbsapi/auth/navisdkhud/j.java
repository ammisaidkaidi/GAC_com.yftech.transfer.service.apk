package com.baidu.lbsapi.auth.navisdkhud;

import com.baidu.lbsapi.auth.navisdkhud.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class j implements c.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f36a;
    final /* synthetic */ LBSAuthManager b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(LBSAuthManager lBSAuthManager, String str) {
        this.b = lBSAuthManager;
        this.f36a = str;
    }

    @Override // com.baidu.lbsapi.auth.navisdkhud.c.a
    public void a(String str) {
        this.b.a(str, this.f36a);
    }
}
