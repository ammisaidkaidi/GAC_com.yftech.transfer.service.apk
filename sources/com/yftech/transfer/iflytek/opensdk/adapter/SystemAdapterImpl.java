package com.yftech.transfer.iflytek.opensdk.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import com.iflytek.autofly.custom.system.util.ISystemListener;
import com.iflytek.autofly.custom.system.util.SystemManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemAdapterImpl {
    public static final String KEY_SN = "persist.vehicle.sn";
    private static final int MSG_RECONNECT_IFlyTekService = 1;
    private static final int RECONNECT_TIME = 10000;
    private Context mContext;
    private SystemManager mIFSystemManager;
    private boolean mIsConnectedIflytekService;
    private String TAG = SystemAdapterImpl.class.getSimpleName();
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.transfer.iflytek.opensdk.adapter.SystemAdapterImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                SystemAdapterImpl.this.mIFSystemManager = SystemManager.registerListener(SystemAdapterImpl.this.mContext, SystemAdapterImpl.this.mISystemListener);
            }
        }
    };
    private final ISystemListener mISystemListener = new ISystemListener() { // from class: com.yftech.transfer.iflytek.opensdk.adapter.SystemAdapterImpl.2
        @Override // com.iflytek.autofly.custom.system.util.ISystemListener
        public int onGetCarConfig(String str) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.system.util.ISystemListener
        public String onGetVNCode() {
            return null;
        }

        @Override // com.iflytek.autofly.custom.system.util.ISystemListener
        public int onGetVehicleState(String str) {
            return 0;
        }

        @Override // com.iflytek.autofly.custom.system.util.ISystemListener
        public void onServiceStatusChanged(int i) {
            Log.d(SystemAdapterImpl.this.TAG, "onServiceStatusChanged " + i);
            switch (i) {
                case 2:
                default:
                    return;
                case 3:
                    SystemAdapterImpl.this.mIsConnectedIflytekService = true;
                    SystemAdapterImpl.this.mHandler.removeMessages(1);
                    Log.d(SystemAdapterImpl.this.TAG, "bind IFlytek System Service Successful");
                    return;
                case 4:
                    SystemAdapterImpl.this.mIsConnectedIflytekService = false;
                    SystemAdapterImpl.this.reConnect();
                    return;
            }
        }

        @Override // com.iflytek.autofly.custom.system.util.ISystemListener
        public String onGetUUID() {
            String str = SystemProperties.get(SystemAdapterImpl.KEY_SN);
            Log.i(SystemAdapterImpl.this.TAG, "onGetUUID: uuid = " + str);
            return str;
        }
    };

    public SystemAdapterImpl(Context context) {
        this.mContext = context;
        this.mIFSystemManager = SystemManager.registerListener(this.mContext, this.mISystemListener);
        this.mHandler.sendEmptyMessageDelayed(1, 10000L);
    }

    public void release() {
        if (this.mHandler.hasMessages(1)) {
            this.mHandler.removeMessages(1);
        }
        SystemManager.unRegisterListener(this.mISystemListener);
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
