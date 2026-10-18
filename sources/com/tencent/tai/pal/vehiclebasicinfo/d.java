package com.tencent.tai.pal.vehiclebasicinfo;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.b;

/* compiled from: VehicleBasicInfoService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class d extends b.a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private VehicleBasicInfoAdapter f160a;
    private final RemoteCallbackList<c> b = new RemoteCallbackList<>();
    private final RemoteCallbackList<a> c = new RemoteCallbackList<>();
    private boolean d = false;
    private VehicleBasicInfoAdapter.OnVehicleSpeedListener e = new VehicleBasicInfoAdapter.OnVehicleSpeedListener() { // from class: com.tencent.tai.pal.vehiclebasicinfo.d.1
        @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter.OnVehicleSpeedListener
        public void onSpeedChanged(VehicleBasicInfoAdapter.SpeedInfo speedInfo) {
            d.this.a(speedInfo);
        }
    };
    private boolean f = false;
    private VehicleBasicInfoAdapter.OnVehicleBasicInfoListener g = new VehicleBasicInfoAdapter.OnVehicleBasicInfoListener() { // from class: com.tencent.tai.pal.vehiclebasicinfo.d.2
        @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter.OnVehicleBasicInfoListener
        public void onDayNightModeChanged(int i) {
            d.this.c(i);
        }

        @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter.OnVehicleBasicInfoListener
        public void onGearChanged(int i) {
            d.this.d(i);
        }

        @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter.OnVehicleBasicInfoListener
        public void onSeatBeltBuckledChanged(int i, boolean z) {
            d.this.a(i, z);
        }

        @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter.OnVehicleBasicInfoListener
        public void onPowerEventChange(int i) {
            d.this.e(i);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public boolean d() throws RemoteException {
        return false;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public void a(c cVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:registerCallback callback: " + cVar);
        synchronized (this.b) {
            this.b.register(cVar);
            if (this.b.getRegisteredCallbackCount() > 0 && !this.f && this.f160a != null) {
                this.f160a.registerOnVehicleBasicInfoListener(this.g);
                this.f = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public void b(c cVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:unregisterCallback callback: " + cVar);
        synchronized (this.b) {
            this.b.unregister(cVar);
            if (this.b.getRegisteredCallbackCount() == 0 && this.f && this.f160a != null) {
                this.f160a.unregisterOnVehicleBasicInfoListener(this.g);
                this.f = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String a() throws RemoteException {
        if (this.f160a == null) {
            Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getDeviceId adapter null");
            return null;
        }
        String deviceId = this.f160a.getDeviceId();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getDeviceId adapter result=" + deviceId);
        return deviceId;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String b() throws RemoteException {
        if (this.f160a == null) {
            Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getVehicleId adapter null");
            return null;
        }
        String vehicleId = this.f160a.getVehicleId();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getVehicleId adapter result=" + vehicleId);
        return vehicleId;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public float e() throws RemoteException {
        if (this.f160a == null) {
            Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getSpeed adapter null");
            return 0.0f;
        }
        VehicleBasicInfoAdapter.SpeedInfo speed = this.f160a.getSpeed();
        float speedInMetersPerSecond = speed != null ? speed.getSpeedInMetersPerSecond() : 0.0f;
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getSpeed adapter speedInfo=" + speed + " speed:" + speedInMetersPerSecond);
        return speedInMetersPerSecond;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public int g() throws RemoteException {
        int gear = this.f160a.getGear();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getGear adapter result=" + gear);
        return gear;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String a(int i) throws RemoteException {
        return this.f160a.toGearString(i);
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public boolean b(int i) throws RemoteException {
        boolean seatBeltBuckled = this.f160a.getSeatBeltBuckled(i);
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getSeatBeltBuckled adapter result=" + seatBeltBuckled);
        return seatBeltBuckled;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public void a(a aVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:registerSpeedListener listener: " + aVar);
        synchronized (this.c) {
            this.c.register(aVar);
            if (this.c.getRegisteredCallbackCount() > 0 && !this.d && this.f160a != null) {
                this.f160a.registerOnVehicleSpeedListener(this.e);
                this.d = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public void b(a aVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:unregisterSpeedListener listener: " + aVar);
        synchronized (this.c) {
            this.c.unregister(aVar);
            if (this.c.getRegisteredCallbackCount() == 0 && this.d && this.f160a != null) {
                this.f160a.unregisterOnVehicleSpeedListener(this.e);
                this.d = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String h() throws RemoteException {
        String permanentPartitionPath = this.f160a.getPermanentPartitionPath();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getPermanentPartitionPath return path=" + permanentPartitionPath);
        return permanentPartitionPath;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String i() throws RemoteException {
        String channel = this.f160a.getChannel();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getChannel return channel=" + channel);
        return channel;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public String j() throws RemoteException {
        String vehicleModel = this.f160a.getVehicleModel();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getVehicleModel return vehicleModel=" + vehicleModel);
        return vehicleModel;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.b
    public int f() throws RemoteException {
        if (this.f160a == null) {
            return -1;
        }
        int dayNightMode = this.f160a.getDayNightMode();
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:getDayNightMode adapter result=" + dayNightMode);
        return dayNightMode;
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof VehicleBasicInfoAdapter) {
            this.f160a = (VehicleBasicInfoAdapter) baseAdapter;
            synchronized (this.b) {
                if (this.b.getRegisteredCallbackCount() > 0) {
                    this.f = true;
                    this.f160a.registerOnVehicleBasicInfoListener(this.g);
                } else {
                    this.f = false;
                }
            }
            synchronized (this.c) {
                if (this.c.getRegisteredCallbackCount() > 0) {
                    this.d = true;
                    this.f160a.registerOnVehicleSpeedListener(this.e);
                } else {
                    this.d = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:notifyDayOrNightModeChanged dayNightMode:" + i);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.b.getBroadcastItem(i2).b(i);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.b.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:notifyGearChanged changedGear:" + i);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.b.getBroadcastItem(i2).a(i);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.b.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:notifySeatBeltBuckledChanged whichSeat:" + i + " buckled:" + z);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.b.getBroadcastItem(i2).a(i, z);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.b.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(VehicleBasicInfoAdapter.SpeedInfo speedInfo) {
        float speedInMetersPerSecond = speedInfo == null ? 0.0f : speedInfo.getSpeedInMetersPerSecond();
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            Log.i(SDKConstants.TAG, "VehicleBasicInfoService:notifySpeedChanged speedInfo:" + speedInfo + " speed:" + speedInMetersPerSecond + " count:" + beginBroadcast);
            while (beginBroadcast > 0) {
                beginBroadcast--;
                try {
                    this.c.getBroadcastItem(beginBroadcast).a(speedInMetersPerSecond);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.c.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        Log.i(SDKConstants.TAG, "VehicleBasicInfoService:onPowerEventChange event: " + i);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            while (beginBroadcast > 0) {
                beginBroadcast--;
                try {
                    this.b.getBroadcastItem(beginBroadcast).c(i);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                    if (i == 3 || i == 2) {
                        a(beginBroadcast, i);
                    }
                }
            }
            this.b.finishBroadcast();
        }
    }

    private void a(int i, int i2) {
        try {
            if (i2 == 2) {
                this.b.getBroadcastItem(i).a(true);
            } else {
                this.b.getBroadcastItem(i).a(false);
            }
        } catch (Exception e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }
}
