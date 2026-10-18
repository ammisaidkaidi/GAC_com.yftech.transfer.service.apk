package com.tencent.tai.pal.service;

import android.content.Context;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.audio.AudioService;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import com.tencent.tai.pal.extensible.ExtensibleAdapter;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.ins.InsAdapter;
import com.tencent.tai.pal.ins.c;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.tencent.tai.pal.network.e;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.screen.ScreenAdapter;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.tencent.tai.pal.telephone.d;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter;
import java.util.HashMap;

/* compiled from: ServiceRegistry.java */
/* loaded from: /home/user/work/dex/classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f146a = new Object();
    private HashMap<String, com.tencent.tai.pal.service.a> b;
    private String c;
    private com.tencent.tai.pal.platform.adapter.a d;

    private b() {
        this.b = new HashMap<>();
    }

    /* compiled from: ServiceRegistry.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static b f147a = new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        return a.f147a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        if (this.d == null) {
            this.d = new com.tencent.tai.pal.platform.adapter.a();
            this.d.a(context.getApplicationContext());
            this.c = this.d.a().toString();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private com.tencent.tai.pal.service.a b(String str) {
        char c;
        switch (str.hashCode()) {
            case -2121370309:
                if (str.equals(SDKConstants.SERVICE_AUDIO)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -2114178769:
                if (str.equals(SDKConstants.SERVICE_INPUT)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -2107678102:
                if (str.equals(SDKConstants.SERVICE_POWER)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1907588970:
                if (str.equals(SDKConstants.SERVICE_EXTENSIBLE)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1575269655:
                if (str.equals(SDKConstants.SERVICE_TELEPHONE)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1139587389:
                if (str.equals(SDKConstants.SERVICE_VEHICLE_RICH_INFO)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -838855801:
                if (str.equals(SDKConstants.SERVICE_SCREEN)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -389588589:
                if (str.equals(SDKConstants.SERVICE_BLUETOOTH)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -319518061:
                if (str.equals(SDKConstants.SERVICE_INS)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -317625773:
                if (str.equals(SDKConstants.SERVICE_NETWORK)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1677736941:
                if (str.equals(SDKConstants.SERVICE_VEHICLE_BASIC_INFO)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                AudioService audioService = new AudioService();
                audioService.a(this.d.a(AudioAdapter.class));
                return audioService;
            case 1:
                com.tencent.tai.pal.bluetooth.a aVar = new com.tencent.tai.pal.bluetooth.a();
                aVar.a(this.d.a(BluetoothAdapter.class));
                return aVar;
            case 2:
                com.tencent.tai.pal.input.b bVar = new com.tencent.tai.pal.input.b();
                bVar.a(this.d.a(CabinKeyEventAdapter.class));
                return bVar;
            case 3:
                c cVar = new c();
                cVar.a(this.d.a(InsAdapter.class));
                return cVar;
            case 4:
                e eVar = new e();
                eVar.a(this.d.a(NetworkAdapter.class));
                return eVar;
            case 5:
                com.tencent.tai.pal.power.c cVar2 = new com.tencent.tai.pal.power.c();
                cVar2.a(this.d.a(PowerAdapter.class));
                return cVar2;
            case 6:
                com.tencent.tai.pal.screen.b bVar2 = new com.tencent.tai.pal.screen.b();
                bVar2.a(this.d.a(ScreenAdapter.class));
                return bVar2;
            case 7:
                d dVar = new d();
                dVar.a(this.d.a(TelephoneAdapter.class));
                return dVar;
            case '\b':
                com.tencent.tai.pal.vehiclebasicinfo.d dVar2 = new com.tencent.tai.pal.vehiclebasicinfo.d();
                dVar2.a(this.d.a(VehicleBasicInfoAdapter.class));
                return dVar2;
            case '\t':
                com.tencent.tai.pal.vehiclerichinfo.d dVar3 = new com.tencent.tai.pal.vehiclerichinfo.d();
                dVar3.a(this.d.a(VehicleRichInfoAdapter.class));
                return dVar3;
            case '\n':
                com.tencent.tai.pal.extensible.a aVar2 = new com.tencent.tai.pal.extensible.a();
                aVar2.a(this.d.a(ExtensibleAdapter.class));
                return aVar2;
            default:
                return null;
        }
    }

    private void a(String str, com.tencent.tai.pal.service.a aVar) {
        Log.i(SDKConstants.TAG, "ServiceRegistry.registerService serviceName=" + str);
        synchronized (f146a) {
            this.b.put(str, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.tencent.tai.pal.service.a a(String str) {
        com.tencent.tai.pal.service.a aVar;
        Log.i(SDKConstants.TAG, "ServiceRegistry.getService serviceName=" + str);
        synchronized (f146a) {
            aVar = this.b.get(str);
        }
        if (aVar == null && (aVar = b(str)) != null) {
            a(str, aVar);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.c;
    }
}
