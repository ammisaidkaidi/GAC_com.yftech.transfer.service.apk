package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.client.PALScreenManager;
import com.tencent.tai.pal.screen.a;

/* compiled from: ScreenManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class i extends com.tencent.tai.pal.client.cs.a implements PALScreenManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f93a = "i";
    private com.tencent.tai.pal.screen.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context) {
        super(context, SDKConstants.SERVICE_SCREEN, null);
        this.b = null;
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        Log.i(f93a, "onServiceConnected binder:" + iBinder);
        this.b = a.AbstractBinderC0037a.a(iBinder);
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        Log.i(f93a, "onServiceDisconnected");
        this.b = null;
    }

    @Override // com.tencent.tai.pal.client.PALScreenManager, com.tencent.tai.pal.screen.IScreen
    public int adjustScreenBrightness(int i, int i2) {
        com.tencent.tai.pal.screen.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "adjustScreenBrightness screenApiAidl == null");
            return 2;
        }
        e();
        try {
            VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
            if (remoteVersion == null || remoteVersion.compareTo(com.tencent.tai.pal.c.d) < 0) {
                return aVar.a(i, i2) ? 1 : 2;
            }
            return aVar.b(i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 2;
        }
    }

    @Override // com.tencent.tai.pal.client.PALScreenManager, com.tencent.tai.pal.screen.IScreen
    public int getScreenBrightness() {
        com.tencent.tai.pal.screen.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getScreenBrightness screenApiAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.a();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALScreenManager, com.tencent.tai.pal.screen.IScreen
    public int getScreenMAXBrightness() {
        com.tencent.tai.pal.screen.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getScreenMAXBrightness screenApiAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.b();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALScreenManager, com.tencent.tai.pal.screen.IScreen
    public boolean isScreenMute() {
        com.tencent.tai.pal.screen.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "isScreenMute screenApiAidl == null");
            return false;
        }
        e();
        try {
            return aVar.d();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
