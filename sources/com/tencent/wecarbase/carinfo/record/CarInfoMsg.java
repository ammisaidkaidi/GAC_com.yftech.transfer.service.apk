package com.tencent.wecarbase.carinfo.record;

import com.google.protobuf.ByteString;
import com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoMsg {
    private CarInfoMessage.CommonStateModel accModel;
    private CarInfoMessage.AirConditionModel airConditionModel;
    private ByteString batteryVoltage;
    private CarInfoMessage.BrakeStateModel brakeStateModel;
    private ByteString carSpeed;
    private CarInfoMessage.DoorStatusModel doorStatusModel;
    private int enduranceMileage;
    private ByteString engineSpeed;
    private CarInfoMessage.FuelModel fuelModel;
    private CarInfoMessage.GearModel gearModel;
    private CarInfoMessage.LampModel lampModel;
    private CarInfoMessage.LeanWaterModel leanWaterModel;
    private ByteString outsideTemperature;
    private CarInfoMessage.SeatBeltModel seatBeltModel;
    private int totalMileage;

    public CarInfoMessage.BrakeStateModel getBrakeStateModel() {
        return this.brakeStateModel;
    }

    public void setBrakeStateModel(CarInfoMessage.BrakeStateModel brakeStateModel) {
        this.brakeStateModel = brakeStateModel;
    }

    public void setAccModel(CarInfoMessage.CommonStateModel commonStateModel) {
        this.accModel = commonStateModel;
    }

    public CarInfoMessage.CommonStateModel getAccModel() {
        return this.accModel;
    }

    public void setAirConditionModel(CarInfoMessage.AirConditionModel airConditionModel) {
        this.airConditionModel = airConditionModel;
    }

    public CarInfoMessage.AirConditionModel getAirConditionModel() {
        return this.airConditionModel;
    }

    public void setBatteryVoltage(ByteString byteString) {
        this.batteryVoltage = byteString;
    }

    public ByteString getBatteryVoltage() {
        return this.batteryVoltage;
    }

    public void setCarSpeed(ByteString byteString) {
        this.carSpeed = byteString;
    }

    public ByteString getCarSpeed() {
        return this.carSpeed;
    }

    public void setDoorStatusModel(CarInfoMessage.DoorStatusModel doorStatusModel) {
        this.doorStatusModel = doorStatusModel;
    }

    public CarInfoMessage.DoorStatusModel getDoorStatusModel() {
        return this.doorStatusModel;
    }

    public void setEnduranceMileage(int i) {
        this.enduranceMileage = i;
    }

    public int getEnduranceMileage() {
        return this.enduranceMileage;
    }

    public void setEngineSpeed(ByteString byteString) {
        this.engineSpeed = byteString;
    }

    public ByteString getEngineSpeed() {
        return this.engineSpeed;
    }

    public void setFuelModel(CarInfoMessage.FuelModel fuelModel) {
        this.fuelModel = fuelModel;
    }

    public CarInfoMessage.FuelModel getFuelModel() {
        return this.fuelModel;
    }

    public void setGearModel(CarInfoMessage.GearModel gearModel) {
        this.gearModel = gearModel;
    }

    public CarInfoMessage.GearModel getGearModel() {
        return this.gearModel;
    }

    public void setLampModel(CarInfoMessage.LampModel lampModel) {
        this.lampModel = lampModel;
    }

    public CarInfoMessage.LampModel getLampModel() {
        return this.lampModel;
    }

    public void setLeanWaterModel(CarInfoMessage.LeanWaterModel leanWaterModel) {
        this.leanWaterModel = leanWaterModel;
    }

    public CarInfoMessage.LeanWaterModel getLeanWaterModel() {
        return this.leanWaterModel;
    }

    public void setOutsideTemperature(ByteString byteString) {
        this.outsideTemperature = byteString;
    }

    public ByteString getOutsideTemperature() {
        return this.outsideTemperature;
    }

    public void setSeatBeltModel(CarInfoMessage.SeatBeltModel seatBeltModel) {
        this.seatBeltModel = seatBeltModel;
    }

    public CarInfoMessage.SeatBeltModel getSeatBeltModel() {
        return this.seatBeltModel;
    }

    public void setTotalMileage(int i) {
        this.totalMileage = i;
    }

    public int getTotalMileage() {
        return this.totalMileage;
    }
}
