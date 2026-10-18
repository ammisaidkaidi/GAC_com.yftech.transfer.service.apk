package com.tencent.wecarbase.carinfo;

import android.os.Bundle;
import com.tencent.wecarbase.carinfo.model.AccModel;
import com.tencent.wecarbase.carinfo.model.AirConditionModel;
import com.tencent.wecarbase.carinfo.model.BackCarRadarModel;
import com.tencent.wecarbase.carinfo.model.BrakeStateModel;
import com.tencent.wecarbase.carinfo.model.DoorStatusModel;
import com.tencent.wecarbase.carinfo.model.FuelModel;
import com.tencent.wecarbase.carinfo.model.GearModel;
import com.tencent.wecarbase.carinfo.model.LampModel;
import com.tencent.wecarbase.carinfo.model.LeanWaterModel;
import com.tencent.wecarbase.carinfo.model.MileageModel;
import com.tencent.wecarbase.carinfo.model.OutsideTemperatureModel;
import com.tencent.wecarbase.carinfo.model.SeatBeltModel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarInfoListener {
    void onAccChanged(AccModel accModel);

    void onAirConditionChanged(AirConditionModel airConditionModel);

    void onBackCarRadarChanged(BackCarRadarModel backCarRadarModel);

    void onBatteryVoltageChanged(float f);

    void onBrakeStateChanged(BrakeStateModel brakeStateModel);

    void onBundleData(Bundle bundle);

    void onCarAccountUpdate();

    void onCarSpeedChanged(float f);

    void onDoorStatusChanged(DoorStatusModel doorStatusModel);

    void onEnduranceMileageChanged(int i);

    void onEngineSpeedChanged(float f);

    void onFuelChanged(FuelModel fuelModel);

    void onGearChanged(GearModel gearModel);

    void onLampStatusChanged(LampModel lampModel);

    void onLeanWaterChanged(LeanWaterModel leanWaterModel);

    void onMileageChanged(MileageModel mileageModel);

    void onOutsideTemperature(OutsideTemperatureModel outsideTemperatureModel);

    void onSeatBeltChanged(SeatBeltModel seatBeltModel);

    void onTotalMileageChanged(long j);
}
