package com.yftech.transfer.phonelink;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.permission.CarPermission;
import com.yftech.car.phonelink.ICarPhoneLinkMediaCallback;
import com.yftech.car.phonelink.ICarPhoneLinkMediaService;
import com.yftech.car.phonelink.PhoneLinkMediaInfo;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.Manifest;
import io.reactivex.annotations.SchedulerSupport;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPhoneLinkMediaService extends ICarPhoneLinkMediaService.Stub {
    private final String TAG = getClass().getName();
    private static final RemoteCallbackList<ICarPhoneLinkMediaCallback> list = new RemoteCallbackList<>();
    private static PhoneLinkMediaInfo curMediaInfo = new PhoneLinkMediaInfo();

    public CarPhoneLinkMediaService() {
        LogUtil.i("CarPhoneLinkMediaService()");
    }

    public void registerCarPhoneLinkMediaCallback(ICarPhoneLinkMediaCallback iCarPhoneLinkMediaCallback) {
        LogUtil.i("registerCarPhoneLinkCallback binder:" + Binder.getCallingPid());
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("registerCarPhoneLinkMediaCallback no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        list.register(iCarPhoneLinkMediaCallback);
    }

    public void unregisterCarPhoneLinkMediaCallback(ICarPhoneLinkMediaCallback iCarPhoneLinkMediaCallback) {
        LogUtil.i("unregisterCarPhoneLinkMediaCallback binder:" + Binder.getCallingPid());
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("unregisterCarPhoneLinkMediaCallback no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        list.unregister(iCarPhoneLinkMediaCallback);
    }

    public PhoneLinkMediaInfo getCurPhoneLinkMediaInfo() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("getCurPhoneLinkMediaInfo no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        LogUtil.i("getCurPhoneLinkMediaInfo  binder:" + Binder.getCallingPid() + ", curMediaInfo:" + curMediaInfo);
        return curMediaInfo;
    }

    public boolean previous() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("previous no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("previous binder:" + Binder.getCallingPid() + ",phoneLink: " + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return false;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).previous();
        return true;
    }

    public boolean next() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("next no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("next binder:" + Binder.getCallingPid() + ",phoneLink: " + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return false;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).next();
        return true;
    }

    public boolean play() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("play no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("play binder:" + Binder.getCallingPid() + ",phoneLink: " + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return false;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).play();
        return true;
    }

    public boolean stop() {
        if (!CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink)) {
            LogUtil.i("stop no permission");
            throw new SecurityException("requests com.yftech.permission.service.transfer.phonelink");
        }
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        Log.d(this.TAG, "stop binder:" + Binder.getCallingPid() + ",phoneLink: " + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return false;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).pause();
        return true;
    }

    public static void sendMediaInfoChanged(PhoneLinkMediaInfo phoneLinkMediaInfo) {
        curMediaInfo = phoneLinkMediaInfo;
        LogUtil.i("sendMediaInfoChanged curMediaInfo:" + curMediaInfo);
        int beginBroadcast = list.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                list.getBroadcastItem(i).onMediaInfoChanged(phoneLinkMediaInfo);
            } catch (Exception e) {
                e.printStackTrace();
                LogUtil.i("sendMediaInfoChanged erroror:" + e.getMessage());
            }
        }
        list.finishBroadcast();
    }
}
