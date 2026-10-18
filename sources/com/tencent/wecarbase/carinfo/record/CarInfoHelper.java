package com.tencent.wecarbase.carinfo.record;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.tencent.wecarbase.carinfo.WeCarInfoManager;
import com.tencent.wecarbase.carinfo.model.AccModel;
import com.tencent.wecarbase.carinfo.model.AirConditionModel;
import com.tencent.wecarbase.carinfo.model.BrakeStateModel;
import com.tencent.wecarbase.carinfo.model.DoorStatusModel;
import com.tencent.wecarbase.carinfo.model.FuelModel;
import com.tencent.wecarbase.carinfo.model.GearModel;
import com.tencent.wecarbase.carinfo.model.LampModel;
import com.tencent.wecarbase.carinfo.model.LeanWaterModel;
import com.tencent.wecarbase.carinfo.model.OutsideTemperatureModel;
import com.tencent.wecarbase.carinfo.model.SeatBeltModel;
import com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage;
import com.tencent.wecarbase.config.CloudConfig;
import com.tencent.wecarbase.utils.CommonFileUtils;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoHelper {
    private static final String TAG = "CarInfoHelper";
    private int carUpdateId = 0;
    private CarInfoMsg mCarInfoMsg;
    private final Context mContext;

    public CarInfoHelper(Context context) {
        this.mCarInfoMsg = null;
        this.mContext = context;
        this.mCarInfoMsg = new CarInfoMsg();
    }

    public void init() {
        updateFuel(WeCarInfoManager.getInstance().getFuelData());
        int enduranceMileageData = WeCarInfoManager.getInstance().getEnduranceMileageData();
        long totalMileageData = WeCarInfoManager.getInstance().getTotalMileageData();
        updateEnduranceMileage(enduranceMileageData);
        updateTotalMileage((int) totalMileageData);
        GearModel gearData = WeCarInfoManager.getInstance().getGearData();
        updateGear(gearData);
        updateBrakeState(WeCarInfoManager.getInstance().getBrakeState());
        updateAcc(WeCarInfoManager.getInstance().getAccData());
        updateSeatBelt(WeCarInfoManager.getInstance().getSeatBeltState());
        updateLampStatus(WeCarInfoManager.getInstance().getLampStatus());
        updateDoorStatus(WeCarInfoManager.getInstance().getDoorStatus());
        updateOutsideTemperature(WeCarInfoManager.getInstance().getOutsideTemperatureData());
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("init enduranceMileageData=");
        sb.append(enduranceMileageData);
        sb.append(" totalMileageData=");
        sb.append(totalMileageData);
        sb.append(" gearModel=");
        sb.append(gearData == null ? "null" : gearData.toString());
        LogUtils.d(str, sb.toString());
    }

    public CarInfoMsg getCarInfoMsg() {
        return this.mCarInfoMsg;
    }

    public int getCarUpdateId() {
        return this.carUpdateId;
    }

    public void updateBrakeState(BrakeStateModel brakeStateModel) {
        if (brakeStateModel == null) {
            return;
        }
        this.carUpdateId++;
        LogUtils.d(TAG, "BrakeStateModel " + brakeStateModel.getBrakeState());
        if (brakeStateModel.getBrakeState() == 1) {
            this.mCarInfoMsg.setBrakeStateModel(CarInfoMessage.BrakeStateModel.BRAKE_STATE_DOWN);
        } else if (brakeStateModel.getBrakeState() == 0) {
            this.mCarInfoMsg.setBrakeStateModel(CarInfoMessage.BrakeStateModel.BRAKE_STATE_UP);
        } else {
            this.mCarInfoMsg.setBrakeStateModel(CarInfoMessage.BrakeStateModel.BRAKE_STATE_NONE);
        }
    }

    public void updateSeatBelt(SeatBeltModel seatBeltModel) {
        if (seatBeltModel == null) {
            return;
        }
        if (seatBeltModel.getSeatBelt() == 0) {
            this.mCarInfoMsg.setSeatBeltModel(CarInfoMessage.SeatBeltModel.SEAT_BELT_STATE_OFF);
        } else if (seatBeltModel.getSeatBelt() == 1) {
            this.mCarInfoMsg.setSeatBeltModel(CarInfoMessage.SeatBeltModel.SEAT_BELT_STATE_ON);
        } else {
            this.mCarInfoMsg.setSeatBeltModel(CarInfoMessage.SeatBeltModel.SEAT_BELT_STATE_NONE);
        }
    }

    public void updateGear(GearModel gearModel) {
        if (gearModel == null) {
            return;
        }
        if (gearModel.getState() == -1) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_NONE);
            return;
        }
        if (gearModel.getState() == 2) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_N);
            return;
        }
        if (gearModel.getState() == 0) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_P);
            return;
        }
        if (gearModel.getState() == 3) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D);
            return;
        }
        if (gearModel.getState() == 5) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D1);
            return;
        }
        if (gearModel.getState() == 6) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D2);
            return;
        }
        if (gearModel.getState() == 7) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D3);
            return;
        }
        if (gearModel.getState() == 8) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D4);
            return;
        }
        if (gearModel.getState() == 9) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D5);
            return;
        }
        if (gearModel.getState() == 10) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_D6);
        } else if (gearModel.getState() == 4) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_S);
        } else if (gearModel.getState() == 1) {
            this.mCarInfoMsg.setGearModel(CarInfoMessage.GearModel.GEAR_STATE_R);
        }
    }

    public void updateAcc(AccModel accModel) {
        if (accModel == null) {
            return;
        }
        this.carUpdateId++;
        LogUtils.d(TAG, "ACC = " + accModel.getState());
        CommonFileUtils.appendFileData(CloudConfig.CLOUD_LOG, System.currentTimeMillis() + "ACC=" + accModel.getState() + "\n");
        if (accModel.getState() == 0) {
            this.mCarInfoMsg.setAccModel(CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE);
        } else if (accModel.getState() == 1) {
            this.mCarInfoMsg.setAccModel(CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN);
        } else {
            this.mCarInfoMsg.setAccModel(CarInfoMessage.CommonStateModel.COMMON_STATE_NONE);
        }
    }

    public void updateTotalMileage(int i) {
        this.carUpdateId++;
        this.mCarInfoMsg.setTotalMileage(i);
    }

    public void updateEnduranceMileage(int i) {
        this.carUpdateId++;
        this.mCarInfoMsg.setEnduranceMileage(i);
    }

    public void updateFuel(FuelModel fuelModel) {
        if (fuelModel == null) {
            return;
        }
        this.carUpdateId++;
        LogUtils.d(TAG, "FuelModel = " + fuelModel.toString());
        CarInfoMessage.FuelModel.Builder newBuilder = CarInfoMessage.FuelModel.newBuilder();
        LogUtils.d(TAG, "fuelModel mState=" + fuelModel.getState() + " mRemainFuel=" + fuelModel.getRemainFuel() + " mInstantaneousFuelConsumption=" + fuelModel.getInstantaneousFuelConsumption() + " AverageFuelConsumption=" + fuelModel.getAverageFuelConsumption());
        if (fuelModel.getState() == 0) {
            newBuilder.setFuelStateWarning(CarInfoMessage.FuelStateWArnningModel.STATE_WARNING_NONE);
        } else if (fuelModel.getState() == 2) {
            newBuilder.setFuelStateWarning(CarInfoMessage.FuelStateWArnningModel.STATE_WARNING_LOW);
        } else if (fuelModel.getState() == 1) {
            newBuilder.setFuelStateWarning(CarInfoMessage.FuelStateWArnningModel.STATE_WARNING_NORMAL);
        }
        newBuilder.setMRemainFuel(fuelModel.getRemainFuel());
        newBuilder.setInstantaneousFuelConsumption(ByteString.copyFrom(Float.valueOf(fuelModel.getInstantaneousFuelConsumption()).toString().getBytes()));
        newBuilder.setAverageFuelConsumption(ByteString.copyFrom(Float.valueOf(fuelModel.getAverageFuelConsumption()).toString().getBytes()));
        this.mCarInfoMsg.setFuelModel(newBuilder.m88build());
    }

    public void updateLeanWater(LeanWaterModel leanWaterModel) {
        if (leanWaterModel == null) {
            return;
        }
        if (leanWaterModel.getLeanWaterState() == -1) {
            this.mCarInfoMsg.setLeanWaterModel(CarInfoMessage.LeanWaterModel.LEAN_WATER_STATE_NONE);
        } else if (leanWaterModel.getLeanWaterState() == 1) {
            this.mCarInfoMsg.setLeanWaterModel(CarInfoMessage.LeanWaterModel.LEAN_WATER_STATE_NORMAL);
        } else if (leanWaterModel.getLeanWaterState() == 0) {
            this.mCarInfoMsg.setLeanWaterModel(CarInfoMessage.LeanWaterModel.LEAN_WATER_STATE_LOW);
        }
    }

    public void updateCarSpeed(float f) {
        this.mCarInfoMsg.setCarSpeed(ByteString.copyFrom(Float.valueOf(f).toString().getBytes()));
    }

    public void updateEngineSpeed(float f) {
        this.mCarInfoMsg.setEngineSpeed(ByteString.copyFrom(Float.valueOf(f).toString().getBytes()));
    }

    public void updateDoorStatus(DoorStatusModel doorStatusModel) {
        if (doorStatusModel == null) {
            return;
        }
        this.carUpdateId++;
        CarInfoMessage.DoorStatusModel.Builder newBuilder = CarInfoMessage.DoorStatusModel.newBuilder();
        CarInfoMessage.CommonStateModel commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mFrontLeftDoor == 0) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mFrontLeftDoor == 1) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setFrontLeftDoor(commonStateModel);
        CarInfoMessage.CommonStateModel commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mFrontRightDoor == 0) {
            commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mFrontRightDoor == 1) {
            commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setFrontRightDoor(commonStateModel2);
        CarInfoMessage.CommonStateModel commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mRearLeftDoor == 0) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mRearLeftDoor == 1) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setRearLeftDoor(commonStateModel3);
        CarInfoMessage.CommonStateModel commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mRearRightDoor == 0) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mRearRightDoor == 1) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setRearRightDoor(commonStateModel4);
        CarInfoMessage.CommonStateModel commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mSkylight == 0) {
            commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mSkylight == 1) {
            commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setSkylight(commonStateModel5);
        CarInfoMessage.CommonStateModel commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mEngineCover == 0) {
            commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mEngineCover == 1) {
            commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setEngineCover(commonStateModel6);
        CarInfoMessage.CommonStateModel commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mTrunk == 0) {
            commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mTrunk == 1) {
            commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setTrunk(commonStateModel7);
        CarInfoMessage.CommonStateModel commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mTank == 0) {
            commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mTank == 1) {
            commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setTank(commonStateModel8);
        CarInfoMessage.CommonStateModel commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (doorStatusModel.mWindShield == 0) {
            commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (doorStatusModel.mWindShield == 1) {
            commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setWindShield(commonStateModel9);
        this.mCarInfoMsg.setDoorStatusModel(newBuilder.m57build());
    }

    public void updateLampStatus(LampModel lampModel) {
        if (lampModel == null) {
            return;
        }
        this.carUpdateId++;
        CarInfoMessage.LampModel.Builder newBuilder = CarInfoMessage.LampModel.newBuilder();
        CarInfoMessage.CommonStateModel commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getLeftLamp() == 0) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getLeftLamp() == 1) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setLeftLamp(commonStateModel);
        CarInfoMessage.CommonStateModel commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getRightLamp() == 0) {
            commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getRightLamp() == 1) {
            commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setRightLamp(commonStateModel2);
        CarInfoMessage.CommonStateModel commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getWidthLamp() == 0) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getWidthLamp() == 1) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setWidthLamp(commonStateModel3);
        CarInfoMessage.CommonStateModel commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getEmergencyLamp() == 0) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getEmergencyLamp() == 1) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setEmergencyLamp(commonStateModel4);
        CarInfoMessage.CommonStateModel commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getFarLamp() == 0) {
            commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getFarLamp() == 1) {
            commonStateModel5 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setForkLamp(commonStateModel5);
        CarInfoMessage.CommonStateModel commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getFarLamp() == 0) {
            commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getFarLamp() == 1) {
            commonStateModel6 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setFarLamp(commonStateModel6);
        CarInfoMessage.CommonStateModel commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getNearLamp() == 0) {
            commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getNearLamp() == 1) {
            commonStateModel7 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setNearLamp(commonStateModel7);
        CarInfoMessage.CommonStateModel commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getDayLamp() == 0) {
            commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getDayLamp() == 1) {
            commonStateModel8 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setDayLamp(commonStateModel8);
        CarInfoMessage.CommonStateModel commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getStopLamp() == 0) {
            commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getStopLamp() == 1) {
            commonStateModel9 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setStopLamp(commonStateModel9);
        CarInfoMessage.CommonStateModel commonStateModel10 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (lampModel.getBackLamp() == 0) {
            commonStateModel10 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (lampModel.getBackLamp() == 1) {
            commonStateModel10 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setBackLamp(commonStateModel10);
        this.mCarInfoMsg.setLampModel(newBuilder.m120build());
    }

    public void updateOutsideTemperature(OutsideTemperatureModel outsideTemperatureModel) {
        if (outsideTemperatureModel != null) {
            this.mCarInfoMsg.setOutsideTemperature(ByteString.copyFrom(Float.valueOf(outsideTemperatureModel.getOutsideTemperature()).toString().getBytes()));
        }
    }

    public void updateAirCondition(AirConditionModel airConditionModel) {
        CarInfoMessage.CommonStateModel commonStateModel;
        CarInfoMessage.AirConditionModel.Builder newBuilder = CarInfoMessage.AirConditionModel.newBuilder();
        newBuilder.setLeftTemp(ByteString.copyFrom(Float.valueOf(airConditionModel.getLeftTemp()).toString().getBytes()));
        newBuilder.setRightTemp(ByteString.copyFrom(Float.valueOf(airConditionModel.getRightTemp()).toString().getBytes()));
        if (airConditionModel.getTemperatureUnitType() == 0) {
            newBuilder.setTemperatureUnitType(CarInfoMessage.TempUnit.TEMP_UNIT_CELSIUS);
        } else if (airConditionModel.getTemperatureUnitType() == 1) {
            newBuilder.setTemperatureUnitType(CarInfoMessage.TempUnit.TEMP_UNIT_FAHRENHEIT);
        }
        CarInfoMessage.ACWindDirectionModel aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_NONE;
        if (1 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_FACE;
        } else if (2 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_FACE_AND_LEG;
        } else if (3 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_LEG;
        } else if (4 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_FRONT_GLASS_AND_LEG;
        } else if (5 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_FRONT_GLASS;
        } else if (6 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_FRONT_GLASS_AND_FACE;
        } else if (7 == airConditionModel.getWindDirection()) {
            aCWindDirectionModel = CarInfoMessage.ACWindDirectionModel.WIND_DIRECTION_ALL;
        }
        newBuilder.setWindDirection(aCWindDirectionModel);
        newBuilder.setWindLevel(airConditionModel.getWindDirection());
        CarInfoMessage.ACState aCState = CarInfoMessage.ACState.AC_STATE_NONE;
        if (airConditionModel.getAC() == 0) {
            aCState = CarInfoMessage.ACState.AC_STATE_NONE;
        } else if (airConditionModel.getAC() == 1) {
            aCState = CarInfoMessage.ACState.AC_STATE_WIND;
        } else if (airConditionModel.getAC() == 2) {
            aCState = CarInfoMessage.ACState.AC_STATE_WIND;
        }
        newBuilder.setAC(aCState);
        CarInfoMessage.CommonStateModel commonStateModel2 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (airConditionModel.getAuto() == 0) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (airConditionModel.getAuto() == 1) {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        } else {
            commonStateModel = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        }
        newBuilder.setAuto(commonStateModel);
        CarInfoMessage.ACCycleModel aCCycleModel = CarInfoMessage.ACCycleModel.CYCLE_MODEL_NONE;
        if (airConditionModel.getCycleModel() == 1) {
            aCCycleModel = CarInfoMessage.ACCycleModel.CYCLE_MODEL_INSIDE;
        } else if (airConditionModel.getCycleModel() == 3) {
            aCCycleModel = CarInfoMessage.ACCycleModel.CYCLE_MODEL_INSIDE_AUTO;
        } else if (airConditionModel.getCycleModel() == 2) {
            aCCycleModel = CarInfoMessage.ACCycleModel.CYCLE_MODEL_OUTSIDE;
        }
        newBuilder.setCycleModel(aCCycleModel);
        CarInfoMessage.DualZoneSupport dualZoneSupport = CarInfoMessage.DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
        if (airConditionModel.getDualZone() == 0) {
            dualZoneSupport = CarInfoMessage.DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
        } else if (airConditionModel.getDualZone() == 1) {
            dualZoneSupport = CarInfoMessage.DualZoneSupport.DUAL_ZONE_SUPPORT;
        }
        newBuilder.setDualZone(dualZoneSupport);
        CarInfoMessage.CommonStateModel commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (airConditionModel.getFrontDefog() == 0) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (airConditionModel.getFrontDefog() == 1) {
            commonStateModel3 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setFrontDefog(commonStateModel3);
        CarInfoMessage.CommonStateModel commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_NONE;
        if (airConditionModel.getBackDefog() == 0) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_CLOSE;
        } else if (airConditionModel.getBackDefog() == 1) {
            commonStateModel4 = CarInfoMessage.CommonStateModel.COMMON_STATE_OPEN;
        }
        newBuilder.setMBackDefog(commonStateModel4);
        this.mCarInfoMsg.setAirConditionModel(newBuilder.m25build());
    }

    public void updateBatteryVoltage(float f) {
        this.mCarInfoMsg.setBatteryVoltage(ByteString.copyFrom(Float.valueOf(f).toString().getBytes()));
    }
}
