package com.baidu.lbsapi.auth.navisdkhud;

import com.baidu.lbsapi.auth.navisdkhud.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class k implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f37a;
    final /* synthetic */ LBSAuthManager b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(LBSAuthManager lBSAuthManager, String str) {
        this.b = lBSAuthManager;
        this.f37a = str;
    }

    @Override // com.baidu.lbsapi.auth.navisdkhud.e.a
    public void a(String str) {
        this.b.a(str, this.f37a);
    }
}
