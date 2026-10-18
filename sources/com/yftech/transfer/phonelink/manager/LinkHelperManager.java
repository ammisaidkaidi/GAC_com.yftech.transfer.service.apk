package com.yftech.transfer.phonelink.manager;

import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.transfer.phonelink.helper.BasicLinkHelper;
import com.yftech.transfer.phonelink.helper.CarLifeLinkHelper;
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.helper.EaseConnLinkHelper;
import com.yftech.transfer.phonelink.helper.HiCarLinkHelper;
import com.yftech.transfer.phonelink.helper.NoneLinkHelper;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import io.reactivex.annotations.SchedulerSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class LinkHelperManager extends BasicManager {
    public static final LinkHelperManager ins = new LinkHelperManager();
    private Map<String, BasicLinkHelper> map = new HashMap(3);
    private NoneLinkHelper mNoneLinkHelper = new NoneLinkHelper();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
    
        if (r0.equals(com.yftech.transfer.phonelink.manager.ProductDeviceManager.PRODUCT_CB_IHU23_C1) != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private LinkHelperManager() {
        boolean z;
        char c = 3;
        boolean isA58G = ProductDeviceManager.ins.isA58G();
        boolean isA79G = ProductDeviceManager.ins.isA79G();
        if (isA58G || isA79G) {
            this.map.put("easyconn", new EaseConnLinkHelper());
            this.map.put("carplay", new CarPlayLinkHelper());
            return;
        }
        this.map.put("carlife", new CarLifeLinkHelper());
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        int hashCode = curProductDevice.hashCode();
        if (hashCode != 202029462) {
            if (hashCode == 2039290871 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                z = false;
            }
            z = -1;
        } else {
            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                z = true;
            }
            z = -1;
        }
        switch (z) {
            case false:
            case true:
                this.map.put("hicar", new NoneLinkHelper());
                break;
            default:
                this.map.put("hicar", new HiCarLinkHelper());
                break;
        }
        switch (curProductDevice.hashCode()) {
            case 201076150:
                if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 202029462:
                break;
            case 1292373688:
                if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1979690371:
                if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2039290871:
                if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
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
                this.map.put("carplay", new CarPlayLinkHelper());
                return;
            case 4:
                this.map.put("carplay", new CarPlayLinkHelper());
                return;
            default:
                this.map.put("carplay", new NoneLinkHelper());
                return;
        }
    }

    public BasicLinkHelper get(String str) {
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        return basicLinkHelper == null ? this.mNoneLinkHelper : basicLinkHelper;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        Iterator<Map.Entry<String, BasicLinkHelper>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().init();
        }
    }

    public void connectByUsb(String str) {
        Log.i(this.TAG, "connect:" + str);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.connectByUsb();
    }

    public void connectByWireless(String str) {
        Log.i(this.TAG, "connect:" + str);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.connectByWireless();
    }

    public void disableOtherPhoneLink() {
        Log.i(this.TAG, "phonelinkprog disable");
        String connectedLinkStatus = getConnectedLinkStatus();
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            if (!connectedLinkStatus.equals(key)) {
                boolean isConnected = value.isConnected();
                Log.i(this.TAG, "phonelinkprog disable key:" + key + ",is phonelinkOn:" + isConnected);
                value.enable(false);
                if (isConnected) {
                    value.disconnect();
                }
            }
        }
    }

    public void enable() {
        Log.i(this.TAG, "phonelinkprog enable");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            Log.i(this.TAG, "phonelinkprog key:" + key + "\n");
            Log.i(this.TAG, "phonelinkprog enable:true\n");
            value.enable(true);
        }
        Log.i(this.TAG, "-------------------------");
    }

    public String getPhoneName() {
        Iterator<Map.Entry<String, BasicLinkHelper>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            BasicLinkHelper value = it.next().getValue();
            if (value.isConnected()) {
                return value.getPhoneName();
            }
        }
        return "";
    }

    public void disable() {
        Log.i(this.TAG, "phonelinkprog disable");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            Log.i(this.TAG, "phonelinkprog key:" + key + ",disable");
            value.enable(false);
        }
        Log.i(this.TAG, "-------------------------");
    }

    public void mute(boolean z) {
        Log.i(this.TAG, "mute:" + z);
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            boolean isConnected = value.isConnected();
            Log.i(this.TAG, "mute key:" + key + ",connected:" + isConnected);
            value.mute(z);
        }
    }

    public void pause() {
        Log.i(this.TAG, "pause()");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            boolean isConnected = value.isConnected();
            Log.i(this.TAG, "pause key:" + key + ",connected:" + isConnected);
            if (isConnected) {
                value.pause();
            }
        }
    }

    public void pauseForResume() {
        Log.i(this.TAG, "pauseForResume()");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            boolean isConnected = value.isConnected();
            Log.i(this.TAG, "pauseForResume key:" + key + ",connected:" + isConnected);
            if (isConnected) {
                value.pauseForResume();
            }
        }
    }

    public void resume() {
        Log.i(this.TAG, "resume()");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            boolean isConnected = value.isConnected();
            Log.i(this.TAG, "resume key:" + key + ",connected:" + isConnected);
            if (isConnected) {
                value.resume();
            }
        }
    }

    public void closeVR() {
        Log.i(this.TAG, "closeVR()");
        for (Map.Entry<String, BasicLinkHelper> entry : this.map.entrySet()) {
            String key = entry.getKey();
            BasicLinkHelper value = entry.getValue();
            boolean isConnected = value.isConnected();
            Log.i(this.TAG, "closeVR kezy:" + key + ",connected:" + isConnected);
            if (isConnected) {
                int vRStatus = value.getVRStatus();
                LogUtil.i("closeVR vrStatus:" + vRStatus);
                if (1 == vRStatus) {
                    value.closeVR();
                }
            }
        }
    }

    public void disConnect(String str) {
        Log.i(this.TAG, "disConnect:" + str);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.disconnect();
    }

    public void disConnect() {
        Log.i(this.TAG, "disConnect");
        Iterator<Map.Entry<String, BasicLinkHelper>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            BasicLinkHelper value = it.next().getValue();
            if (value.isConnected()) {
                value.disconnect();
            }
        }
    }

    public void startPage(String str, int i) {
        Log.i(this.TAG, "startPage:" + str + "," + i);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.startPage(i);
    }

    public String getConnectedLinkStatus() {
        Iterator<Map.Entry<String, BasicLinkHelper>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            BasicLinkHelper value = it.next().getValue();
            if (value.isConnected()) {
                return value.linkName();
            }
        }
        return SchedulerSupport.NONE;
    }

    public List<CarLinkDevice> getCarLinkDeviceList(String str) {
        Log.i(this.TAG, "getCarLinkDeviceList:" + str);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return new ArrayList();
        }
        return basicLinkHelper.getCarLinkDeviceList();
    }

    public List<CarLinkDevice> getAvailableCarLinkDeviceList(String str) {
        Log.i(this.TAG, "getAvailableCarLinkDeviceList:" + str);
        BasicLinkHelper basicLinkHelper = this.map.get(str);
        if (basicLinkHelper == null) {
            return new ArrayList();
        }
        return basicLinkHelper.getAvailableCarLinkDeviceList();
    }

    public void connectCarLinkDevice(CarLinkDevice carLinkDevice) {
        Log.i(this.TAG, "connectCarLinkDevice:" + carLinkDevice);
        BasicLinkHelper basicLinkHelper = this.map.get(carLinkDevice.getPhoneType());
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.connectCarLinkDevice(carLinkDevice);
    }

    public void forgetCarLinkDevice(CarLinkDevice carLinkDevice) {
        Log.i(this.TAG, "forgetCarLinkDevice:" + carLinkDevice);
        BasicLinkHelper basicLinkHelper = this.map.get(carLinkDevice.getPhoneType());
        if (basicLinkHelper == null) {
            return;
        }
        basicLinkHelper.forgetCarLinkDevice(carLinkDevice);
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        Iterator<Map.Entry<String, BasicLinkHelper>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().uninit();
        }
    }
}
