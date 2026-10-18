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
public class BaseWeCarInfoListener implements IWeCarInfoListener {
    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onAccChanged(AccModel accModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onAirConditionChanged(AirConditionModel airConditionModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onBackCarRadarChanged(BackCarRadarModel backCarRadarModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onBatteryVoltageChanged(float f) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onBrakeStateChanged(BrakeStateModel brakeStateModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onBundleData(Bundle bundle) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onCarAccountUpdate() {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onCarSpeedChanged(float f) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onDoorStatusChanged(DoorStatusModel doorStatusModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onEnduranceMileageChanged(int i) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onEngineSpeedChanged(float f) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onFuelChanged(FuelModel fuelModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onGearChanged(GearModel gearModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onLampStatusChanged(LampModel lampModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onLeanWaterChanged(LeanWaterModel leanWaterModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onMileageChanged(MileageModel mileageModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onOutsideTemperature(OutsideTemperatureModel outsideTemperatureModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onSeatBeltChanged(SeatBeltModel seatBeltModel) {
    }

    @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
    public void onTotalMileageChanged(long j) {
    }
}
