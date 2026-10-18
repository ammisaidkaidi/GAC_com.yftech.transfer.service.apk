package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.yftech.transfer.service.utils.SystemProperty;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class VehicleBasicInfoAdapterImpl extends VehicleBasicInfoAdapter {
    private static final String SN_KEY_STR = "ro.serialno";
    private static final String SN_KEY_STR_TEST = "persist.vehicle.sn.test";
    private static final boolean TEST = false;
    private static final String TEST_SN = "QYTOTCARNO1906001201";
    private static final String TEST_VIN = "DFLZMSX5G81800015";
    private static final String VIN_KEY_STR = "persist.vehicle.vin";
    private static final String VIN_KEY_STR_TEST = "persist.vehicle.vin.test";
    private Context mContext;
    private int mCurGear;
    private List<VehicleBasicInfoAdapter.OnVehicleBasicInfoListener> mOnVehicleBasicInfoListeners = new ArrayList();
    private List<VehicleBasicInfoAdapter.OnVehicleSpeedListener> mOnVehicleSpeedListeners = new ArrayList();
    private Object mLockObj = new Object();
    private float mCurSpeed = 16.666668f;

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public String getChannel() {
        return "h2Dq3yklYoU1C+5phbTre2FGxplWezCr4lfdbbgYUiwsE9sI/NL1RUnUFIG9PH8nT2sFmI1/Tg2DQj4f9+igRfmil978cBJYjgdlw4Szhj0=";
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public String getVehicleModel() {
        return null;
    }

    public VehicleBasicInfoAdapterImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public String getDeviceId() {
        String str = SystemProperty.get(this.mContext, SN_KEY_STR);
        if (TextUtils.isEmpty(str)) {
            str = "00000000000000000000";
        }
        PlatformAdapter.LOGI("call getDeviceId ,return value:" + str + ",isTest:false");
        return str;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public String getVehicleId() {
        String str = SystemProperty.get(this.mContext, VIN_KEY_STR);
        if (TextUtils.isEmpty(str)) {
            str = "0000000000000000";
        }
        PlatformAdapter.LOGI("call getVehicleId ,return value:" + str + "，isTest:false");
        return str;
    }

    public void onVehicleSpeedChange(int i) {
        this.mCurSpeed = 16.666668f;
        notifySpeedChanged(this.mCurSpeed);
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public VehicleBasicInfoAdapter.SpeedInfo getSpeed() {
        return new VehicleBasicInfoAdapter.SpeedInfo(this.mCurSpeed, SDKConstants.SpeedUnit.METERS_PER_SECOND);
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public int getDayNightMode() {
        PlatformAdapter.LOGI("call getDayNightMode,return  value: 1");
        return 1;
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public int getGear() {
        PlatformAdapter.LOGI("call getGear,return  value: 4");
        return 4;
    }

    public void onVehicleGearsChange(int i) {
        PlatformAdapter.LOGI("system value output :::: notifyGearChanged gear = 4");
        notifyGearChanged(4);
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public boolean getSeatBeltBuckled(int i) {
        PlatformAdapter.LOGI("call getSeatBeltBuckled,return  value: true");
        return true;
    }

    private void notifyDayNightModeChanged(int i) {
        if (this.mOnVehicleBasicInfoListeners.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            Iterator<VehicleBasicInfoAdapter.OnVehicleBasicInfoListener> it = this.mOnVehicleBasicInfoListeners.iterator();
            while (it.hasNext()) {
                it.next().onDayNightModeChanged(i);
            }
        }
    }

    private void notifyGearChanged(int i) {
        if (this.mOnVehicleBasicInfoListeners.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            Iterator<VehicleBasicInfoAdapter.OnVehicleBasicInfoListener> it = this.mOnVehicleBasicInfoListeners.iterator();
            while (it.hasNext()) {
                it.next().onGearChanged(i);
            }
        }
    }

    private void notifySpeedChanged(float f) {
        if (this.mOnVehicleSpeedListeners.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            Iterator<VehicleBasicInfoAdapter.OnVehicleSpeedListener> it = this.mOnVehicleSpeedListeners.iterator();
            while (it.hasNext()) {
                it.next().onSpeedChanged(new VehicleBasicInfoAdapter.SpeedInfo(f, SDKConstants.SpeedUnit.METERS_PER_SECOND));
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public void registerOnVehicleBasicInfoListener(VehicleBasicInfoAdapter.OnVehicleBasicInfoListener onVehicleBasicInfoListener) {
        synchronized (this.mLockObj) {
            if (!this.mOnVehicleBasicInfoListeners.contains(onVehicleBasicInfoListener)) {
                this.mOnVehicleBasicInfoListeners.add(onVehicleBasicInfoListener);
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public void unregisterOnVehicleBasicInfoListener(VehicleBasicInfoAdapter.OnVehicleBasicInfoListener onVehicleBasicInfoListener) {
        synchronized (this.mLockObj) {
            if (this.mOnVehicleBasicInfoListeners.contains(onVehicleBasicInfoListener)) {
                this.mOnVehicleBasicInfoListeners.remove(onVehicleBasicInfoListener);
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public void registerOnVehicleSpeedListener(VehicleBasicInfoAdapter.OnVehicleSpeedListener onVehicleSpeedListener) {
        synchronized (this.mLockObj) {
            if (!this.mOnVehicleSpeedListeners.contains(onVehicleSpeedListener)) {
                this.mOnVehicleSpeedListeners.add(onVehicleSpeedListener);
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter
    public void unregisterOnVehicleSpeedListener(VehicleBasicInfoAdapter.OnVehicleSpeedListener onVehicleSpeedListener) {
        synchronized (this.mLockObj) {
            if (this.mOnVehicleSpeedListeners.contains(onVehicleSpeedListener)) {
                this.mOnVehicleBasicInfoListeners.remove(onVehicleSpeedListener);
            }
        }
    }
}
