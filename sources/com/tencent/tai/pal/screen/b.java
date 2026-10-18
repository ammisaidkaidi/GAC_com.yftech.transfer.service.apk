package com.tencent.tai.pal.screen;

import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.tai.pal.screen.a;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: ScreenService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class b extends a.AbstractBinderC0037a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f143a = "b";
    private ScreenAdapter b;

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.screen.a
    public int a() throws RemoteException {
        if (this.b == null) {
            return 0;
        }
        return this.b.getScreenBrightness();
    }

    @Override // com.tencent.tai.pal.screen.a
    public int b() throws RemoteException {
        if (this.b == null) {
            return 0;
        }
        return this.b.getScreenMAXBrightness();
    }

    @Override // com.tencent.tai.pal.screen.a
    public boolean a(int i, int i2) throws RemoteException {
        return this.b != null && this.b.adjustScreenBrightness(i, i2) == 1;
    }

    @Override // com.tencent.tai.pal.screen.a
    public boolean d() throws RemoteException {
        if (this.b == null) {
            return false;
        }
        return this.b.isScreenMute();
    }

    @Override // com.tencent.tai.pal.screen.a
    public int b(int i, int i2) throws RemoteException {
        if (this.b == null) {
            return 2;
        }
        return this.b.adjustScreenBrightness(i, i2);
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter == null) {
            throw new NullPointerException("adapter should not be null!");
        }
        if (!(baseAdapter instanceof ScreenAdapter)) {
            throw new IllegalArgumentException("param not ScreenAdapter");
        }
        this.b = (ScreenAdapter) baseAdapter;
    }
}
