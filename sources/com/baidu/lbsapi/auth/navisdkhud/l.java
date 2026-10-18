package com.baidu.lbsapi.auth.navisdkhud;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class l extends Thread {

    /* renamed from: a, reason: collision with root package name */
    Handler f38a;
    private Object b;
    private boolean c;

    l() {
        this.f38a = null;
        this.b = new Object();
        this.c = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        super(str);
        this.f38a = null;
        this.b = new Object();
        this.c = false;
    }

    public void a() {
        if (a.f28a) {
            a.a("Looper thread quit()");
        }
        this.f38a.getLooper().quit();
    }

    public void b() {
        synchronized (this.b) {
            try {
                if (!this.c) {
                    this.b.wait();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void c() {
        synchronized (this.b) {
            this.c = true;
            this.b.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f38a = new Handler();
        if (a.f28a) {
            a.a("new Handler() finish!!");
        }
        Looper.loop();
        if (a.f28a) {
            a.a("LooperThread run() thread id:" + String.valueOf(Thread.currentThread().getId()));
        }
    }
}
