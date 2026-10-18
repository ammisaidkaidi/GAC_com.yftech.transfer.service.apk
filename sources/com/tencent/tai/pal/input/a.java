package com.tencent.tai.pal.input;

import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALCabinKeyInputManager;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: CabinKeyEventCompat.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Map<c, Object> f118a = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(c cVar, int i, int i2, int i3, long j, long j2) throws RemoteException {
        switch (i2) {
            case 3:
            case 4:
                i2 = 2;
                break;
        }
        int i4 = i2;
        Log.i(SDKConstants.TAG, "CabinKeyEventCompat onWeCarFlowLongPressKeyForService source=" + i + " action=" + i4 + " keyCode=" + i3 + " downTime=" + j + " eventTime=" + j2);
        cVar.a(new CabinKeyEvent(i, i4, i3, j, j2));
    }

    public static void a(PALCabinKeyInputManager.CabinKeyEventHandler cabinKeyEventHandler, int i, int i2, int i3, long j, long j2) {
        switch (i2) {
            case 3:
            case 4:
                i2 = 2;
                break;
        }
        int i4 = i2;
        Log.i(SDKConstants.TAG, "CabinKeyEventCompat onWeCarFlowLongPressKeyForService source=" + i + " action=" + i4 + " keyCode=" + i3 + " downTime=" + j + " eventTime=" + j2);
        cabinKeyEventHandler.onKeyEvent(new CabinKeyEvent(i, i4, i3, j, j2));
    }

    public static boolean a(int i) {
        switch (i) {
            case 8:
            case 9:
            case 12:
            case 13:
                Log.i(SDKConstants.TAG, "CabinKeyEventCompat isWeCarFlowKeyCode keyCode=" + i + " isWeCarFlowKeyCode=true");
                return true;
            case 10:
            case 11:
            default:
                Log.i(SDKConstants.TAG, "CabinKeyEventCompat isWeCarFlowKeyCode keyCode=" + i + " isWeCarFlowKeyCode=false");
                return false;
        }
    }
}
