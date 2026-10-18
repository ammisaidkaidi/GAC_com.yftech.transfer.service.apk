package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import com.tencent.car.wechatsdk.impl.WeChatMgr;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.yftech.vehicle.internal.adapter.ICarKey;
import com.yftech.vehicle.sdk.CarKeyManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class CabinKeyEventAdapterImpl extends CabinKeyEventAdapter {
    private static Map<Integer, Integer> SYS_KEYCODES = new HashMap();
    private boolean isLongPress = false;
    private boolean isStartASR = false;
    CarKeyManager.CarKeyListener mCarKeyListener = new CarKeyManager.CarKeyListener() { // from class: com.yftech.transfer.tencent.opensdk.adapter.CabinKeyEventAdapterImpl.1
        public void onSteeringWheelKeyEvent(ICarKey.CarKeyEvent carKeyEvent) {
            PlatformAdapter.LOGI("open sdk keyEvent," + carKeyEvent.toString());
            CabinKeyEventAdapterImpl.this.onKeyEvent(carKeyEvent.keyCode, carKeyEvent.action);
        }
    };
    private List<CabinKeyEventAdapter.CabinKeyEventDispatcher> mCabinKeyEventDispatchers = new ArrayList();
    private Object mLockObj = new Object();

    static {
        SYS_KEYCODES.put(6, 7);
        SYS_KEYCODES.put(1, 9);
        SYS_KEYCODES.put(2, 8);
        SYS_KEYCODES.put(23, 6);
    }

    public CabinKeyEventAdapterImpl(Context context) {
        CarKeyManager.get().registerListener(this.mCarKeyListener);
        PlatformAdapter.LOGI("CabinKeyEventAdapterImpl init!!!!");
    }

    public void onKeyEvent(int i, int i2) {
        PlatformAdapter.LOGI("open sdk listen " + i + ",contains:" + SYS_KEYCODES.containsKey(Integer.valueOf(i)) + ",action:" + i2);
        if (this.mCabinKeyEventDispatchers.isEmpty()) {
            return;
        }
        synchronized (this.mLockObj) {
            for (CabinKeyEventAdapter.CabinKeyEventDispatcher cabinKeyEventDispatcher : this.mCabinKeyEventDispatchers) {
                Set<Integer> registeredKeyCodeSet = cabinKeyEventDispatcher.getRegisteredKeyCodeSet();
                StringBuilder sb = new StringBuilder();
                sb.append("the dispatcher:");
                sb.append(cabinKeyEventDispatcher);
                sb.append(",register keys:");
                sb.append(registeredKeyCodeSet != null ? Arrays.toString(registeredKeyCodeSet.toArray()) : "empty!");
                PlatformAdapter.LOGI(sb.toString());
                if (registeredKeyCodeSet != null && !registeredKeyCodeSet.isEmpty() && SYS_KEYCODES.containsKey(Integer.valueOf(i))) {
                    int intValue = SYS_KEYCODES.get(Integer.valueOf(i)).intValue();
                    PlatformAdapter.LOGI("dispatchKeyEvent key:" + intValue + ",action:" + i2 + ",dispatcher object:" + cabinKeyEventDispatcher);
                    if (registeredKeyCodeSet.contains(Integer.valueOf(intValue))) {
                        if (i2 == 0) {
                            this.isLongPress = false;
                            i2 = 1;
                            if (intValue != 6) {
                                cabinKeyEventDispatcher.dispatchKeyEvent(1, 1, intValue, System.currentTimeMillis(), System.currentTimeMillis());
                            }
                        } else if (i2 == 1) {
                            i2 = 2;
                            if (!this.isLongPress || intValue == 9 || intValue == 8) {
                                if (intValue == 6 && !WeChatMgr.getInstance().isWeChatServiceAvailable()) {
                                    WeChatMgr.getInstance().carEventLaunchWeChat();
                                } else {
                                    cabinKeyEventDispatcher.dispatchKeyEvent(1, 2, intValue, System.currentTimeMillis(), System.currentTimeMillis());
                                }
                            } else if (intValue != 6) {
                                if (intValue == 7) {
                                    cabinKeyEventDispatcher.dispatchKeyEvent(1, 2, 14, System.currentTimeMillis(), System.currentTimeMillis());
                                } else {
                                    cabinKeyEventDispatcher.dispatchKeyLongPressEvent(1, 2, intValue, System.currentTimeMillis(), System.currentTimeMillis());
                                }
                            }
                            this.isLongPress = false;
                        } else if (i2 == 2) {
                            this.isLongPress = true;
                            i2 = 1;
                            if (intValue == 7) {
                                cabinKeyEventDispatcher.dispatchKeyEvent(1, 1, 14, System.currentTimeMillis(), System.currentTimeMillis());
                            } else if (intValue != 9 && intValue != 8) {
                                cabinKeyEventDispatcher.dispatchKeyLongPressEvent(1, 1, intValue, System.currentTimeMillis(), System.currentTimeMillis());
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.input.CabinKeyEventAdapter
    public void registerCabinKeyEventDispatcher(CabinKeyEventAdapter.CabinKeyEventDispatcher cabinKeyEventDispatcher) {
        if (cabinKeyEventDispatcher == null || this.mCabinKeyEventDispatchers.contains(cabinKeyEventDispatcher)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mCabinKeyEventDispatchers.add(cabinKeyEventDispatcher);
        }
    }

    @Override // com.tencent.tai.pal.input.CabinKeyEventAdapter
    public void unregisterCabinKeyEventDispatcher(CabinKeyEventAdapter.CabinKeyEventDispatcher cabinKeyEventDispatcher) {
        if (cabinKeyEventDispatcher == null || !this.mCabinKeyEventDispatchers.contains(cabinKeyEventDispatcher)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mCabinKeyEventDispatchers.remove(cabinKeyEventDispatcher);
        }
    }
}
