package com.tencent.wecarbase.carinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.carinfo.keyinput.IWeCarKeyInputListener;
import com.tencent.wecarbase.carinfo.model.AccModel;
import com.tencent.wecarbase.carinfo.model.AirConditionModel;
import com.tencent.wecarbase.carinfo.model.BrakeStateModel;
import com.tencent.wecarbase.carinfo.model.DoorStatusModel;
import com.tencent.wecarbase.carinfo.model.FuelModel;
import com.tencent.wecarbase.carinfo.model.GearModel;
import com.tencent.wecarbase.carinfo.model.LampModel;
import com.tencent.wecarbase.carinfo.model.LeanWaterModel;
import com.tencent.wecarbase.carinfo.model.SeatBeltModel;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarInfoSimulator {
    public static final String KEY_DATA = "data";
    public static final String KEY_TYPE = "type";
    private static final String TAG = "WeCarInfoSimulator";
    public static final String WECAR_SIMULATOR_ACTION = "com.tencent.wecarsimlator.action";
    private Context mContext;
    private IWeCarInfoListener mListenr = null;
    private List<IWeCarInfoListener> mListeners = null;
    private IWeCarKeyInputListener mKeyInputListener = null;
    private SimulatorBroadcastReceiver mSimulatorReceiver = null;

    @Deprecated
    public WeCarInfoSimulator() {
    }

    public WeCarInfoSimulator(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void attach(Context context, IWeCarInfoListener iWeCarInfoListener) {
        this.mContext = context.getApplicationContext();
        this.mListenr = iWeCarInfoListener;
        registerBroadcastReceiver();
    }

    public void attach(Context context, IWeCarKeyInputListener iWeCarKeyInputListener) {
        this.mContext = context;
        this.mKeyInputListener = iWeCarKeyInputListener;
        registerBroadcastReceiver();
    }

    public void registerListener(IWeCarInfoListener iWeCarInfoListener) {
        if (iWeCarInfoListener == null) {
            return;
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (!this.mListeners.contains(iWeCarInfoListener)) {
            this.mListeners.add(iWeCarInfoListener);
        }
        if (this.mListeners.size() > 0 || this.mListenr != null) {
            registerBroadcastReceiver();
        }
    }

    public void unregisterListener(IWeCarInfoListener iWeCarInfoListener) {
        if (iWeCarInfoListener == null || this.mListeners == null) {
            return;
        }
        if (this.mListeners.contains(iWeCarInfoListener)) {
            this.mListeners.remove(iWeCarInfoListener);
        }
        if ((this.mListeners == null || this.mListeners.size() == 0) && this.mListenr == null) {
            unregisterBroadcastReceiver();
        }
    }

    private void registerBroadcastReceiver() {
        if (this.mContext == null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WECAR_SIMULATOR_ACTION);
        if (this.mSimulatorReceiver == null) {
            this.mSimulatorReceiver = new SimulatorBroadcastReceiver();
        }
        Log.i(TAG, "mSimulatorReceiver = " + this.mSimulatorReceiver);
        this.mContext.registerReceiver(this.mSimulatorReceiver, intentFilter);
    }

    private void unregisterBroadcastReceiver() {
        if (this.mContext == null) {
            return;
        }
        this.mContext.unregisterReceiver(this.mSimulatorReceiver);
    }

    public void detach() {
        this.mListenr = null;
        this.mKeyInputListener = null;
        try {
            unregisterBroadcastReceiver();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class SimulatorBroadcastReceiver extends BroadcastReceiver {
        private SimulatorBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.e(WeCarInfoSimulator.TAG, "receive Simulator, action = " + intent.getAction());
            if (TextUtils.equals(WeCarInfoSimulator.WECAR_SIMULATOR_ACTION, intent.getAction())) {
                int intExtra = intent.getIntExtra("type", 0);
                String stringExtra = intent.getStringExtra("data");
                Log.i(WeCarInfoSimulator.TAG, "type = " + intExtra + ", json : " + stringExtra);
                if (17 == intExtra) {
                    AirConditionModel airConditionModel = (AirConditionModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onAirConditionChanged(airConditionModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it.hasNext()) {
                            ((IWeCarInfoListener) it.next()).onAirConditionChanged(airConditionModel);
                        }
                        return;
                    }
                    return;
                }
                if (13 == intExtra) {
                    DoorStatusModel doorStatusModel = (DoorStatusModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onDoorStatusChanged(doorStatusModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it2 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it2.hasNext()) {
                            ((IWeCarInfoListener) it2.next()).onDoorStatusChanged(doorStatusModel);
                        }
                        return;
                    }
                    return;
                }
                if (2 == intExtra) {
                    BrakeStateModel brakeStateModel = (BrakeStateModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onBrakeStateChanged(brakeStateModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it3 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it3.hasNext()) {
                            ((IWeCarInfoListener) it3.next()).onBrakeStateChanged(brakeStateModel);
                        }
                        return;
                    }
                    return;
                }
                if (3 == intExtra) {
                    SeatBeltModel seatBeltModel = (SeatBeltModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onSeatBeltChanged(seatBeltModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it4 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it4.hasNext()) {
                            ((IWeCarInfoListener) it4.next()).onSeatBeltChanged(seatBeltModel);
                        }
                        return;
                    }
                    return;
                }
                if (14 == intExtra) {
                    LampModel lampModel = (LampModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onLampStatusChanged(lampModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it5 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it5.hasNext()) {
                            ((IWeCarInfoListener) it5.next()).onLampStatusChanged(lampModel);
                        }
                        return;
                    }
                    return;
                }
                if (4 == intExtra) {
                    GearModel gearModel = (GearModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onGearChanged(gearModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it6 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it6.hasNext()) {
                            ((IWeCarInfoListener) it6.next()).onGearChanged(gearModel);
                        }
                        return;
                    }
                    return;
                }
                if (8 == intExtra) {
                    FuelModel fuelModel = (FuelModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onFuelChanged(fuelModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it7 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it7.hasNext()) {
                            ((IWeCarInfoListener) it7.next()).onFuelChanged(fuelModel);
                        }
                        return;
                    }
                    return;
                }
                if (5 == intExtra) {
                    AccModel accModel = (AccModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onAccChanged(accModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it8 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it8.hasNext()) {
                            ((IWeCarInfoListener) it8.next()).onAccChanged(accModel);
                        }
                        return;
                    }
                    return;
                }
                if (12 == intExtra) {
                    float parseFloat = Float.parseFloat(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onEngineSpeedChanged(parseFloat);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it9 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it9.hasNext()) {
                            ((IWeCarInfoListener) it9.next()).onEngineSpeedChanged(parseFloat);
                        }
                        return;
                    }
                    return;
                }
                if (7 == intExtra) {
                    int parseInt = Integer.parseInt(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onEnduranceMileageChanged(parseInt);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it10 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it10.hasNext()) {
                            ((IWeCarInfoListener) it10.next()).onEnduranceMileageChanged(parseInt);
                        }
                        return;
                    }
                    return;
                }
                if (6 == intExtra) {
                    long parseLong = Long.parseLong(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onTotalMileageChanged(parseLong);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it11 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it11.hasNext()) {
                            ((IWeCarInfoListener) it11.next()).onTotalMileageChanged(parseLong);
                        }
                        return;
                    }
                    return;
                }
                if (9 == intExtra) {
                    LeanWaterModel leanWaterModel = (LeanWaterModel) WeCarInfoSimulator.this.getStringObject(stringExtra);
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onLeanWaterChanged(leanWaterModel);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it12 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it12.hasNext()) {
                            ((IWeCarInfoListener) it12.next()).onLeanWaterChanged(leanWaterModel);
                        }
                        return;
                    }
                    return;
                }
                if (1 == intExtra) {
                    try {
                        int parseInt2 = Integer.parseInt(stringExtra.split(",")[0]);
                        int parseInt3 = Integer.parseInt(stringExtra.split(",")[1]);
                        if (WeCarInfoSimulator.this.mKeyInputListener != null) {
                            WeCarInfoSimulator.this.mKeyInputListener.onKeyEvent(parseInt2, parseInt3);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                if (18 == intExtra) {
                    Bundle bundleExtra = intent.getBundleExtra("data");
                    if (WeCarInfoSimulator.this.mListenr != null) {
                        WeCarInfoSimulator.this.mListenr.onBundleData(bundleExtra);
                    }
                    if (WeCarInfoSimulator.this.mListeners != null) {
                        Iterator it13 = WeCarInfoSimulator.this.mListeners.iterator();
                        while (it13.hasNext()) {
                            ((IWeCarInfoListener) it13.next()).onBundleData(bundleExtra);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getStringObject(String str) {
        Object obj;
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(URLDecoder.decode(str, "UTF-8").getBytes("ISO-8859-1"));
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            obj = objectInputStream.readObject();
        } catch (Exception e) {
            e = e;
            obj = null;
        }
        try {
            objectInputStream.close();
            byteArrayInputStream.close();
        } catch (Exception e2) {
            e = e2;
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return obj;
        }
        return obj;
    }
}
