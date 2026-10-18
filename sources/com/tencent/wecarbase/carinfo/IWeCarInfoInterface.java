package com.tencent.wecarbase.carinfo;

import com.tencent.wecarbase.carinfo.model.AccModel;
import com.tencent.wecarbase.carinfo.model.BrakeStateModel;
import com.tencent.wecarbase.carinfo.model.DashboardModel;
import com.tencent.wecarbase.carinfo.model.DoorStatusModel;
import com.tencent.wecarbase.carinfo.model.FuelModel;
import com.tencent.wecarbase.carinfo.model.GearModel;
import com.tencent.wecarbase.carinfo.model.LampModel;
import com.tencent.wecarbase.carinfo.model.LeanWaterModel;
import com.tencent.wecarbase.carinfo.model.MileageModel;
import com.tencent.wecarbase.carinfo.model.OutsideTemperatureModel;
import com.tencent.wecarbase.carinfo.model.SeatBeltModel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarInfoInterface {
    AccModel getAccData();

    float getBatteryVoltageData();

    BrakeStateModel getBrakeState();

    String getCANBUSVersion();

    float getCarSpeedData();

    int getCarType();

    DoorStatusModel getDoorStatus();

    int getEnduranceMileageData();

    float getEngineSpeedData();

    FuelModel getFuelData();

    GearModel getGearData();

    LampModel getLampStatus();

    LeanWaterModel getLeanWaterData();

    MileageModel getMileageData();

    OutsideTemperatureModel getOutsideTemperatureData();

    SeatBeltModel getSeatBeltState();

    long getTotalMileageData();

    boolean isShowCarInfo();

    void registerListener(IWeCarInfoListener iWeCarInfoListener);

    int sendString2Dashboard(int i, String str, String str2);

    int setCarType(int i);

    int setDashboardDisplayA2DP();

    int setDashboardDisplayAUX();

    int setDashboardDisplayAudioData(DashboardModel.AudioModel audioModel);

    int setDashboardDisplayHFPData(DashboardModel.HFPModel hFPModel);

    int setDashboardDisplayMediaStop();

    int setDashboardDisplayRadioData(DashboardModel.RadioModel radioModel);

    int setDashboardDisplayTimeFormatSync();

    int setDashboardDisplayVolume(int i);

    void unregisterListener(IWeCarInfoListener iWeCarInfoListener);
}
