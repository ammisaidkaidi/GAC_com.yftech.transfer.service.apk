package com.tencent.taifeedback.upload.sdk.listener;

import android.content.Context;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import com.tencent.taifeedback.upload.sdk.utils.Utils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ShakeListener implements SensorListener {
    private static String TAG = "ShakeListener";
    private Context mContext;
    private long mLastForce;
    private long mLastShake;
    private long mLastTime;
    private SensorManager mSensorMgr;
    private OnShakeListener mShakeListener;
    private int FORCE_THRESHOLD = 950;
    private int TIME_THRESHOLD = 110;
    private int SHAKE_TIMEOUT = 500;
    private int SHAKE_DURATION = 1000;
    private int SHAKE_COUNT = 4;
    private float mLastX = -1.0f;
    private float mLastY = -1.0f;
    private float mLastZ = -1.0f;
    private int mShakeCount = 0;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnShakeListener {
        void onShake();
    }

    @Override // android.hardware.SensorListener
    public void onAccuracyChanged(int i, int i2) {
    }

    public ShakeListener(Context context) {
        this.mContext = context;
        start();
    }

    public void setOnShakeListener(OnShakeListener onShakeListener) {
        this.mShakeListener = onShakeListener;
    }

    public void start() {
        try {
            this.mSensorMgr = (SensorManager) this.mContext.getSystemService("sensor");
            if (this.mSensorMgr == null) {
                Utils.getInstance().log(TAG, "不支持摇一摇");
            } else {
                if (this.mSensorMgr.registerListener(this, 2, 1)) {
                    return;
                }
                this.mSensorMgr.unregisterListener(this, 2);
                Utils.getInstance().log(TAG, "不支持摇一摇");
            }
        } catch (NullPointerException e) {
            Utils.getInstance().log(TAG, e.getMessage());
        }
    }

    public void stop() {
        if (this.mSensorMgr != null) {
            this.mSensorMgr.unregisterListener(this, 2);
            this.mSensorMgr = null;
        }
    }

    @Override // android.hardware.SensorListener
    public void onSensorChanged(int i, float[] fArr) {
        if (i != 2) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.mLastForce > this.SHAKE_TIMEOUT) {
            this.mShakeCount = 0;
        }
        if (currentTimeMillis - this.mLastTime > this.TIME_THRESHOLD) {
            if ((Math.abs(((((fArr[0] + fArr[1]) + fArr[2]) - this.mLastX) - this.mLastY) - this.mLastZ) / ((float) (currentTimeMillis - this.mLastTime))) * 10000.0f > this.FORCE_THRESHOLD) {
                int i2 = this.mShakeCount + 1;
                this.mShakeCount = i2;
                if (i2 >= this.SHAKE_COUNT && currentTimeMillis - this.mLastShake > this.SHAKE_DURATION) {
                    this.mLastShake = currentTimeMillis;
                    this.mShakeCount = 0;
                    if (this.mShakeListener != null) {
                        this.mShakeListener.onShake();
                    }
                }
                this.mLastForce = currentTimeMillis;
            }
            this.mLastTime = currentTimeMillis;
            this.mLastX = fArr[0];
            this.mLastY = fArr[1];
            this.mLastZ = fArr[2];
        }
    }
}
