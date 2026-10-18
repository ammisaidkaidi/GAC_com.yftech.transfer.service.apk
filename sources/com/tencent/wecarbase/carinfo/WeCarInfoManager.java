package com.tencent.wecarbase.carinfo;

import android.content.Context;
import android.util.Log;
import com.tencent.wecarbase.carinfo.base.IWeCarManager;
import com.tencent.wecarbase.carinfo.model.AccModel;
import com.tencent.wecarbase.carinfo.model.BrakeStateModel;
import com.tencent.wecarbase.carinfo.model.DashboardModel;
import com.tencent.wecarbase.carinfo.model.DoorStatusModel;
import com.tencent.wecarbase.carinfo.model.FuelModel;
import com.tencent.wecarbase.carinfo.model.GearModel;
import com.tencent.wecarbase.carinfo.model.LampModel;
import com.tencent.wecarbase.carinfo.model.LeanWaterModel;
import com.tencent.wecarbase.carinfo.model.OutsideTemperatureModel;
import com.tencent.wecarbase.carinfo.model.SeatBeltModel;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarInfoManager implements IWeCarManager {
    private static final String TAG = "WeCarInfoManager";
    private static volatile WeCarInfoManager me;
    private Context mContext;
    private WeCarInfoSimulator mSimulator = null;
    private IWeCarInfoInterface mWeCarInfoIF = null;
    private ArrayList<IWeCarInfoListener> mPendingListeners = new ArrayList<>();

    private void dispose() {
    }

    public static WeCarInfoManager getInstance() {
        if (me == null) {
            synchronized (WeCarInfoManager.class) {
                if (me == null) {
                    me = new WeCarInfoManager();
                }
            }
        }
        return me;
    }

    private WeCarInfoManager() {
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public void init(Context context) {
        this.mContext = context.getApplicationContext();
        if (this.mSimulator == null) {
            this.mSimulator = new WeCarInfoSimulator(context);
        }
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public void unInit() {
        this.mWeCarInfoIF = null;
        if (this.mSimulator != null) {
            this.mSimulator.detach();
        }
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public void registerListener(IWeCarInfoListener iWeCarInfoListener) {
        if (this.mWeCarInfoIF != null) {
            if (iWeCarInfoListener != null) {
                this.mWeCarInfoIF.registerListener(iWeCarInfoListener);
            }
            Iterator<IWeCarInfoListener> it = this.mPendingListeners.iterator();
            while (it.hasNext()) {
                this.mWeCarInfoIF.registerListener(it.next());
            }
            this.mPendingListeners.clear();
        } else if (iWeCarInfoListener != null) {
            Log.d(TAG, "WeCarInfoIF is null, add listener to pending list");
            this.mPendingListeners.add(iWeCarInfoListener);
        }
        if (this.mSimulator == null || iWeCarInfoListener == null) {
            return;
        }
        this.mSimulator.registerListener(iWeCarInfoListener);
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public void unregisterListener(IWeCarInfoListener iWeCarInfoListener) {
        if (this.mWeCarInfoIF != null && iWeCarInfoListener != null) {
            this.mWeCarInfoIF.unregisterListener(iWeCarInfoListener);
        }
        if (this.mSimulator == null || iWeCarInfoListener == null) {
            return;
        }
        this.mSimulator.unregisterListener(iWeCarInfoListener);
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public void setWeCarInfoImpl(IWeCarInfoInterface iWeCarInfoInterface) {
        this.mWeCarInfoIF = iWeCarInfoInterface;
    }

    @Override // com.tencent.wecarbase.carinfo.base.IWeCarManager
    public IWeCarInfoInterface getWeCarInfoImpl() {
        return this.mWeCarInfoIF;
    }

    public static void destory() {
        if (me != null) {
            synchronized (WeCarInfoManager.class) {
                if (me != null) {
                    me.dispose();
                }
            }
        }
        me = null;
    }

    public AccModel getAccData() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getAccData();
    }

    public FuelModel getFuelData() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getFuelData();
    }

    public BrakeStateModel getBrakeState() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getBrakeState();
    }

    public SeatBeltModel getSeatBeltState() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getSeatBeltState();
    }

    public GearModel getGearData() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getGearData();
    }

    public long getTotalMileageData() {
        if (this.mWeCarInfoIF == null) {
            return -1L;
        }
        return this.mWeCarInfoIF.getTotalMileageData();
    }

    public int getEnduranceMileageData() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.getEnduranceMileageData();
    }

    public LeanWaterModel getLeanWaterData() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getLeanWaterData();
    }

    public float getCarSpeedData() {
        if (this.mWeCarInfoIF == null) {
            return -1.0f;
        }
        return this.mWeCarInfoIF.getCarSpeedData();
    }

    public float getEngineSpeedData() {
        if (this.mWeCarInfoIF == null) {
            return -1.0f;
        }
        return this.mWeCarInfoIF.getEngineSpeedData();
    }

    public DoorStatusModel getDoorStatus() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getDoorStatus();
    }

    public LampModel getLampStatus() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getLampStatus();
    }

    public OutsideTemperatureModel getOutsideTemperatureData() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getOutsideTemperatureData();
    }

    public float getBatteryVoltageData() {
        if (this.mWeCarInfoIF == null) {
            return -1.0f;
        }
        return this.mWeCarInfoIF.getBatteryVoltageData();
    }

    public int setDashboardDisplayAudioData(DashboardModel.AudioModel audioModel) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayAudioData(audioModel);
    }

    public int setDashboardDisplayHFPData(DashboardModel.HFPModel hFPModel) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayHFPData(hFPModel);
    }

    public int setDashboardDisplayRadioData(DashboardModel.RadioModel radioModel) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayRadioData(radioModel);
    }

    public int sendString2Dashboard(int i, String str, String str2) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.sendString2Dashboard(i, str, str2);
    }

    public int setDashboardDisplayA2DP() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayA2DP();
    }

    public int setDashboardDisplayAUX() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayAUX();
    }

    public int setDashboardDisplayMediaStop() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayMediaStop();
    }

    public int setDashboardDisplayTimeFormatSync() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayTimeFormatSync();
    }

    public int setDashboardDisplayVolume(int i) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setDashboardDisplayVolume(i);
    }

    public String getCANBUSVersion() {
        if (this.mWeCarInfoIF == null) {
            return null;
        }
        return this.mWeCarInfoIF.getCANBUSVersion();
    }

    public boolean isShowCarInfo() {
        if (this.mWeCarInfoIF == null) {
            return false;
        }
        return this.mWeCarInfoIF.isShowCarInfo();
    }

    public int setCarType(int i) {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.setCarType(i);
    }

    public int getCarType() {
        if (this.mWeCarInfoIF == null) {
            return -1;
        }
        return this.mWeCarInfoIF.getCarType();
    }
}
