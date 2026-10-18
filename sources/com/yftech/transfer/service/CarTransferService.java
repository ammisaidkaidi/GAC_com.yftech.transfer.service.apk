package com.yftech.transfer.service;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Log;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.yftech.car.permission.CarPermission;
import com.yftech.transfer.media.CarTransferMediaService;
import com.yftech.transfer.phonelink.CarLifeLinkService;
import com.yftech.transfer.phonelink.CarPhoneLinkMediaService;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.carlife.CarLifeClient;
import com.yftech.transfer.phonelink.manager.ManagerHelper;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.phonelink.receiver.TestRecevier;
import com.yftech.transfer.phonelink.receiver.WifiReceiver;
import com.yftech.transfer.phonelink.stub.CarLifeClientCallbackInterfaceStub;
import com.yftech.transfer.pki.PkiService;
import com.yftech.transfer.service.utils.SystemPropertiesUtil;
import com.yftech.transfer.service.utils.WifiApManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTransferService extends Service {
    private final String TAG = getClass().getName();
    private TestRecevier testRecevier = new TestRecevier();
    private WifiReceiver wifiReceiver = new WifiReceiver();
    private ActivityChangedReceiver activityChangedReceiver = new ActivityChangedReceiver();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(this.TAG, "CarTransferService onCreate()");
        isNeedToInitPhoneLink();
        isNeedToInitPki();
        isNeedToInitCarTransferMediaService();
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        isNeedToUninitPhoneLink();
        isNeedToUnInitPki();
    }

    private void isNeedToInitPki() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i("isNeedToInitPki productDevice:" + productDevice);
        if (((productDevice.hashCode() == 2039290846 && productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU19)) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        startService(new Intent(this, (Class<?>) PkiService.class));
    }

    private void isNeedToUnInitPki() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i("isNeedToUnInitPki productDevice:" + productDevice);
        if (productDevice.hashCode() == 2039290846 && productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU19)) {
        }
    }

    private void isNeedToInitCarTransferMediaService() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i("isNeedToInitPlatformAdapterService productDevice:" + productDevice);
        if (((productDevice.hashCode() == 2039290846 && productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU19)) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        startService(new Intent(getApplicationContext(), (Class<?>) CarTransferMediaService.class));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void isNeedToInitPhoneLink() {
        char c;
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i("isNeedToInitPhoneLink productDevice:" + productDevice);
        switch (productDevice.hashCode()) {
            case 201076150:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 202029462:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1292373688:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1979690371:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2039290871:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                CarLifeClient.getInstance().init(this, new CarLifeClientCallbackInterfaceStub());
                CarPlayUtils.checkCarplayCertificateState();
                ManagerHelper.init();
                ServiceManager.addService("car_phonelinkmedia", new CarPhoneLinkMediaService());
                ServiceManager.addService("car_phonelink", new CarPhoneLinkService());
                startService(new Intent(this, (Class<?>) CarLifeLinkService.class));
                registerReceiver(this.activityChangedReceiver, new IntentFilter("android.activity.action.STATE_CHANGED"));
                registerReceiver(this.testRecevier, new IntentFilter(TestRecevier.ACTION));
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                intentFilter.addAction(WifiApManager.WIFI_AP_STATE_ACTION);
                registerReceiver(this.wifiReceiver, intentFilter);
                CarPermission.initAsync(getClass().getName(), (Runnable) null);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void isNeedToUninitPhoneLink() {
        char c;
        String productDevice = SystemPropertiesUtil.getProductDevice();
        LogUtil.i("isNeedToUninitPhoneLink productDevice:" + productDevice);
        switch (productDevice.hashCode()) {
            case 201076150:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 202029462:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1292373688:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1979690371:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2039290871:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                ManagerHelper.uninit();
                unregisterReceiver(this.activityChangedReceiver);
                unregisterReceiver(this.testRecevier);
                unregisterReceiver(this.wifiReceiver);
                return;
            default:
                return;
        }
    }
}
