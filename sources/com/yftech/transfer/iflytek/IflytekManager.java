package com.yftech.transfer.iflytek;

import android.content.Context;
import com.utils.LogUtil;
import com.yftech.transfer.iflytek.opensdk.adapter.AudioAdapterImpl;
import com.yftech.transfer.iflytek.opensdk.adapter.BluetoothAdapterImpl;
import com.yftech.transfer.iflytek.opensdk.adapter.CarPropertyAdapterImpl;
import com.yftech.transfer.iflytek.opensdk.adapter.SystemAdapterImpl;
import com.yftech.transfer.service.utils.SystemPropertiesUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class IflytekManager {
    public static final String PRODUCT_PT025H = "x9h_ref";
    public static final String PRODUCT_PT025L = "x9m_ref";
    private static IflytekManager instance;
    private AudioAdapterImpl mAudioAdapterImpl;
    private BluetoothAdapterImpl mBluetoothAdapterImpl;
    private CarPropertyAdapterImpl mCarPropertyAdapterImpl;
    private Context mContext;
    private SystemAdapterImpl mSystemAdapterImpl;

    private IflytekManager(Context context) {
        this.mContext = context;
        LogUtil.i("IflytekManager init.... version: 2022/4/27 ");
    }

    public static IflytekManager getInstance(Context context) {
        if (instance == null) {
            instance = new IflytekManager(context);
        }
        return instance;
    }

    public void init() {
        if (getDeviceVersion().equals(PRODUCT_PT025H)) {
            this.mAudioAdapterImpl = new AudioAdapterImpl(this.mContext);
            this.mBluetoothAdapterImpl = new BluetoothAdapterImpl(this.mContext);
            this.mCarPropertyAdapterImpl = new CarPropertyAdapterImpl(this.mContext);
            this.mSystemAdapterImpl = new SystemAdapterImpl(this.mContext);
        }
    }

    public void uninit() {
        if (getDeviceVersion().equals(PRODUCT_PT025H)) {
            this.mAudioAdapterImpl.release();
            this.mBluetoothAdapterImpl.release();
            this.mCarPropertyAdapterImpl.release();
            this.mSystemAdapterImpl.release();
        }
    }

    private String getDeviceVersion() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i(" curProductDevice: " + productDevice);
        return productDevice;
    }
}
