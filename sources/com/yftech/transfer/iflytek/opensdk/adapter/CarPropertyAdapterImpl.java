package com.yftech.transfer.iflytek.opensdk.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.iflytek.autofly.custom.carproperty.util.CarPropertyManager;
import com.iflytek.autofly.custom.carproperty.util.ICarPropertyListener;
import com.tencent.taiutils.StringUtils;
import com.yftech.vehicle.sdk.CarInfoManager;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPropertyAdapterImpl {
    private static final int MSG_RECONNECT_IFlyTekService = 1;
    private static final int RECONNECT_TIME = 10000;
    private CarPropertyManager mCarPropertyManager;
    private Context mContext;
    private boolean mIsConnectedIflytekService;
    private String TAG = CarPropertyAdapterImpl.class.getSimpleName();
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.transfer.iflytek.opensdk.adapter.CarPropertyAdapterImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                CarPropertyAdapterImpl.this.mCarPropertyManager = CarPropertyManager.registerListener(CarPropertyAdapterImpl.this.mContext, CarPropertyAdapterImpl.this.mICarPropertyListener);
            }
        }
    };
    private final ICarPropertyListener mICarPropertyListener = new ICarPropertyListener() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.CarPropertyAdapterImpl.2
        @Override // com.iflytek.autofly.custom.carproperty.util.ICarPropertyListener
        public int onSetCarProperty(int i, String str) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.carproperty.util.ICarPropertyListener
        public void onServiceStatusChanged(int i) {
            Log.d(CarPropertyAdapterImpl.this.TAG, "onServiceStatusChanged " + i);
            switch (i) {
                case 2:
                default:
                    return;
                case 3:
                    CarPropertyAdapterImpl.this.mIsConnectedIflytekService = true;
                    CarPropertyAdapterImpl.this.mHandler.removeMessages(1);
                    Log.d(CarPropertyAdapterImpl.this.TAG, "bind IFlytek CarProper Service Successful");
                    return;
                case 4:
                    CarPropertyAdapterImpl.this.mIsConnectedIflytekService = false;
                    CarPropertyAdapterImpl.this.reConnect();
                    return;
            }
        }

        @Override // com.iflytek.autofly.custom.carproperty.util.ICarPropertyListener
        public String onGetCarProperty(int i) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (i == 101) {
                    jSONObject.put("frp", 20);
                } else {
                    switch (i) {
                        case 104:
                            jSONObject.put(StringUtils.UNIT_MINUTE_EN, CarInfoManager.get().getTotalOdometer());
                            break;
                        case 105:
                            jSONObject.put("em", 88);
                            break;
                        case 106:
                            jSONObject.put("v", CarInfoManager.get().getVehicleSpeed());
                            break;
                        case 107:
                            jSONObject.put("es", CarInfoManager.get().getEngineSpeed());
                            break;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject.toString();
        }
    };

    public CarPropertyAdapterImpl(Context context) {
        this.mContext = context;
        this.mCarPropertyManager = CarPropertyManager.registerListener(this.mContext, this.mICarPropertyListener);
        this.mHandler.sendEmptyMessageDelayed(1, 10000L);
    }

    public void release() {
        if (this.mHandler.hasMessages(1)) {
            this.mHandler.removeMessages(1);
        }
        CarPropertyManager.unRegisterListener(this.mICarPropertyListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reConnect() {
        if (this.mIsConnectedIflytekService) {
            this.mHandler.removeMessages(1);
        } else {
            this.mHandler.sendEmptyMessageDelayed(1, 10000L);
        }
    }
}
