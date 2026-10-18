package com.tencent.tai.pal.client;

import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import com.tencent.tai.pal.extensible.ExtensibleAdapter;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.ins.InsAdapter;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.screen.ScreenAdapter;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter;
import java.util.HashMap;

/* compiled from: SupportUtils.java */
/* loaded from: /home/user/work/dex/classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private static final HashMap<Class, Class> f70a = new HashMap<>();

    static {
        f70a.put(PALAudioManager.class, AudioAdapter.class);
        f70a.put(PALBluetoothManager.class, BluetoothAdapter.class);
        f70a.put(PALCabinKeyInputManager.class, CabinKeyEventAdapter.class);
        f70a.put(PALExtensibleManager.class, ExtensibleAdapter.class);
        f70a.put(PALInsManager.class, InsAdapter.class);
        f70a.put(PALNetworkManager.class, NetworkAdapter.class);
        f70a.put(PALPowerManager.class, PowerAdapter.class);
        f70a.put(PALScreenManager.class, ScreenAdapter.class);
        f70a.put(PALTelephoneManager.class, TelephoneAdapter.class);
        f70a.put(PALVehicleBasicInfoManager.class, VehicleBasicInfoAdapter.class);
        f70a.put(PALVehicleRichInfoManager.class, VehicleRichInfoAdapter.class);
    }

    public static <T> boolean a(PlatformSupportInfo platformSupportInfo, Class<T> cls) {
        return platformSupportInfo.isAdapterSupported(f70a.get(cls));
    }
}
