package com.baidu.lbsapi.auth.navisdkhud;

import android.content.Context;
import java.util.Hashtable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f35a;
    final /* synthetic */ boolean b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ Hashtable e;
    final /* synthetic */ LBSAuthManager f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(LBSAuthManager lBSAuthManager, int i, boolean z, String str, String str2, Hashtable hashtable) {
        this.f = lBSAuthManager;
        this.f35a = i;
        this.b = z;
        this.c = str;
        this.d = str2;
        this.e = hashtable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        boolean b;
        l lVar;
        boolean b2;
        if (a.f28a) {
            StringBuilder sb = new StringBuilder();
            sb.append("status = ");
            sb.append(this.f35a);
            sb.append("; forced = ");
            sb.append(this.b);
            sb.append("checkAK = ");
            b2 = this.f.b(this.c);
            sb.append(b2);
            a.a(sb.toString());
        }
        if (this.f35a != 601 && !this.b && this.f35a != -1) {
            b = this.f.b(this.c);
            if (!b) {
                if (602 == this.f35a) {
                    if (a.f28a) {
                        a.a("authenticate wait  ");
                    }
                    lVar = LBSAuthManager.d;
                    lVar.b();
                } else if (a.f28a) {
                    a.a("authenticate else  ");
                }
                this.f.a((String) null, this.c);
                return;
            }
        }
        if (a.f28a) {
            a.a("authenticate sendAuthRequest");
        }
        context = LBSAuthManager.f27a;
        String[] b3 = b.b(context);
        if (a.f28a) {
            a.a("authStrings.length:" + b3.length);
        }
        if (b3 == null || b3.length <= 1) {
            this.f.a(this.b, this.d, this.e, this.c);
            return;
        }
        if (a.f28a) {
            a.a("more sha1 auth");
        }
        this.f.a(this.b, this.d, this.e, b3, this.c);
    }
}
