package com.tencent.wecarbase.carinfo.record;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.tencent.wecarbase.carinfo.IPushCallBack;
import com.tencent.wecarbase.carinfo.IWeCarInfoListener;
import com.tencent.wecarbase.carinfo.WeCarInfoManager;
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
import com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage;
import com.tencent.wecarbase.common.callback.TaiAccountInfoCallBack;
import com.tencent.wecarbase.config.CloudConfig;
import com.tencent.wecarbase.model.CloudMessage;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoRecorder {
    private static final String TAG = "CarInfoRecorder";
    private CarInfoHelper mCarInfoHelper;
    private Context mContext;
    private SenderThread mSenderThread;
    private TaiAccountInfoCallBack mTaiAccountInfoCallBack;
    private WeCarInfoManager mWeCarInfoManager;
    private boolean mIsRunning = false;
    private IPushCallBack mPushCallBack = null;
    private IWeCarInfoListener mCarInfoListener = new IWeCarInfoListener() { // from class: com.tencent.wecarbase.carinfo.record.CarInfoRecorder.1
        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onBackCarRadarChanged(BackCarRadarModel backCarRadarModel) {
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onBundleData(Bundle bundle) {
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onCarAccountUpdate() {
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onMileageChanged(MileageModel mileageModel) {
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onBrakeStateChanged(BrakeStateModel brakeStateModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateBrakeState(brakeStateModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onSeatBeltChanged(SeatBeltModel seatBeltModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateSeatBelt(seatBeltModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onGearChanged(GearModel gearModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateGear(gearModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onAccChanged(AccModel accModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateAcc(accModel);
            }
            accModel.getState();
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onTotalMileageChanged(long j) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateTotalMileage((int) j);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onEnduranceMileageChanged(int i) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateEnduranceMileage(i);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onFuelChanged(FuelModel fuelModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateFuel(fuelModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onLeanWaterChanged(LeanWaterModel leanWaterModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateLeanWater(leanWaterModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onCarSpeedChanged(float f) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateCarSpeed(f);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onEngineSpeedChanged(float f) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateEngineSpeed(f);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onDoorStatusChanged(DoorStatusModel doorStatusModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                LogUtils.d(CarInfoRecorder.TAG, "onDoorStatusChanged doorStatusModel=" + doorStatusModel.toString());
                CarInfoRecorder.this.mCarInfoHelper.updateDoorStatus(doorStatusModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onLampStatusChanged(LampModel lampModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateLampStatus(lampModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onOutsideTemperature(OutsideTemperatureModel outsideTemperatureModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateOutsideTemperature(outsideTemperatureModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onAirConditionChanged(AirConditionModel airConditionModel) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateAirCondition(airConditionModel);
            }
        }

        @Override // com.tencent.wecarbase.carinfo.IWeCarInfoListener
        public void onBatteryVoltageChanged(float f) {
            if (CarInfoRecorder.this.mCarInfoHelper != null) {
                CarInfoRecorder.this.mCarInfoHelper.updateBatteryVoltage(f);
            }
        }
    };

    public CarInfoRecorder(Context context, TaiAccountInfoCallBack taiAccountInfoCallBack) {
        this.mContext = context;
        this.mTaiAccountInfoCallBack = taiAccountInfoCallBack;
        init();
    }

    public void setIPushCallBack(IPushCallBack iPushCallBack) {
        this.mPushCallBack = iPushCallBack;
    }

    private void init() {
        this.mWeCarInfoManager = WeCarInfoManager.getInstance();
        this.mWeCarInfoManager.init(this.mContext);
        this.mWeCarInfoManager.registerListener(this.mCarInfoListener);
        this.mCarInfoHelper = new CarInfoHelper(this.mContext);
        this.mCarInfoHelper.init();
    }

    public void start() {
        this.mIsRunning = true;
        startSenderThread();
    }

    private void startSenderThread() {
        if (this.mSenderThread == null || this.mSenderThread.isInterrupted() || !this.mSenderThread.isAlive()) {
            this.mSenderThread = new SenderThread();
            this.mSenderThread.start();
        }
    }

    public void release() {
        this.mIsRunning = false;
        if (this.mSenderThread != null) {
            this.mSenderThread.cancel();
            this.mSenderThread.interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class SenderThread extends Thread {
        private int counter;
        private int mCarUpdateId;
        private volatile boolean mIsCanceled;

        SenderThread() {
            super("carinfo_sender");
            this.mIsCanceled = false;
            this.mCarUpdateId = 0;
            this.counter = 0;
        }

        public void cancel() {
            this.mIsCanceled = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!this.mIsCanceled) {
                CarInfoRecorder.this.mCarInfoListener.onCarSpeedChanged(((float) Math.random()) * 100.0f);
                CarInfoRecorder.this.mCarInfoListener.onEngineSpeedChanged(((float) Math.random()) * 1090.0f);
                CarInfoRecorder.this.mCarInfoListener.onTotalMileageChanged((long) (Math.random() * 1090.0d));
                CarInfoRecorder.this.mCarInfoListener.onEnduranceMileageChanged((int) (Math.random() * 1090.0d));
                int carUpdateId = CarInfoRecorder.this.getCarUpdateId();
                if (this.counter >= CloudConfig.getTcpCarInfoCounter() || carUpdateId > this.mCarUpdateId) {
                    CarInfoMsg carInfoMsg = CarInfoRecorder.this.getCarInfoMsg();
                    LogUtils.d(CarInfoRecorder.TAG, "send carinfo msg carSpeed=" + carInfoMsg.getCarSpeed().toStringUtf8() + " engineSpeed=" + carInfoMsg.getEngineSpeed().toStringUtf8() + " totalMileage=" + carInfoMsg.getTotalMileage() + " enduranceMileage=" + carInfoMsg.getEnduranceMileage());
                    if (CarInfoRecorder.this.mPushCallBack != null && CarInfoRecorder.this.mPushCallBack.isConnected()) {
                        LogUtils.d(CarInfoRecorder.TAG, "CloudNetManger sendCarInfoRecord");
                        CarInfoRecorder.this.sendCarInfoRecord(carInfoMsg);
                    }
                    this.mCarUpdateId = carUpdateId;
                    this.counter = 0;
                } else {
                    this.counter++;
                }
                if (this.mIsCanceled && interrupted()) {
                    return;
                }
                try {
                    Thread.sleep(CloudConfig.getTcpCarInfoInternal());
                } catch (InterruptedException e) {
                    Log.e(CarInfoRecorder.TAG, "Exception:" + Log.getStackTraceString(e));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CarInfoMsg getCarInfoMsg() {
        return this.mCarInfoHelper.getCarInfoMsg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCarUpdateId() {
        return this.mCarInfoHelper.getCarUpdateId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCarInfoRecord(CarInfoMsg carInfoMsg) {
        if (this.mPushCallBack == null) {
            return;
        }
        long nonce = this.mTaiAccountInfoCallBack != null ? this.mTaiAccountInfoCallBack.getNonce() : 0L;
        CarInfoMessage.WeCarCarInfo.Builder newBuilder = CarInfoMessage.WeCarCarInfo.newBuilder();
        if (carInfoMsg.getBrakeStateModel() != null) {
            newBuilder.setBrakeState(carInfoMsg.getBrakeStateModel());
        }
        if (carInfoMsg.getSeatBeltModel() != null) {
            newBuilder.setSeatBelt(carInfoMsg.getSeatBeltModel());
        }
        if (carInfoMsg.getGearModel() != null) {
            newBuilder.setGear(carInfoMsg.getGearModel());
        }
        if (carInfoMsg.getAccModel() != null) {
            newBuilder.setAcc(carInfoMsg.getAccModel());
        }
        newBuilder.setTotalMileage(carInfoMsg.getTotalMileage());
        newBuilder.setEnduranceMileage(carInfoMsg.getEnduranceMileage());
        if (carInfoMsg.getFuelModel() != null) {
            newBuilder.setFuel(carInfoMsg.getFuelModel());
        }
        if (carInfoMsg.getLeanWaterModel() != null) {
            newBuilder.setLeanWater(carInfoMsg.getLeanWaterModel());
        }
        if (carInfoMsg.getCarSpeed() != null) {
            newBuilder.setCarSpeed(carInfoMsg.getCarSpeed());
        }
        if (carInfoMsg.getEngineSpeed() != null) {
            newBuilder.setEngineSpeed(carInfoMsg.getEngineSpeed());
        }
        if (carInfoMsg.getDoorStatusModel() != null) {
            newBuilder.setDoorStatus(carInfoMsg.getDoorStatusModel());
        }
        if (carInfoMsg.getLampModel() != null) {
            newBuilder.setLampStatusChanged(carInfoMsg.getLampModel());
        }
        if (carInfoMsg.getOutsideTemperature() != null) {
            newBuilder.setOutsideTemperature(carInfoMsg.getOutsideTemperature());
        }
        if (carInfoMsg.getAirConditionModel() != null) {
            newBuilder.setAirCondition(carInfoMsg.getAirConditionModel());
        }
        if (carInfoMsg.getBatteryVoltage() != null) {
            newBuilder.setBatteryVoltage(carInfoMsg.getBatteryVoltage());
        }
        this.mPushCallBack.addMessage(CloudMessage.createMessage(4, newBuilder.m153build().toByteArray(), nonce));
        CarInfoMessage.DoorStatusModel doorStatusModel = carInfoMsg.getDoorStatusModel();
        if (doorStatusModel != null) {
            LogUtils.d(TAG, "[DoorStatus: " + doorStatusModel.toString() + "]");
        }
        CarInfoMessage.LampModel lampModel = carInfoMsg.getLampModel();
        if (lampModel != null) {
            LogUtils.d(TAG, "[LampModel: " + lampModel.toString() + "]");
        }
    }

    private void updateCarInfo() {
        BrakeStateModel brakeState = WeCarInfoManager.getInstance().getBrakeState();
        SeatBeltModel seatBeltState = WeCarInfoManager.getInstance().getSeatBeltState();
        GearModel gearData = WeCarInfoManager.getInstance().getGearData();
        long totalMileageData = WeCarInfoManager.getInstance().getTotalMileageData();
        long enduranceMileageData = WeCarInfoManager.getInstance().getEnduranceMileageData();
        FuelModel fuelData = WeCarInfoManager.getInstance().getFuelData();
        LeanWaterModel leanWaterData = WeCarInfoManager.getInstance().getLeanWaterData();
        float carSpeedData = WeCarInfoManager.getInstance().getCarSpeedData();
        float engineSpeedData = WeCarInfoManager.getInstance().getEngineSpeedData();
        DoorStatusModel doorStatus = WeCarInfoManager.getInstance().getDoorStatus();
        LampModel lampStatus = WeCarInfoManager.getInstance().getLampStatus();
        OutsideTemperatureModel outsideTemperatureData = WeCarInfoManager.getInstance().getOutsideTemperatureData();
        float batteryVoltageData = WeCarInfoManager.getInstance().getBatteryVoltageData();
        if (this.mCarInfoHelper != null) {
            this.mCarInfoHelper.updateBrakeState(brakeState);
            this.mCarInfoHelper.updateSeatBelt(seatBeltState);
            this.mCarInfoHelper.updateGear(gearData);
            this.mCarInfoHelper.updateTotalMileage((int) totalMileageData);
            this.mCarInfoHelper.updateEnduranceMileage((int) enduranceMileageData);
            this.mCarInfoHelper.updateFuel(fuelData);
            this.mCarInfoHelper.updateLeanWater(leanWaterData);
            this.mCarInfoHelper.updateCarSpeed(carSpeedData);
            this.mCarInfoHelper.updateEngineSpeed(engineSpeedData);
            this.mCarInfoHelper.updateDoorStatus(doorStatus);
            this.mCarInfoHelper.updateLampStatus(lampStatus);
            this.mCarInfoHelper.updateOutsideTemperature(outsideTemperatureData);
            this.mCarInfoHelper.updateBatteryVoltage(batteryVoltageData);
        }
    }
}
