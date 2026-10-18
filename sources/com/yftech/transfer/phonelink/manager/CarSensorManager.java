package com.yftech.transfer.phonelink.manager;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.utils.LogUtil;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import com.yftech.transfer.service.CarTransferApplication;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarSensorManager extends BasicManager {
    private static final float NS2S = 1.0E-9f;
    public static final CarSensorManager ins = new CarSensorManager();
    private static final HashSet<CarSensorObservor> observors = new HashSet<>();
    private float timestamp;
    private float[] mAngle = new float[3];
    private float[] gravity = new float[3];
    private SensorEventListener mSensorEventListener = new SensorEventListener() { // from class: com.yftech.transfer.phonelink.manager.CarSensorManager.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent == null || sensorEvent.sensor == null) {
                return;
            }
            int type = sensorEvent.sensor.getType();
            if (type != 1) {
                if (type == 4) {
                    if (sensorEvent.values != null) {
                        int length = sensorEvent.values.length;
                    }
                    if (CarSensorManager.this.timestamp != 0.0f) {
                        float f = (((float) sensorEvent.timestamp) - CarSensorManager.this.timestamp) * CarSensorManager.NS2S;
                        float[] fArr = CarSensorManager.this.mAngle;
                        fArr[0] = fArr[0] + (sensorEvent.values[0] * f);
                        float[] fArr2 = CarSensorManager.this.mAngle;
                        fArr2[1] = fArr2[1] + (sensorEvent.values[1] * f);
                        float[] fArr3 = CarSensorManager.this.mAngle;
                        fArr3[2] = fArr3[2] + (sensorEvent.values[2] * f);
                        Math.toDegrees(CarSensorManager.this.mAngle[0]);
                        Math.toDegrees(CarSensorManager.this.mAngle[1]);
                        Math.toDegrees(CarSensorManager.this.mAngle[2]);
                    }
                    CarSensorManager.this.timestamp = (float) sensorEvent.timestamp;
                    Iterator it = CarSensorManager.observors.iterator();
                    while (it.hasNext()) {
                        ((CarSensorObservor) it.next()).onGyroscopeChanged(CarSensorManager.this.mAngle);
                    }
                    return;
                }
                if (type != 9) {
                    return;
                }
            }
            if (sensorEvent.values == null || sensorEvent.values.length < 3) {
                return;
            }
            CarSensorManager.this.gravity[0] = sensorEvent.values[0];
            CarSensorManager.this.gravity[1] = sensorEvent.values[1];
            CarSensorManager.this.gravity[2] = sensorEvent.values[2];
            Iterator it2 = CarSensorManager.observors.iterator();
            while (it2.hasNext()) {
                ((CarSensorObservor) it2.next()).onGravityAccelerometerChanged(CarSensorManager.this.gravity);
            }
        }
    };
    private SensorManager mSensorManager = (SensorManager) CarTransferApplication.context.getSystemService("sensor");

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarSensorObservor {
        public void onGravityAccelerometerChanged(float[] fArr) {
        }

        public void onGyroscopeChanged(float[] fArr) {
        }
    }

    public static void registerObservor(CarSensorObservor carSensorObservor) {
        observors.add(carSensorObservor);
    }

    public static void unregisterObservor(CarSensorObservor carSensorObservor) {
        observors.remove(carSensorObservor);
    }

    public static boolean isregisterObservor(CarSensorObservor carSensorObservor) {
        return observors.contains(carSensorObservor);
    }

    private CarSensorManager() {
    }

    public float[] getGravityAccelerometer() {
        return this.gravity;
    }

    public float[] getGyroscope() {
        return this.mAngle;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        Sensor sensor;
        List<Sensor> sensorList;
        this.mSensorManager.registerListener(this.mSensorEventListener, this.mSensorManager.getDefaultSensor(4), 0);
        if (this.mSensorManager.getDefaultSensor(9) != null && (sensorList = this.mSensorManager.getSensorList(9)) != null && !sensorList.isEmpty()) {
            Iterator<Sensor> it = sensorList.iterator();
            while (it.hasNext()) {
                sensor = it.next();
                LogUtil.i("init for sensor:" + sensor);
                String vendor = sensor.getVendor();
                if (vendor != null && vendor.contains("Google LLC") && sensor.getVersion() == 3) {
                    break;
                }
            }
        }
        sensor = null;
        LogUtil.i("init Sensor.TYPE_GRAVITY defaultSensor:" + sensor);
        if (sensor == null && this.mSensorManager.getDefaultSensor(1) != null) {
            sensor = this.mSensorManager.getDefaultSensor(1);
        }
        LogUtil.i("init Sensor.TYPE_ACCELEROMETER defaultSensor:" + sensor);
        Sensor defaultSensor = this.mSensorManager.getDefaultSensor(9);
        LogUtil.i("init finial defaultSensor:" + defaultSensor);
        if (defaultSensor != null) {
            this.mSensorManager.registerListener(this.mSensorEventListener, defaultSensor, 0);
        }
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        this.mSensorManager.unregisterListener(this.mSensorEventListener);
    }
}
