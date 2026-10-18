package com.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Environment;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import com.autochips.carplayapp.IServiceInterface;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.productdevice.CA1105Helper;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.service.utils.AppUtil;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPlayUtils {
    private static final String FILE_CERTIFICATE_PATH = "/data/media/0/certificate";
    private static final String KEY_ALSA_ENABLE = "persist.carplay.alsa.enable";
    private static final String KEY_CERTIFICATE = "persist.sys.carplay.certificate";
    private static final String KEY_CHECK_REBOOT = "persist.carplay.check.reboot";
    private static final String KEY_DL_RATE = "persist.vendor.ul.dl.same.rate";
    private static final String KEY_ENHANCED_SIRI = "persist.carplay.enhanced.siri";
    private static final String KEY_INIT_RESOLUTION = "persist.carplay.init.resolution";
    private static final String KEY_TELEPHONY_FLASH = "persist.carplay.telephony.flash";
    private static final String VALUE_FALSE = "false";
    private static final String VALUE_OFF = "0";
    private static final String VALUE_ON = "1";
    private static final String VALUE_TRUE = "true";
    private static Disposable certificateD = null;
    private static boolean mCarplayBinded = false;
    private static IServiceInterface sCarplayApp;
    private static final boolean CARPLAY_FAST_MODE = SystemProperties.getBoolean("ro.atc.carplay.app.fast_mode", false);
    private static final ServiceConnection sCarplayConnection = new ServiceConnection() { // from class: com.utils.CarPlayUtils.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.i("onServiceConnected from CarplayApp");
            IServiceInterface unused = CarPlayUtils.sCarplayApp = IServiceInterface.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtil.i("onServiceDisconnected from CarplayApp");
            IServiceInterface unused = CarPlayUtils.sCarplayApp = null;
            boolean unused2 = CarPlayUtils.mCarplayBinded = false;
        }
    };

    public static void bindCarPlayApp(Context context) {
        LogUtil.i("bindCarPlayApp:" + CARPLAY_FAST_MODE + "," + mCarplayBinded);
        if (!CARPLAY_FAST_MODE || mCarplayBinded) {
            return;
        }
        Intent intent = new Intent("com.autochips.carplay.START_CARPLAY_SERVICE");
        intent.setPackage(ActivityChangedReceiver.PKG_CARPLAY);
        mCarplayBinded = context.bindService(intent, sCarplayConnection, 1);
        if (!mCarplayBinded) {
            context.unbindService(sCarplayConnection);
        }
        LogUtil.i("ATC: bindCarPlayApp bindService suc: " + mCarplayBinded);
    }

    public static void unbindCarPlayApp(Context context) {
        LogUtil.i("unbindCarPlayApp CARPLAY_FAST_MODE:" + CARPLAY_FAST_MODE + ",mCarplayBinded:" + mCarplayBinded);
        if (CARPLAY_FAST_MODE && mCarplayBinded) {
            mCarplayBinded = false;
            sCarplayApp = null;
            try {
                context.unbindService(sCarplayConnection);
            } catch (IllegalArgumentException unused) {
                LogUtil.i("ATC: unbindService IllegalArgumentException");
            }
        }
    }

    private CarPlayUtils() {
    }

    public static void launchApp(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(ActivityChangedReceiver.PKG_CARPLAY);
        LogUtil.i("launchApp intent:" + launchIntentForPackage);
        if (launchIntentForPackage == null) {
            return;
        }
        LogUtil.i("CARPLAY_FAST_MODE:" + CARPLAY_FAST_MODE);
        if (CARPLAY_FAST_MODE) {
            LogUtil.i("ATC: start package sCarplayApp = " + sCarplayApp);
            try {
                if (sCarplayApp != null) {
                    sCarplayApp.showCarPlay();
                }
            } catch (RemoteException unused) {
                LogUtil.i("ATC: CarPlay App error.");
            }
        }
    }

    public static void checkCarplayCertificateState() {
        if (certificateD != null) {
            certificateD.dispose();
        }
        certificateD = AppUtil.intervalOnThread(new Consumer<Long>() { // from class: com.utils.CarPlayUtils.2
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                boolean equals = Environment.getExternalStorageState().equals("mounted");
                LogUtil.i("checkCarplayCertificateState isMount:" + equals);
                if (equals) {
                    if (CarPlayUtils.certificateD != null) {
                        CarPlayUtils.certificateD.dispose();
                    }
                    boolean exists = new File(CarPlayUtils.FILE_CERTIFICATE_PATH).exists();
                    LogUtil.i("checkCarplayCertificateState /sdcard/certificate isExist:" + exists);
                    if (exists) {
                        SystemProperties.set(CarPlayUtils.KEY_CERTIFICATE, "1");
                        SystemProperties.set(CarPlayUtils.KEY_DL_RATE, "1");
                        SystemProperties.set(CarPlayUtils.KEY_ALSA_ENABLE, "true");
                        SystemProperties.set(CarPlayUtils.KEY_ENHANCED_SIRI, "true");
                        LogUtil.i("checkCarplayCertificateState turnon KEY_ENHANCED_SIRI:persist.carplay.enhanced.siri");
                        LogUtil.i("checkCarplayCertificateState persist.carplay.telephony.flash = true");
                        if (ProductDeviceManager.PRODUCT_CA1105.equals(ProductDeviceManager.ins.getCurProductDevice())) {
                            CA1105Helper.writeDis_ioc_ctrl();
                            SystemProperties.set(CarPlayUtils.KEY_TELEPHONY_FLASH, "true");
                        }
                    } else {
                        SystemProperties.set(CarPlayUtils.KEY_CERTIFICATE, "0");
                        SystemProperties.set(CarPlayUtils.KEY_DL_RATE, "0");
                        SystemProperties.set(CarPlayUtils.KEY_ALSA_ENABLE, "false");
                        SystemProperties.set(CarPlayUtils.KEY_ENHANCED_SIRI, "false");
                        if (ProductDeviceManager.PRODUCT_CA1105.equals(ProductDeviceManager.ins.getCurProductDevice())) {
                            SystemProperties.set(CarPlayUtils.KEY_TELEPHONY_FLASH, "false");
                        }
                        LogUtil.i("checkCarplayCertificateState persist.carplay.telephony.flash = false");
                        LogUtil.i("checkCarplayCertificateState turnoff KEY_ENHANCED_SIRI:persist.carplay.enhanced.siri");
                    }
                    if (ProductDeviceManager.PRODUCT_CBIHU12.equals(ProductDeviceManager.ins.getCurProductDevice())) {
                        SystemProperties.set(CarPlayUtils.KEY_CHECK_REBOOT, "false");
                        LogUtil.i("KEY_CHECK_REBOOT = false");
                    }
                }
            }
        }, 200L);
    }

    public static void turnOffResolution() {
        LogUtil.i("turnOffResolution()");
        SystemProperties.set(KEY_INIT_RESOLUTION, "false");
    }

    public static boolean isCarplayCertificateOn() {
        String str = SystemProperties.get(KEY_CERTIFICATE, "0");
        String str2 = SystemProperties.get(KEY_DL_RATE, "0");
        LogUtil.i("isCarplayCertificateOn certificateValue:" + str);
        LogUtil.i("isCarplayCertificateOn dlrateValue:" + str2);
        return "1".equals(str) && "1".equals(str2);
    }
}
