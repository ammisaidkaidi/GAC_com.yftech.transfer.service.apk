package com.yftech.transfer.phonelink.manager;

import com.utils.LogUtil;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ManagerHelper {
    private static boolean isInit;
    private static final List<BasicManager> list = new ArrayList(6);

    public static void init() {
        list.add(ProductDeviceManager.ins);
        list.add(BlueToothManager.ins);
        list.add(LinkHelperManager.ins);
        list.add(UsbLinkManager.ins);
        list.add(CarControlManager.ins);
        list.add(CarLocationManager.ins);
        list.add(CarSensorManager.ins);
        for (BasicManager basicManager : list) {
            LogUtil.i("init manager_name:" + basicManager.name());
            basicManager.init();
        }
        isInit = true;
    }

    public static void uninit() {
        for (BasicManager basicManager : list) {
            LogUtil.i("uninit manager_name:" + basicManager.name());
            basicManager.uninit();
        }
    }

    public static boolean isInit() {
        return isInit;
    }
}
