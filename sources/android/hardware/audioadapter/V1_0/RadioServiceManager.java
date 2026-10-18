package android.hardware.audioadapter.V1_0;

import android.hardware.audioadapter.V1_0.IRadioCallbacks;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class RadioServiceManager {
    public static final int BAND_AM_MW = 2;
    public static final int BAND_FM = 0;
    public static final int BAND_FM_WB = 1;
    public static final int RADIO_ERROR = -1;
    public static final int RADIO_SUCCESS = 0;
    public static final int SCAN_STATUS_IDLE = 0;
    public static final int SCAN_STATUS_ING = 1;
    public static final int SCAN_TYPE_IDLE = 0;
    public static final int SCAN_TYPE_ING = 3;
    public static final int SCAN_TYPE_SCAN_ALL = 4;
    public static final int SCAN_TYPE_SEEK_DOWN = 2;
    public static final int SCAN_TYPE_SEEK_PLAY = 5;
    public static final int SCAN_TYPE_SEEK_UP = 1;
    private static final String TAG = "RadioServiceManager";
    private static volatile RadioServiceManager mInstance;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class RadioCallback {
        public void onFreqChange(int i, int i2, int i3, int i4) {
        }

        public void onFreqSignal(int i, int i2, int i3) {
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
        }
    }

    private RadioServiceManager() {
    }

    public static RadioServiceManager getInstance() {
        if (mInstance == null) {
            synchronized (RadioServiceManager.class) {
                if (mInstance == null) {
                    mInstance = new RadioServiceManager();
                }
            }
        }
        return mInstance;
    }

    public void registerRadioCallback(RadioCallback radioCallback) {
        RadioServiceManagerGlobal.get().registerRadioCallback(radioCallback, null);
    }

    public void registerRadioCallback(RadioCallback radioCallback, Handler handler) {
        RadioServiceManagerGlobal.get().registerRadioCallback(radioCallback, handler);
    }

    public void unregisterRadioCallback(RadioCallback radioCallback) {
        RadioServiceManagerGlobal.get().unregisterRadioCallback(radioCallback);
    }

    public int init() {
        return RadioServiceManagerGlobal.get().init();
    }

    public int open() {
        return RadioServiceManagerGlobal.get().open();
    }

    public int close() {
        return RadioServiceManagerGlobal.get().close();
    }

    public int setFreq(int i) {
        return RadioServiceManagerGlobal.get().setFreq(i);
    }

    public int getFreq() {
        return RadioServiceManagerGlobal.get().getFreq();
    }

    public int setBand(int i) {
        return RadioServiceManagerGlobal.get().setBand(i);
    }

    public int getBand() {
        return RadioServiceManagerGlobal.get().getBand();
    }

    public int setMute(boolean z) {
        return RadioServiceManagerGlobal.get().setMute(z);
    }

    public int seekPlay(int i) {
        return RadioServiceManagerGlobal.get().seekPlay(i);
    }

    public int stop() {
        return RadioServiceManagerGlobal.get().stop();
    }

    public int seekUp() {
        return RadioServiceManagerGlobal.get().seekUp();
    }

    public int seekDown() {
        return RadioServiceManagerGlobal.get().seekDown();
    }

    public int scanChannel() {
        return RadioServiceManagerGlobal.get().scanChannel();
    }

    public int scanAllRadio() {
        return RadioServiceManagerGlobal.get().scanAllRadio();
    }

    public int stepUp() {
        return RadioServiceManagerGlobal.get().stepUp();
    }

    public int stepDown() {
        return RadioServiceManagerGlobal.get().stepDown();
    }

    public boolean isFreqValid(int i, int i2) {
        return RadioServiceManagerGlobal.get().isFreqValid(i, i2);
    }

    public boolean isFmStero() {
        return RadioServiceManagerGlobal.get().isFmStero();
    }

    public int isSig(int i) {
        return RadioServiceManagerGlobal.get().isSig(i);
    }

    public int getMax(int i) {
        return RadioServiceManagerGlobal.get().getMax(i);
    }

    public int getMin(int i) {
        return RadioServiceManagerGlobal.get().getMin(i);
    }

    public int setMax(int i, int i2) {
        return RadioServiceManagerGlobal.get().setMax(i, i2);
    }

    public int setMin(int i, int i2) {
        return RadioServiceManagerGlobal.get().setMin(i, i2);
    }

    public int getStep(int i) {
        return RadioServiceManagerGlobal.get().getStep(i);
    }

    public int getManualStep(int i) {
        return RadioServiceManagerGlobal.get().getManualStep(i);
    }

    public int getDefault(int i) {
        return RadioServiceManagerGlobal.get().getDefault(i);
    }

    public int setStep(int i, int i2) {
        return RadioServiceManagerGlobal.get().setStep(i, i2);
    }

    public int setManualStep(int i, int i2) {
        return RadioServiceManagerGlobal.get().setManualStep(i, i2);
    }

    public int setDefault(int i, int i2) {
        return RadioServiceManagerGlobal.get().setDefault(i, i2);
    }

    public int getScanType() {
        return RadioServiceManagerGlobal.get().getScanType();
    }

    public int getSeekingFreq() {
        return RadioServiceManagerGlobal.get().getSeekingFreq();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class RadioServiceManagerGlobal extends IRadioCallbacks.Stub implements IHwBinder.DeathRecipient, Runnable {
        private static final int RECONNECTSERVICE_TIMEOUT = 1000;
        private static final RadioServiceManagerGlobal gRadioServiceManager = new RadioServiceManagerGlobal();
        private static IRadioService mIRadioService;
        private final Object mLock = new Object();
        private final ArrayMap<RadioCallback, Handler> mCallbackMap = new ArrayMap<>();
        private Thread mReconnectThread = null;

        private RadioServiceManagerGlobal() {
        }

        public static RadioServiceManagerGlobal get() {
            return gRadioServiceManager;
        }

        public IRadioService getRadioService() {
            IRadioService iRadioService;
            synchronized (this.mLock) {
                connectRadioServiceLocked();
                if (mIRadioService == null) {
                    Log.e(RadioServiceManager.TAG, "radio service is unavailable");
                }
                iRadioService = mIRadioService;
            }
            return iRadioService;
        }

        private boolean connectRadioServiceLocked() {
            if (mIRadioService == null || mIRadioService.asBinder() == null) {
                try {
                    IRadioService service = IRadioService.getService(false);
                    if (service == null) {
                        Log.e(RadioServiceManager.TAG, "the radio service(HIDL) not started!connected service fail!");
                        return false;
                    }
                    service.asBinder().linkToDeath(this, 1L);
                    mIRadioService = service;
                    mIRadioService.registerCallback(this);
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
            }
            return true;
        }

        private void startReconnectThread() {
            if (this.mReconnectThread == null || !this.mReconnectThread.isAlive()) {
                this.mReconnectThread = new Thread(this);
                this.mReconnectThread.start();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            do {
                Log.i(RadioServiceManager.TAG, "reconnecting radio service!");
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } while (!connectRadioServiceLocked());
            this.mReconnectThread = null;
        }

        @Override // android.hardware.audioadapter.V1_0.IRadioCallbacks
        public void onFreqChange(final int i, final int i2, final int i3, final int i4) throws RemoteException {
            int size = this.mCallbackMap.size();
            for (int i5 = 0; i5 < size; i5++) {
                Handler valueAt = this.mCallbackMap.valueAt(i5);
                final RadioCallback keyAt = this.mCallbackMap.keyAt(i5);
                if (keyAt != null) {
                    if (valueAt != null) {
                        valueAt.post(new Runnable() { // from class: android.hardware.audioadapter.V1_0.RadioServiceManager.RadioServiceManagerGlobal.1
                            @Override // java.lang.Runnable
                            public void run() {
                                keyAt.onFreqChange(i, i2, i3, i4);
                            }
                        });
                    } else {
                        keyAt.onFreqChange(i, i2, i3, i4);
                    }
                }
            }
        }

        @Override // android.hardware.audioadapter.V1_0.IRadioCallbacks
        public void onFreqSignal(final int i, final int i2, final int i3) throws RemoteException {
            int size = this.mCallbackMap.size();
            for (int i4 = 0; i4 < size; i4++) {
                Handler valueAt = this.mCallbackMap.valueAt(i4);
                final RadioCallback keyAt = this.mCallbackMap.keyAt(i4);
                if (keyAt != null) {
                    if (valueAt != null) {
                        valueAt.post(new Runnable() { // from class: android.hardware.audioadapter.V1_0.RadioServiceManager.RadioServiceManagerGlobal.2
                            @Override // java.lang.Runnable
                            public void run() {
                                keyAt.onFreqSignal(i, i2, i3);
                            }
                        });
                    } else {
                        keyAt.onFreqSignal(i, i2, i3);
                    }
                }
            }
        }

        @Override // android.hardware.audioadapter.V1_0.IRadioCallbacks
        public void onSeekStatusChange(final int i, final int i2, final int i3) throws RemoteException {
            int size = this.mCallbackMap.size();
            for (int i4 = 0; i4 < size; i4++) {
                Handler valueAt = this.mCallbackMap.valueAt(i4);
                final RadioCallback keyAt = this.mCallbackMap.keyAt(i4);
                if (keyAt != null) {
                    if (valueAt != null) {
                        valueAt.post(new Runnable() { // from class: android.hardware.audioadapter.V1_0.RadioServiceManager.RadioServiceManagerGlobal.3
                            @Override // java.lang.Runnable
                            public void run() {
                                keyAt.onSeekStatusChange(i, i2, i3);
                            }
                        });
                    } else {
                        keyAt.onSeekStatusChange(i, i2, i3);
                    }
                }
            }
        }

        public void registerRadioCallback(RadioCallback radioCallback, Handler handler) {
            synchronized (this.mLock) {
                connectRadioServiceLocked();
                this.mCallbackMap.put(radioCallback, handler);
                Log.d(RadioServiceManager.TAG, "registerRadioCallback: mCallbackMap.size(): " + this.mCallbackMap.size());
            }
        }

        public void unregisterRadioCallback(RadioCallback radioCallback) {
            synchronized (this.mLock) {
                this.mCallbackMap.remove(radioCallback);
            }
        }

        @Override // android.os.IHwBinder.DeathRecipient
        public void serviceDied(long j) {
            synchronized (this.mLock) {
                if (mIRadioService == null) {
                    return;
                }
                mIRadioService = null;
                if (!this.mCallbackMap.isEmpty()) {
                    startReconnectThread();
                }
            }
        }

        public int init() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.init();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int open() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.open();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int close() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setFreq(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setFreq(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getFreq() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getFreq();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setBand(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setBand(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getBand() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getBand();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setMute(boolean z) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setMute(z ? 1 : 0);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int seekPlay(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.seekPlay(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int stop() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.stop();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int seekUp() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.seekUp();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int seekDown() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.seekDown();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int scanChannel() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.scanChannel();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int scanAllRadio() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.scanAllRadio();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int stepUp() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.stepUp();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int stepDown() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.stepDown();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean isFreqValid(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return false;
                        }
                        return mIRadioService.isFreqValid(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean isFmStero() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return false;
                        }
                        return mIRadioService.isFmStero();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int isSig(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.isSig(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getMax(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getMax(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getMin(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getMin(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setMax(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setMax(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setMin(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setMin(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getStep(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getStep(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getManualStep(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getManualStep(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getDefault(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getDefault(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setStep(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setStep(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setManualStep(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setManualStep(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int setDefault(int i, int i2) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.setDefault(i, i2);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getScanType() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getScanType();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getSeekingFreq() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIRadioService = getRadioService();
                        if (mIRadioService == null) {
                            Log.w(RadioServiceManager.TAG, "the radio service(HIDL) not started!!!");
                            return -1;
                        }
                        return mIRadioService.getSeekingFreq();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
