package com.tencent.scenebizsdk;

import a.b.a.a.b;
import a.b.a.b.c;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Keep;
import com.tencent.scenebizsdk.model.SceneMsg;
import com.tencent.sceneengine.IMessageValidator;
import com.tencent.sceneengine.SceneEngine;
import com.tencent.taiutils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f40a = "SceneManager";
    public static boolean b;
    public a.b.b.a c;
    public a.b.a.a.a d;
    public c e;
    public Handler f = new Handler(Looper.getMainLooper());

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SceneManager f41a = new SceneManager(null);
    }

    public SceneManager() {
        b = false;
        this.e = new c();
        this.d = new b();
        this.c = new a.b.a.a(this);
    }

    public /* synthetic */ SceneManager(a.b.a.a aVar) {
        b = false;
        this.e = new c();
        this.d = new b();
        this.c = new a.b.a.a(this);
    }

    @Keep
    public static SceneManager getInstance() {
        return a.f41a;
    }

    @Keep
    public void dispatchSceneMsg(String str, String str2, long j) {
        SceneMsg a2 = this.e.a(str, str2, j);
        if (a2 != null) {
            ((b) this.d).a(a2);
        }
    }

    @Keep
    public void init(Context context) {
        init(context, "com.tencent.wecar");
    }

    @Keep
    public void init(Context context, String str) {
        synchronized (SceneManager.class) {
            if (!b) {
                String str2 = f40a;
                StringBuilder sb = new StringBuilder();
                sb.append("init hostPkg = ");
                sb.append(str);
                LogUtils.d(str2, sb.toString());
                this.f.post(new a.b.a.b(this, context, str));
            }
        }
    }

    @Keep
    public void init(Context context, String str, String str2) {
        synchronized (SceneManager.class) {
            if (!b) {
                String str3 = f40a;
                StringBuilder sb = new StringBuilder();
                sb.append("init hostPkg = ");
                sb.append(str);
                sb.append(", action = ");
                sb.append(str2);
                LogUtils.d(str3, sb.toString());
                this.f.post(new a.b.a.c(this, context, str, str2));
            }
        }
    }

    @Keep
    public void registerMsgValidator(int i, IMessageValidator iMessageValidator) {
        SceneEngine.a().a(i, iMessageValidator);
    }

    @Keep
    public void registerSceneMsgListener(IMsgListener iMsgListener) {
        ((b) this.d).a(iMsgListener);
    }

    @Keep
    public void uninit() {
        synchronized (SceneManager.class) {
            if (b) {
                LogUtils.d(f40a, "uninit");
                SceneEngine.a().b(this.c);
                b = false;
            }
        }
    }

    @Keep
    public void unregisterMsgValidator(int i) {
        SceneEngine.a().c(i);
    }

    @Keep
    public void unregisterSceneMsgListener(IMsgListener iMsgListener) {
        ((b) this.d).b(iMsgListener);
    }
}
