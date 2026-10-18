package com.yftech.transfer.txznet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.yftech.transfer.txznet.access.AbsBaseAdapter;
import com.yftech.transfer.txznet.access.AppAdapterImpl;
import com.yftech.transfer.txznet.access.AudioAdapterImpl;
import com.yftech.transfer.txznet.access.BluetoothAdapterImpl;
import com.yftech.transfer.txznet.access.DVRAdapterImpl;
import com.yftech.transfer.txznet.access.MediaAdapterImpl;
import com.yftech.transfer.txznet.access.ScreenAdapterImpl;
import com.yftech.transfer.txznet.access.SystemAdapterImpl;
import com.yftech.transfer.txznet.access.VehicleControlAdapterImpl;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class AccessAdapter extends BroadcastReceiver {
    private static final String ACTION_SYS_TO_TXZ = "com.txznet.adapter.recv";
    public static final String ACTION_TXZ_TO_SYS = "com.txznet.adapter.send";
    private static final int INVOKE_QUEUE_COUNT = 100;
    private static final long INVOKE_TIMEOUT_TIME = 3000;
    private static final String KEY_ACTION_STR = "action";
    private static final String KEY_ACTION_VALUE_TTS = "txz.tts.speak";
    private static final String KEY_TTS_STR = "tts";
    private static final String KEY_TYPE = "key_type";
    private Context mContext;
    private Thread mInvokeIntentThread;
    private BlockingQueue<Intent> mIntentQueue = new ArrayBlockingQueue(100);
    private boolean isTimeout = false;
    private InvokeTimeOutRunnable mInvokeTimeOutRunnable = new InvokeTimeOutRunnable();
    private Map<Integer, AbsBaseAdapter> mAdapterImpls = new ArrayMap();
    private SystemAdapterImpl mSystemAdapterImpl = new SystemAdapterImpl();
    private VehicleControlAdapterImpl mVehicleControlAdapterImpl = new VehicleControlAdapterImpl();
    private AppAdapterImpl mAppAdapterImpl = new AppAdapterImpl();
    private BluetoothAdapterImpl mBluetoothAdapterImpl = new BluetoothAdapterImpl();
    private MediaAdapterImpl mMediaAdapterImpl = new MediaAdapterImpl();
    private DVRAdapterImpl mDVRAdapterImpl = new DVRAdapterImpl();
    private AudioAdapterImpl mAudioAdapterImpl = new AudioAdapterImpl();
    private ScreenAdapterImpl mScreenAdapterImpl = new ScreenAdapterImpl();
    private Runnable mInvokeIntentRunnable = new Runnable() { // from class: com.yftech.transfer.txznet.AccessAdapter.1
        @Override // java.lang.Runnable
        public void run() {
            do {
                try {
                    AccessAdapter.this.mH.removeCallbacks(AccessAdapter.this.mInvokeTimeOutRunnable);
                    Intent intent = AccessAdapter.this.mInvokeTimeOutRunnable.intent;
                    if (intent == null) {
                        intent = (Intent) AccessAdapter.this.mIntentQueue.take();
                        AccessAdapter.this.mInvokeTimeOutRunnable.intent = intent;
                    }
                    AccessAdapter.this.mH.postDelayed(AccessAdapter.this.mInvokeTimeOutRunnable, AccessAdapter.INVOKE_TIMEOUT_TIME);
                    try {
                        invokeCmd(intent);
                        AccessAdapter.this.mInvokeTimeOutRunnable.intent = null;
                    } catch (Exception e) {
                        AccessAdapter.this.mInvokeTimeOutRunnable.intent = null;
                        e.printStackTrace();
                        PlatformAdapterService.LOGI("invoke intent error!" + intent);
                    }
                    AccessAdapter.this.mH.removeCallbacks(AccessAdapter.this.mInvokeTimeOutRunnable);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } while (!AccessAdapter.this.isTimeout);
        }

        private void invokeCmd(Intent intent) {
            int intExtra = intent.getIntExtra(AccessAdapter.KEY_TYPE, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            PlatformAdapterService.LOGI("the key_type is " + intExtra);
            if (AccessAdapter.this.mAdapterImpls.containsKey(Integer.valueOf(intExtra))) {
                String dispatch = ((AbsBaseAdapter) AccessAdapter.this.mAdapterImpls.get(Integer.valueOf(intExtra))).dispatch(intent);
                PlatformAdapterService.LOGI("invoked result:" + dispatch);
                if (TextUtils.isEmpty(dispatch)) {
                    return;
                }
                invokedResult(dispatch);
                return;
            }
            PlatformAdapterService.LOGW("no this key_type(" + intExtra + ").");
        }

        private void invokedResult(String str) {
            Intent intent = new Intent(AccessAdapter.ACTION_SYS_TO_TXZ);
            intent.putExtra(AccessAdapter.KEY_ACTION_STR, AccessAdapter.KEY_ACTION_VALUE_TTS);
            intent.putExtra(AccessAdapter.KEY_TTS_STR, str);
            AccessAdapter.this.mContext.sendBroadcast(intent);
        }
    };
    private Handler mH = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessAdapter(Context context) {
        this.mContext = context;
        this.mAdapterImpls.put(1010, this.mSystemAdapterImpl);
        this.mAdapterImpls.put(Integer.valueOf(AbsBaseAdapter.SYS_KEY_TYPE_VEHICLE), this.mVehicleControlAdapterImpl);
        this.mAdapterImpls.put(1000, this.mAppAdapterImpl);
        this.mAdapterImpls.put(1040, this.mBluetoothAdapterImpl);
        this.mAdapterImpls.put(Integer.valueOf(AbsBaseAdapter.SYS_KEY_TYPE_DVR), this.mDVRAdapterImpl);
        this.mAdapterImpls.put(Integer.valueOf(AbsBaseAdapter.SYS_KEY_TYPE_MEDIA), this.mMediaAdapterImpl);
        this.mAdapterImpls.put(Integer.valueOf(AbsBaseAdapter.SYS_KEY_TYPE_RADIO), this.mMediaAdapterImpl);
        this.mAdapterImpls.put(1030, this.mAudioAdapterImpl);
        this.mAdapterImpls.put(1020, this.mScreenAdapterImpl);
        if (this.mInvokeIntentThread == null || !this.mInvokeIntentThread.isAlive()) {
            this.mInvokeIntentThread = new Thread(this.mInvokeIntentRunnable, AccessAdapter.class.getSimpleName());
            this.mInvokeIntentThread.start();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.mIntentQueue.contains(intent)) {
            return;
        }
        this.mIntentQueue.add(intent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class InvokeTimeOutRunnable implements Runnable {
        public Intent intent;

        InvokeTimeOutRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PlatformAdapterService.LOGI("invoke intent timeout!");
            AccessAdapter.this.mInvokeIntentThread.interrupt();
            AccessAdapter.this.mInvokeIntentThread = new Thread(AccessAdapter.this.mInvokeIntentRunnable, AccessAdapter.class.getSimpleName());
            AccessAdapter.this.mInvokeIntentThread.start();
        }
    }
}
