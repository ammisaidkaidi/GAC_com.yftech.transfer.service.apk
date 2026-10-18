package com.yftech.transfer.phonelink.manager;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.transfer.phonelink.consumer.ExceptionConsumer;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.transfer.txznet.access.AbsBaseAdapter;
import com.yftech.vehicle.internal.adapter.ICarPower;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class UsbLinkManager extends BasicManager {
    public static final int AOA_VID = 6353;
    public static final String ManufacturerName_HUAWEI = "HUAWEI";
    public static final String USB_01_URL = "/dev/bus/usb/001";
    public static final String USB_02_URL = "/dev/bus/usb/002";
    public static final UsbLinkManager ins = new UsbLinkManager();
    private String curProductName;
    private final String CBIHU12_USB_MODE_PATH = "/sys/class/dual_role_usb/dual-role-usb20/data_role";
    private List<Integer> uVidList = new ArrayList();
    private List<Integer> hwVidList = new ArrayList();
    private List<Integer> ca1105IOSPidList = new ArrayList();
    private List<Integer> iosList = new ArrayList();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnCA1105LostUsbPowerListener {
        void onFinish();
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
    }

    public boolean isIphoneVid(int i) {
        return i == 1452;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
    }

    private UsbLinkManager() {
        LogUtil.i("UsbLinkManager()");
        this.uVidList.add(Integer.valueOf(AbsBaseAdapter.SYS_KEY_TYPE_MEDIA));
        this.uVidList.add(1921);
        this.uVidList.add(3725);
        this.hwVidList.add(4817);
        this.hwVidList.add(13211);
        this.ca1105IOSPidList.add(18704);
        this.ca1105IOSPidList.add(18705);
        this.iosList.add(1452);
        this.iosList.add(2385);
    }

    public List<Integer> getHuaWeiVidList() {
        return this.hwVidList;
    }

    public Disposable readCBIHU12UsbMode(Consumer<String> consumer) {
        return Observable.interval(300L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function<Long, ObservableSource<String>>() { // from class: com.yftech.transfer.phonelink.manager.UsbLinkManager.1
            @Override // io.reactivex.functions.Function
            public ObservableSource<String> apply(Long l) {
                return Observable.create(new ObservableOnSubscribe<String>() { // from class: com.yftech.transfer.phonelink.manager.UsbLinkManager.1.1
                    @Override // io.reactivex.ObservableOnSubscribe
                    public void subscribe(ObservableEmitter<String> observableEmitter) {
                        LogUtil.i("readUsbMode," + Thread.currentThread());
                        try {
                            File file = new File("/sys/class/dual_role_usb/dual-role-usb20/data_role");
                            if (!file.exists()) {
                                observableEmitter.onNext("");
                                return;
                            }
                            FileReader fileReader = new FileReader(file);
                            StringBuilder sb = new StringBuilder();
                            char[] cArr = new char[512];
                            while (true) {
                                int read = fileReader.read(cArr);
                                if (read != -1) {
                                    sb.append(cArr, 0, read);
                                } else {
                                    observableEmitter.onNext(sb.toString());
                                    LogUtil.i("readUsbMode,mode:" + sb.toString());
                                    return;
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).subscribeOn(Schedulers.io());
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }

    public int getPhoneType(UsbDevice usbDevice, boolean z) {
        UsbInterface usbInterface = usbDevice.getInterface(0);
        String deviceName = usbDevice.getDeviceName();
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        int interfaceClass = usbInterface.getInterfaceClass();
        int interfaceSubclass = usbInterface.getInterfaceSubclass();
        int interfaceProtocol = usbInterface.getInterfaceProtocol();
        Log.i(this.TAG, "usbdevice name:" + deviceName);
        Log.i(this.TAG, "usbdevice mManufacturerName:" + manufacturerName);
        Log.i(this.TAG, "usbdevice mProductName:" + productName);
        Log.i(this.TAG, "usbdevice vendorId:" + vendorId);
        Log.i(this.TAG, "usbdevice productId:" + productId);
        Log.i(this.TAG, "usbdevice usbClass:" + interfaceClass);
        Log.i(this.TAG, "usbdevice usbSubClass:" + interfaceSubclass);
        Log.i(this.TAG, "usbdevice usbProtocol:" + interfaceProtocol);
        boolean startsWith = !z ? deviceName.startsWith(USB_01_URL) : true;
        LogUtil.i("uVidList:" + this.uVidList.size());
        if (startsWith && !this.uVidList.contains(Integer.valueOf(vendorId))) {
            LogUtil.i("!uVidList.contains(vendorId)");
            if (usbDevice.getInterfaceCount() > 0) {
                if (interfaceClass == 3 || interfaceClass == 7 || interfaceClass == 9 || interfaceClass == 11 || interfaceClass == 224 || (interfaceClass == 8 && interfaceSubclass == 6 && interfaceProtocol == 80)) {
                    return -1;
                }
                if (this.iosList.contains(Integer.valueOf(vendorId))) {
                    return 1;
                }
                return this.hwVidList.contains(Integer.valueOf(vendorId)) ? 2 : 0;
            }
        }
        return -1;
    }

    public int getBaiduPhoneType(UsbDevice usbDevice, boolean z) {
        UsbInterface usbInterface = usbDevice.getInterface(0);
        String deviceName = usbDevice.getDeviceName();
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        int interfaceClass = usbInterface.getInterfaceClass();
        int interfaceSubclass = usbInterface.getInterfaceSubclass();
        int interfaceProtocol = usbInterface.getInterfaceProtocol();
        Log.i(this.TAG, "usbdevice name:" + deviceName);
        Log.i(this.TAG, "usbdevice mManufacturerName:" + manufacturerName);
        Log.i(this.TAG, "usbdevice mProductName:" + productName);
        Log.i(this.TAG, "usbdevice vendorId:" + vendorId);
        Log.i(this.TAG, "usbdevice productId:" + productId);
        Log.i(this.TAG, "usbdevice usbClass:" + interfaceClass);
        Log.i(this.TAG, "usbdevice usbSubClass:" + interfaceSubclass);
        Log.i(this.TAG, "usbdevice usbProtocol:" + interfaceProtocol);
        boolean startsWith = !z ? deviceName.startsWith(USB_01_URL) : true;
        LogUtil.i("uVidList:" + this.uVidList.size());
        if (startsWith && !this.uVidList.contains(Integer.valueOf(vendorId))) {
            LogUtil.i("!uVidList.contains(vendorId)");
            if (usbDevice.getInterfaceCount() > 0) {
                if (interfaceClass == 3 || interfaceClass == 7 || interfaceClass == 9 || interfaceClass == 11 || interfaceClass == 224 || (interfaceClass == 8 && interfaceSubclass == 6 && interfaceProtocol == 80)) {
                    return -1;
                }
                return (vendorId == 1452 || vendorId == 2385) ? 1 : 0;
            }
        }
        return -1;
    }

    public int getPhoneTypeFromHub(UsbDevice usbDevice) {
        UsbInterface usbInterface = usbDevice.getInterface(0);
        String deviceName = usbDevice.getDeviceName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        int interfaceClass = usbInterface.getInterfaceClass();
        int interfaceSubclass = usbInterface.getInterfaceSubclass();
        int interfaceProtocol = usbInterface.getInterfaceProtocol();
        int interfaceCount = usbDevice.getInterfaceCount();
        LogUtil.i("getPhoneTypeFromHub name:" + deviceName);
        LogUtil.i("getPhoneTypeFromHub mManufacturerName:" + manufacturerName);
        LogUtil.i("getPhoneTypeFromHub mProductName:" + productName);
        LogUtil.i("getPhoneTypeFromHub vendorId:" + vendorId);
        LogUtil.i("getPhoneTypeFromHub productId:" + productId);
        LogUtil.i("getPhoneTypeFromHub usbClass:" + interfaceClass);
        LogUtil.i("getPhoneTypeFromHub usbSubClass:" + interfaceSubclass);
        LogUtil.i("getPhoneTypeFromHub usbProtocol:" + interfaceProtocol);
        LogUtil.i("getPhoneTypeFromHub interfaceCount:" + interfaceCount);
        LogUtil.i("getPhoneTypeFromHub uVidList:" + this.uVidList.size());
        if (isIOSHubID(vendorId, productId)) {
            LogUtil.i("getPhoneTypeFromHub isIOSHubID: isIphone");
            return 1;
        }
        if (!this.uVidList.contains(Integer.valueOf(vendorId)) && !this.iosList.contains(Integer.valueOf(vendorId))) {
            LogUtil.i("!uVidList.contains(vendorId) && !iosList.contains(vendorId)");
            if (usbDevice.getInterfaceCount() > 0) {
                if (interfaceClass == 3 || interfaceClass == 7 || interfaceClass == 9 || interfaceClass == 11 || interfaceClass == 224 || (interfaceClass == 8 && interfaceSubclass == 6 && interfaceProtocol == 80)) {
                    return -1;
                }
                return vendorId == 6353 ? ManufacturerName_HUAWEI.equals(manufacturerName) ? 2 : 0 : this.hwVidList.contains(Integer.valueOf(vendorId)) ? 2 : 0;
            }
        }
        return -1;
    }

    private boolean isIOSHubID(int i, int i2) {
        LogUtil.i("isIOSHubID:" + i + "," + i2);
        return (i == 1060 && i2 == 18704) || (i == 1060 && (i2 == 18705 || i2 == 18704));
    }

    public Disposable ca1105LostUsbPowerAtTimeWhenStandBy(final OnCA1105LostUsbPowerListener onCA1105LostUsbPowerListener, long j) {
        return AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.manager.UsbLinkManager.2
            /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Long l) {
                Throwable th;
                Exception e;
                FileOutputStream powerState = CarControlManager.ins.getPowerState();
                LogUtil.i("ca1105LostUsbPowerAtTimeWhenStandBy getPowerState:" + powerState);
                FileOutputStream fileOutputStream = ICarPower.PowerState.SYSTEMON;
                if (powerState == fileOutputStream) {
                    return;
                }
                LogUtil.i("ca1105LostUsbPowerAtTimeWhenStandBy start");
                try {
                    try {
                        try {
                            fileOutputStream = new FileOutputStream("/sys/atcxhci-u2/vbus");
                            try {
                                fileOutputStream.write("vbus_0".getBytes());
                                LogUtil.i("ca1105LostUsbPowerAtTimeWhenStandBy complete");
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                LogUtil.e("ca1105LostUsbPowerAtTimeWhenStandBy error:" + e.getMessage());
                                if (fileOutputStream != null) {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                }
                                if (onCA1105LostUsbPowerListener != null) {
                                }
                                LogUtil.i("ca1105LostUsbPowerAtTimeWhenStandBy end");
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        fileOutputStream = null;
                        e = e4;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                        if (fileOutputStream != null) {
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                if (onCA1105LostUsbPowerListener != null) {
                    onCA1105LostUsbPowerListener.onFinish();
                }
                LogUtil.i("ca1105LostUsbPowerAtTimeWhenStandBy end");
            }
        }, j);
    }

    public Disposable ca1105ChargedUsbPower() {
        return AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.manager.UsbLinkManager.3
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r4v1 */
            /* JADX WARN: Type inference failed for: r4v12 */
            /* JADX WARN: Type inference failed for: r4v13 */
            /* JADX WARN: Type inference failed for: r4v14 */
            /* JADX WARN: Type inference failed for: r4v15 */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.io.FileOutputStream] */
            /* JADX WARN: Type inference failed for: r4v4 */
            /* JADX WARN: Type inference failed for: r4v5 */
            /* JADX WARN: Type inference failed for: r4v7 */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0023 -> B:8:0x0052). Please report as a decompilation issue!!! */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Object obj) {
                Throwable th;
                FileOutputStream fileOutputStream;
                Exception e;
                LogUtil.i("ca1105ChargedUsbPower start");
                try {
                    try {
                        try {
                            fileOutputStream = new FileOutputStream("/sys/atcxhci-u2/vbus");
                            try {
                                fileOutputStream.write("vbus_1".getBytes());
                                fileOutputStream.flush();
                                LogUtil.i("ca1105ChargedUsbPower complete");
                                fileOutputStream.close();
                                obj = fileOutputStream;
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                LogUtil.e("ca1105ChargedUsbPower error:" + e.getMessage());
                                obj = fileOutputStream;
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                    obj = fileOutputStream;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (obj != 0) {
                                try {
                                    obj.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        fileOutputStream = null;
                        e = e4;
                    } catch (Throwable th3) {
                        obj = 0;
                        th = th3;
                        if (obj != 0) {
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                    obj = obj;
                }
            }
        });
    }

    public Disposable lsusb(Consumer<String> consumer) {
        return Observable.create(new ObservableOnSubscribe<String>() { // from class: com.yftech.transfer.phonelink.manager.UsbLinkManager.4
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<String> observableEmitter) {
                LogUtil.i("lsusb");
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec("lsusb").getInputStream());
                    char[] cArr = new char[1024];
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            LogUtil.i("lsusb reslut:" + sb.toString());
                            observableEmitter.onNext(sb.toString());
                            return;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    LogUtil.e("lsusb error:" + e.getMessage());
                    observableEmitter.onNext("");
                }
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }

    public void usbAttached(UsbDevice usbDevice) {
        ProductDeviceManager.ins.usbAttached(usbDevice);
    }

    public void usbDetached(UsbDevice usbDevice) {
        ProductDeviceManager.ins.usbDetached(usbDevice);
    }

    public List<Integer> getuVidList() {
        return this.uVidList;
    }

    public List<Integer> getHwVidList() {
        return this.hwVidList;
    }

    public List<Integer> getCa1105IOSPidList() {
        return this.ca1105IOSPidList;
    }
}
