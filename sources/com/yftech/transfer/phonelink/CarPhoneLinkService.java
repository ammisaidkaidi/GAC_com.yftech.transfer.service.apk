package com.yftech.transfer.phonelink;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.util.Log;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.yftech.car.permission.CarPermission;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.ICarPhoneLinkCallback;
import com.yftech.car.phonelink.ICarPhoneLinkService;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.phonelink.helper.BasicLinkHelper;
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.helper.HiCarLinkHelper;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.Manifest;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPhoneLinkService extends ICarPhoneLinkService.Stub {
    private static final RemoteCallbackList<ICarPhoneLinkCallback> list = new RemoteCallbackList<>();
    private static final Lock mLock = new ReentrantLock();
    private final String TAG = getClass().getName();
    private CarPowerListenerImp.CarPowerObservor carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.CarPhoneLinkService.1
        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            LogUtil.i("onPowerStateChanged state:" + powerState);
            if (ICarPower.PowerState.STANDBY == powerState || ICarPower.PowerState.SLEEP == powerState || ICarPower.PowerState.VOLFAULTSTBY == powerState) {
                LinkHelperManager.ins.closeVR();
                LinkHelperManager.ins.mute(true);
                LinkHelperManager.ins.pauseForResume();
            } else if (ICarPower.PowerState.SYSTEMON == powerState) {
                LinkHelperManager.ins.mute(false);
                LinkHelperManager.ins.resume();
            }
            if (powerState == ICarPower.PowerState.VOLFAULTSTBY) {
                BasicLinkHelper basicLinkHelper = LinkHelperManager.ins.get("carlife");
                BasicLinkHelper basicLinkHelper2 = LinkHelperManager.ins.get("hicar");
                if (basicLinkHelper != null) {
                    basicLinkHelper.disconnect();
                }
                if (basicLinkHelper2 != null) {
                    basicLinkHelper2.disconnect();
                }
            }
        }

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            LogUtil.i("onPowerModeChanged mode:" + powerMode);
            if (ICarPower.PowerMode.OFF == powerMode) {
                LinkHelperManager.ins.mute(true);
            } else if (ICarPower.PowerMode.ON == powerMode) {
                LinkHelperManager.ins.mute(false);
            }
        }
    };

    public CarLinkDevice getConnectedCarLinkDevice(String str) {
        return null;
    }

    public boolean isForeground() {
        return false;
    }

    public boolean isMicWork() {
        return false;
    }

    public CarPhoneLinkService() {
        Log.i(this.TAG, "CarPhoneLinkService()");
        if (CarPowerListenerImp.isregisterObservor(this.carPowerObservor)) {
            CarPowerListenerImp.unregisterObservor(this.carPowerObservor);
        }
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.CarPhoneLinkService.2
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                ProductDeviceManager.ins.phoneLinkChanged();
            }
        }, 3000L);
    }

    public void registerCarPhoneLinkCallback(ICarPhoneLinkCallback iCarPhoneLinkCallback) {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("registerCarPhoneLinkCallback no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("registerCarPhoneLinkCallback binder:" + Binder.getCallingPid());
        LogUtil.i("registerCarPhoneLinkCallback callback:" + iCarPhoneLinkCallback);
        list.register(iCarPhoneLinkCallback);
    }

    public void unregisterCarPhoneLinkCallback(ICarPhoneLinkCallback iCarPhoneLinkCallback) {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("unregisterCarPhoneLinkCallback no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("unregisterCarPhoneLinkCallback binder:" + Binder.getCallingPid());
        LogUtil.i("unregisterCarPhoneLinkCallback callback:" + iCarPhoneLinkCallback);
        list.unregister(iCarPhoneLinkCallback);
    }

    public static void sendDeviceChangedCallBack(PhoneLink phoneLink) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendDeviceChangedCallBack link:" + phoneLink);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onDeviceChanged(phoneLink);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendShowCarplayConfirmFirstConnectDialog(CarLinkDevice carLinkDevice) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendShowCarplayConfirmFirstConnectDialog device:" + carLinkDevice);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onShowCarplayConfirmFirstConnectDialog(carLinkDevice);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendShowHuaWeiConnectedDialog() {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendShowHuaWeiConnectedDialog");
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onShowHuaWeiConnectedDialog();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendConnectedStatusChanged(String str) {
        mLock.lock();
        try {
            try {
                int beginBroadcast = list.beginBroadcast();
                LogUtil.i("sendConnectedStatusChanged status:" + str + ",count:" + beginBroadcast);
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onConnectedStatusChanged(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendVRStatusChanged(int i) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendVRStatusChanged status:" + i);
                int beginBroadcast = list.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    list.getBroadcastItem(i2).onVRStatusChanged(i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendCallStatusChanged(int i) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendCallStatusChanged status:" + i);
                int beginBroadcast = list.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    list.getBroadcastItem(i2).onCallStatusChanged(i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendAndroidPriorityPhoneLinkChanged(String str) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendAndroidPriorityPhoneLinkChanged status:" + str);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onAndroidPriorityPhoneLinkChanged(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendIOSPriorityPhoneLinkChanged(String str) {
        mLock.lock();
        try {
            try {
                LogUtil.i("onIOSPriorityPhoneLinkChanged status:" + str);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onIOSPriorityPhoneLinkChanged(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendConnectedFail(String str, int i) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendConnectedFail type:" + str + ",reason:" + i);
                int beginBroadcast = list.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    list.getBroadcastItem(i2).onConnectedFail(str, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendConnectedFailWithDevice(String str, int i, CarLinkDevice carLinkDevice) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendConnectedFailWithDevice type:" + str + ",reason:" + i + ",device:" + carLinkDevice);
                int beginBroadcast = list.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    list.getBroadcastItem(i2).onConnectedFailWithDevice(str, i, carLinkDevice);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendCarLinkDeviceListChanged(String str, List<CarLinkDevice> list2) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendCarLinkDeviceListChanged type:" + str + ",devices:" + list2);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onCarLinkDeviceListChanged(str, list2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendHicarReConnectStateChange(boolean z, String str) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendHicarReConnectStateChange reConnected:" + z + ",deviceName:" + str);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onHicarReConnectStateChange(z, str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public static void sendSecondDeviceAvailable(CarLinkDevice carLinkDevice) {
        mLock.lock();
        try {
            try {
                LogUtil.i("sendSecondDeviceAvailable device:" + carLinkDevice);
                int beginBroadcast = list.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    list.getBroadcastItem(i).onSecondDeviceAvailable(carLinkDevice);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            list.finishBroadcast();
            mLock.unlock();
        }
    }

    public List<PhoneLink> getSupportPhoneLinks() {
        if (CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            return null;
        }
        LogUtil.i("getSupportPhoneLinks no permission");
        throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
    }

    public int version() {
        LogUtil.i("version binder:" + Binder.getCallingPid() + "\n");
        if (CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            return 14;
        }
        LogUtil.i("version no permission");
        throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
    }

    public PhoneLink getConnectedPhoneLink() {
        LogUtil.i("getConnectedPhoneLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getConnectedPhoneLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        PhoneLink phoneLinkByType = ProductDeviceManager.ins.getPhoneLinkByType();
        LogUtil.i("getConnectedPhoneLink phoneLinkByType:" + phoneLinkByType + "\n");
        return phoneLinkByType;
    }

    public String getConnectedLinkStatus() {
        LogUtil.i("getConnectedLinkStatus binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getConnectedLinkStatus no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("getConnectedLinkStatus linkStatus:" + connectedLinkStatus);
        return connectedLinkStatus;
    }

    public void connectByUsb(String str) {
        LogUtil.i("connectByUsb binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("connectByUsb no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("connectByUsb type:" + str);
        LinkHelperManager.ins.connectByUsb(str);
    }

    public void connectByWireless(String str) {
        LogUtil.i("connectByWireless binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("connectByWireless no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("connectByWireless type:" + str + "\n");
        LinkHelperManager.ins.connectByWireless(str);
    }

    public void disConnect(String str) {
        LogUtil.i("disConnect binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("disConnect no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("disConnect type:" + str);
        LinkHelperManager.ins.disConnect(str);
    }

    public void pickCarLifeWhenHuaWei() {
        LogUtil.i("pickCarLifeWhenHuaWei binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("pickCarLifeWhenHuaWei no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("pickCarLifeWhenHuaWei");
        ProductDeviceManager.ins.pickCarLifeWhenHuaWei();
    }

    public void pickHiCarWhenHuaWei() {
        LogUtil.i("pickHiCarWhenHuaWei binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("pickHiCarWhenHuaWei no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("pickHiCarWhenHuaWei");
        ProductDeviceManager.ins.pickHiCarWhenHuaWei();
    }

    public int getCallStatus() {
        BasicLinkHelper basicLinkHelper;
        LogUtil.i("getCallStatus binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getCallStatus no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        Log.i(this.TAG, "getCallStatus phonlink:" + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus) || (basicLinkHelper = LinkHelperManager.ins.get(connectedLinkStatus)) == null) {
            return -1;
        }
        int callStatus = basicLinkHelper.getCallStatus();
        Log.i(this.TAG, "getCallStatus callStatus:" + callStatus);
        return callStatus;
    }

    public void startCallPage() {
        BasicLinkHelper basicLinkHelper;
        LogUtil.i("startCallPage binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("startCallPage no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        Log.i(this.TAG, "startCallPage phonlink:" + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus) || (basicLinkHelper = LinkHelperManager.ins.get(connectedLinkStatus)) == null) {
            return;
        }
        Log.i(this.TAG, "startCallPage helper:" + basicLinkHelper.linkName());
        basicLinkHelper.starCallPage();
    }

    public void accpetPhone() {
        LogUtil.i("accpetPhone binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("accpetPhone no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("accpetPhone()");
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).acceptPhone();
    }

    public void rejectPhone() {
        LogUtil.i("rejectPhone binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("rejectPhone no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("rejectPhone()");
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).rejectPhone();
    }

    public void startVR() {
        LogUtil.i("startVR binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("startVR no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("startVR()");
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).startVR();
    }

    public int getVRStatus() {
        LogUtil.i("getVRStatus binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getVRStatus no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("getVRStatus phonelink:" + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return -1;
        }
        int vRStatus = LinkHelperManager.ins.get(connectedLinkStatus).getVRStatus();
        LogUtil.i("getVRStatus vrStatus:" + vRStatus);
        return vRStatus;
    }

    public void enablePhoneLink() {
        LogUtil.i("enablePhoneLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("enablePhoneLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("enablePhoneLink");
        ProductDeviceManager.ins.enablePhoneLink();
    }

    public void disablePhoneLink() {
        LogUtil.i("disablePhoneLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("disablePhoneLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("disablePhoneLink");
        ProductDeviceManager.ins.disablePhoneLink();
    }

    public boolean isPhoneLinkEnable() {
        LogUtil.i("isPhoneLinkEnable binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("isPhoneLinkEnable no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        boolean isPhoneLinkEnable = ProductDeviceManager.ins.isPhoneLinkEnable();
        LogUtil.i("isPhoneLinkEnable:" + isPhoneLinkEnable);
        return isPhoneLinkEnable;
    }

    public void pickAndroidPriorityLink(String str) {
        LogUtil.i("pickAndroidPriorityLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("pickAndroidPriorityLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        Log.i(this.TAG, "pickAndroidPriorityLink:" + str);
        ProductDeviceManager.ins.pickAndroidPriorityLink(str);
    }

    public void pickIOSPriorityLink(String str) {
        LogUtil.i("pickIOSPriorityLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("pickIOSPriorityLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("pickIOSPriorityLink:" + str);
        ProductDeviceManager.ins.pickIOSPriorityLink(str);
    }

    public void startPriorityLinkAction() {
        LogUtil.i("startPriorityLinkAction binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("startPriorityLinkAction no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("startPriorityLinkAction");
        ProductDeviceManager.ins.startPriorityLinkAction();
    }

    public String getAndroidPriorityLink() {
        LogUtil.i("getAndroidPriorityLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getAndroidPriorityLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String androidPriorityLink = ProductDeviceManager.ins.getAndroidPriorityLink();
        Log.i(this.TAG, "getAndroidPriorityLink:" + androidPriorityLink);
        return androidPriorityLink;
    }

    public String getIOSPriorityLink() {
        LogUtil.i("getIOSPriorityLink binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getIOSPriorityLink no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String iOSPriorityLink = ProductDeviceManager.ins.getIOSPriorityLink();
        Log.i(this.TAG, "getIOSPriorityLink:" + iOSPriorityLink);
        return iOSPriorityLink;
    }

    public String startPage(int i) {
        LogUtil.i("startPage binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("startPage no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("startPage pageType:" + i);
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return SchedulerSupport.NONE;
        }
        LinkHelperManager.ins.startPage(connectedLinkStatus, i);
        return connectedLinkStatus;
    }

    public List<CarLinkDevice> getCarLinkDeviceList(String str) {
        LogUtil.i("getCarLinkDeviceList binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getCarLinkDeviceList no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("getCarLinkDeviceList s:" + str);
        List<CarLinkDevice> carLinkDeviceList = LinkHelperManager.ins.getCarLinkDeviceList(str);
        LogUtil.i("getCarLinkDeviceList carLinkDeviceList:" + carLinkDeviceList);
        return carLinkDeviceList;
    }

    public void connectCarLinkDevice(CarLinkDevice carLinkDevice) {
        LogUtil.i("connectCarLinkDevice binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("connectCarLinkDevice no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("connectCarLinkDevice carLinkDevice:" + carLinkDevice);
        LinkHelperManager.ins.connectCarLinkDevice(carLinkDevice);
    }

    public void forgetCarLinkDevice(CarLinkDevice carLinkDevice) {
        LogUtil.i("forgetCarLinkDevice binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("forgetCarLinkDevice no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("forgetCarLinkDevice carLinkDevice:" + carLinkDevice + "\n");
        LinkHelperManager.ins.forgetCarLinkDevice(carLinkDevice);
    }

    public void updateCarPlayMedia(int i) {
        LogUtil.i("updateCarPlayMedia binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("updateCarPlayMedia no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("updateCarPlayMedia action:" + i + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        LogUtil.i("updateCarPlayMedia carPlayLinkHelper:" + carPlayLinkHelper + "\n");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.updateCarPlayMedia(i);
    }

    public String getPhoneName() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getPhoneName no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String phoneName = LinkHelperManager.ins.getPhoneName();
        LogUtil.i("getPhoneName phoneName:" + phoneName);
        return phoneName;
    }

    public void requestCarPlaySiri(int i) {
        LogUtil.i("requestCarPlaySiri binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("requestCarPlaySiri no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("requestCarPlaySiri action:" + i + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        LogUtil.i("requestCarPlaySiri carPlayLinkHelper:" + carPlayLinkHelper + "\n");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.requestCarPlaySiri(i);
    }

    public void updateCarPlayTelehony(int i) {
        LogUtil.i("updateCarPlayTelehony binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("updateCarPlayTelehony no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("updateCarPlayTelehony action:" + i + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        LogUtil.i("updateCarPlayTelehony carPlayLinkHelper:" + carPlayLinkHelper + "\n");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.updateCarPlayTelehony(i);
    }

    public void connetCarplayByAddress(String str) {
        LogUtil.i("connetCarplayByAddress binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("connetCarplayByAddress no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("connetCarplayByAddress address:" + str + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        LogUtil.i("connetCarplayByAddress carPlayLinkHelper:" + carPlayLinkHelper + "\n");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.connetCarplayByAddress(str);
    }

    public List<CarLinkDevice> getAvailableCarLinkDeviceList(String str) {
        LogUtil.i("getAvailableCarLinkDeviceList binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getAvailableCarLinkDeviceList no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("getAvailableCarLinkDeviceList s:" + str);
        List<CarLinkDevice> availableCarLinkDeviceList = LinkHelperManager.ins.getAvailableCarLinkDeviceList(str);
        LogUtil.i("getAvailableCarLinkDeviceList carLinkDeviceList:" + availableCarLinkDeviceList);
        return availableCarLinkDeviceList;
    }

    public void tel(String str) {
        LogUtil.i("tel binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("tel no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("tel address:" + str + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        LogUtil.i("tel carPlayLinkHelper:" + carPlayLinkHelper + "\n");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.tel(str);
    }

    public boolean isCarplayCertificate() {
        LogUtil.i("isCarplayCertificate binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("isCarplayCertificate no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
        LogUtil.i("isCarplayCertificate carplayCertificateOn:" + isCarplayCertificateOn);
        return isCarplayCertificateOn;
    }

    public void confirmFirstConnect(String str) {
        LogUtil.i("confirmFirstConnect binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("confirmFirstConnect no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("confirmFirstConnect address:" + str + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.confirmFirstConnect(str);
    }

    public boolean supportWireless() {
        LogUtil.i("supportWireless binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("supportWireless no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("supportWireless\n");
        HiCarLinkHelper hiCarLinkHelper = (HiCarLinkHelper) LinkHelperManager.ins.get("hicar");
        if (hiCarLinkHelper == null) {
            return false;
        }
        boolean supportWireless = hiCarLinkHelper.supportWireless();
        LogUtil.i("supportWireless result:" + supportWireless + "\n");
        return supportWireless;
    }

    public boolean requestReConnect(String str) {
        LogUtil.i("requestReConnect binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("requestReConnect no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("requestReConnect address:" + str + "\n");
        HiCarLinkHelper hiCarLinkHelper = (HiCarLinkHelper) LinkHelperManager.ins.get("hicar");
        if (hiCarLinkHelper == null) {
            return false;
        }
        boolean requestReConnect = hiCarLinkHelper.requestReConnect(str);
        LogUtil.i("requestReConnect result:" + requestReConnect + "\n");
        return requestReConnect;
    }

    public boolean requestNewConnect() {
        LogUtil.i("requestNewConnect binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("requestNewConnect no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("requestNewConnect\n");
        HiCarLinkHelper hiCarLinkHelper = (HiCarLinkHelper) LinkHelperManager.ins.get("hicar");
        if (hiCarLinkHelper == null) {
            return false;
        }
        boolean requestNewConnect = hiCarLinkHelper.requestNewConnect();
        LogUtil.i("requestNewConnect result:" + requestNewConnect + "\n");
        return requestNewConnect;
    }

    public void disConnectByAddress(String str) {
        LogUtil.i("disConnectByAddress binder:" + Binder.getCallingPid() + "\n");
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("disConnectByAddress no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("disConnectByAddress address:" + str + "\n");
        CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
        if (carPlayLinkHelper == null) {
            return;
        }
        carPlayLinkHelper.disConnectByAddress(str);
    }
}
