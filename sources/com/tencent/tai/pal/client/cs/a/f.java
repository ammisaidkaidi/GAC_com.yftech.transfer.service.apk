package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import com.tencent.tai.pal.client.PALAudioManager;
import com.tencent.tai.pal.client.PALBluetoothManager;
import com.tencent.tai.pal.client.PALCabinKeyInputManager;
import com.tencent.tai.pal.client.PALExtensibleManager;
import com.tencent.tai.pal.client.PALInsManager;
import com.tencent.tai.pal.client.PALNetworkManager;
import com.tencent.tai.pal.client.PALPowerManager;
import com.tencent.tai.pal.client.PALScreenManager;
import com.tencent.tai.pal.client.PALTelephoneManager;
import com.tencent.tai.pal.client.PALVehicleBasicInfoManager;
import com.tencent.tai.pal.client.PALVehicleRichInfoManager;

/* compiled from: ManagerFactory.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class f {
    public com.tencent.tai.pal.client.cs.a a(Context context, Class cls) {
        if (cls == PALAudioManager.class) {
            return new a(context);
        }
        if (cls == PALBluetoothManager.class) {
            return new b(context);
        }
        if (cls == PALCabinKeyInputManager.class) {
            return new c(context);
        }
        if (cls == PALPowerManager.class) {
            return new h(context);
        }
        if (cls == PALVehicleBasicInfoManager.class) {
            return new l(context);
        }
        if (cls == PALInsManager.class) {
            return new e(context);
        }
        if (cls == PALScreenManager.class) {
            return new i(context);
        }
        if (cls == PALNetworkManager.class) {
            return new g(context);
        }
        if (cls == PALTelephoneManager.class) {
            return new k(context);
        }
        if (cls == PALVehicleRichInfoManager.class) {
            return new m(context);
        }
        if (cls == PALExtensibleManager.class) {
            return new d(context);
        }
        throw new IllegalArgumentException("unknown class " + cls.getSimpleName());
    }
}
