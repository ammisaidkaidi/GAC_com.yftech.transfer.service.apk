package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import android.os.Handler;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.power.PowerInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class PowerAdapterImpl extends PowerAdapter {
    public static final String ACTION_ECALLBCALL_STATE_CHANGE = "com.tencent.mm.action.ECALL_BCALL_STATE";
    public static final String AVM_ACTION = "com.tencent.mm.action.vehicle.AVM";
    public static final int AVM_ACTION_AVM = 0;
    public static final int AVM_ACTION_AVM_END = 1;
    public static final int BCALL_ECALL_STATE_END = 0;
    public static final int BCALL_ECALL_STATE_OPEN = 1;
    public static final String KEY_AVM_STATE = "avm_state";
    public static final String KEY_CALL_STATE = "call_state";
    public static final String KEY_REVERSE_STATE = "reverse_state";
    public static final String REVERSE_ACTION = "com.tencent.mm.action.vehicle.REVERSE";
    public static final int REVERSE_ACTION_REVERSE = 0;
    public static final int REVERSE_ACTION_REVERSE_END = 1;
    private Context mContext;
    private Handler mH = new Handler();
    private List<PowerAdapter.OnPowerLevelLowListener> mOnPowerLevelLowListener = new ArrayList();
    private Object mLockObj = new Object();

    @Override // com.tencent.tai.pal.power.PowerAdapter
    public int getPowerLevelAfterDriving(int i) {
        return 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class WXReverseStateRunnable implements Runnable {
        private int cGearLevelPosition;

        @Override // java.lang.Runnable
        public void run() {
        }

        public WXReverseStateRunnable(int i) {
            this.cGearLevelPosition = i;
        }
    }

    public PowerAdapterImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.tencent.tai.pal.power.PowerAdapter
    public int getPowerType() {
        PlatformAdapter.LOGI("call getPowerType ,return value:1");
        return 1;
    }

    @Override // com.tencent.tai.pal.power.PowerAdapter
    public void registerOnPowerLevelLowListener(PowerAdapter.OnPowerLevelLowListener onPowerLevelLowListener) {
        if (this.mOnPowerLevelLowListener == null || this.mOnPowerLevelLowListener.contains(onPowerLevelLowListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnPowerLevelLowListener.add(onPowerLevelLowListener);
        }
    }

    @Override // com.tencent.tai.pal.power.PowerAdapter
    public void unregisterOnPowerLevelLowListener(PowerAdapter.OnPowerLevelLowListener onPowerLevelLowListener) {
        if (this.mOnPowerLevelLowListener == null || !this.mOnPowerLevelLowListener.contains(onPowerLevelLowListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnPowerLevelLowListener.remove(onPowerLevelLowListener);
        }
    }

    @Override // com.tencent.tai.pal.power.PowerAdapter
    public PowerInfo getPowerInfo() {
        PowerInfo powerInfo = new PowerInfo(0, 0, false, 0, 0, 0, 2, true);
        PlatformAdapter.LOGI("call getPowerInfo ,return value CurrentDrivingRangeInMeter=0,PercentageOfPowerRemaining=0,IsCharging=false,TotalDrivingRangeInMeter=0,DrivingRangePerPercentInMeter=0,PowerLevel=0,DrivingMode=2,AirConditionerOn=true");
        return powerInfo;
    }
}
