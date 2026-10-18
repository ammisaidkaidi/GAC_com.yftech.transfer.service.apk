package android.hardware.audioadapter.V1_0;

import android.hardware.audioadapter.V1_0.IObdCallbacks;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class ObdServiceManager {
    public static final int ANDROID_OS = 0;
    public static final int OBDSERVICE_ERROR = 2;
    public static final int OBDSERVICE_SUCCESS = 1;
    public static final int QNX_OS = 1;
    private static final String TAG = "ObdServiceManager";
    public static final int UPDATE_MODULE_MCU = 2;
    public static final int UPDATE_MODULE_OS = 1;
    public static final int UPDATE_RET_EXIST = 3;
    public static final int UPDATE_RET_FAIL = 2;
    public static final int UPDATE_RET_PATH_NOT_EXIST = 5;
    public static final int UPDATE_RET_SUCCESS = 1;
    public static final int UPDATE_RET_UPDATING = 4;
    public static final int UPDATE_STATE_CHECKING = 5;
    public static final int UPDATE_STATE_CHECK_FAIL = 0;
    public static final int UPDATE_STATE_COPYING = 4;
    public static final int UPDATE_STATE_FAIL = 2;
    public static final int UPDATE_STATE_REQ_UPDATE = 6;
    public static final int UPDATE_STATE_START = 3;
    public static final int UPDATE_STATE_SUCCESS = 1;
    public static final int UPDATE_STATE_UPDATING = 7;
    public static final int UPGRADE_MODULE_DMS = 8;
    public static final int UPGRADE_MODULE_DSP = 4;
    public static final int UPGRADE_MODULE_MCU_BOOT = 6;
    public static final int UPGRADE_MODULE_OMS = 7;
    public static final int UPGRADE_MODULE_SCREEN = 3;
    public static final int UPGRADE_MODULE_SCREEN_CLU = 9;
    public static final int UPGRADE_MODULE_SCREEN_DIS = 10;
    public static final int UPGRADE_MODULE_SCREEN_DIS_TP = 11;
    public static final int UPGRADE_MODULE_SCREEN_IVI = 5;
    public static final int UPGRADE_MODULE_SCREEN_IVI_TP = 3;
    public static final int UPGRADE_MODULE_SCREEN_MCU = 5;
    private static volatile ObdServiceManager mInstance;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class ObdCallback {
        public void onCrashChange(CrashInfo crashInfo) {
        }

        public void onUpdateChange(UpdateInfo updateInfo) {
        }
    }

    public String getVersion(int i) {
        return "";
    }

    private ObdServiceManager() {
    }

    public static ObdServiceManager getInstance() {
        if (mInstance == null) {
            synchronized (ObdServiceManager.class) {
                if (mInstance == null) {
                    mInstance = new ObdServiceManager();
                }
            }
        }
        return mInstance;
    }

    public void registerObdCallback(ObdCallback obdCallback) {
        ObdServiceManagerGlobal.get().registerObdCallback(obdCallback, null);
    }

    public void registerObdCallback(ObdCallback obdCallback, Handler handler) {
        ObdServiceManagerGlobal.get().registerObdCallback(obdCallback, handler);
    }

    public void unregisterObdCallback(ObdCallback obdCallback) {
        ObdServiceManagerGlobal.get().unregisterObdCallback(obdCallback);
    }

    public void transferCrashLog(String str, int i, int i2, String str2, String str3, ArrayList<String> arrayList) {
        ObdServiceManagerGlobal.get().transferCrashLog(str, i, i2, str2, str3, arrayList);
    }

    public CmdExeInfo runCommand(String str, boolean z, int i) {
        return ObdServiceManagerGlobal.get().runCommand(str, z, i);
    }

    public String readFile(String str, int i) {
        return ObdServiceManagerGlobal.get().readFile(str, i);
    }

    public boolean writeFile(String str, String str2, int i) {
        return ObdServiceManagerGlobal.get().writeFile(str, str2, i);
    }

    public ArrayList<CrashInfo> getCrashInfo() {
        return ObdServiceManagerGlobal.get().getCrashInfo();
    }

    public int addUpdateModule(UpdateInfo updateInfo) {
        return ObdServiceManagerGlobal.get().addUpdateModule(updateInfo);
    }

    public int removeUpdateModule(UpdateInfo updateInfo) {
        return ObdServiceManagerGlobal.get().removeUpdateModule(updateInfo);
    }

    public ArrayList<UpdateInfo> getUpdateInfo() {
        return ObdServiceManagerGlobal.get().getUpdateInfo();
    }

    public int startUpdate() {
        return ObdServiceManagerGlobal.get().startUpdate();
    }

    public int reboot(long j, int i) {
        return ObdServiceManagerGlobal.get().reboot(j, i);
    }

    public int rollBack() {
        return ObdServiceManagerGlobal.get().rollBack();
    }

    public boolean fileExists(String str, int i) {
        return ObdServiceManagerGlobal.get().fileExists(str, i);
    }

    public long getFreeMem(int i) {
        return ObdServiceManagerGlobal.get().getFreeMem(i);
    }

    public long getTotalMem(int i) {
        return ObdServiceManagerGlobal.get().getTotalMem(i);
    }

    public int getCpuUsed(int i) {
        return ObdServiceManagerGlobal.get().getCpuUsed(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ObdServiceManagerGlobal extends IObdCallbacks.Stub implements IHwBinder.DeathRecipient, Runnable {
        private static final int RECONNECTSERVICE_TIMEOUT = 1000;
        private static final ObdServiceManagerGlobal gObdServiceManager = new ObdServiceManagerGlobal();
        private static IObdService mIObdService;
        private final Object mLock = new Object();
        private final ArrayMap<ObdCallback, Handler> mCallbackMap = new ArrayMap<>();
        private Thread mReconnectThread = null;
        private boolean mIsRegisterCallback = false;

        private ObdServiceManagerGlobal() {
        }

        public static ObdServiceManagerGlobal get() {
            return gObdServiceManager;
        }

        public IObdService getObdService() {
            IObdService iObdService;
            synchronized (this.mLock) {
                connectObdServiceLocked(false);
                if (mIObdService == null) {
                    Log.e(ObdServiceManager.TAG, "OBD service is unavailable");
                }
                iObdService = mIObdService;
            }
            return iObdService;
        }

        private boolean connectObdServiceLocked(boolean z) {
            if (mIObdService == null || mIObdService.asBinder() == null) {
                try {
                    IObdService service = IObdService.getService(false);
                    if (service == null) {
                        Log.e(ObdServiceManager.TAG, "the OBD service(HIDL) not started!connected service fail!");
                        return false;
                    }
                    service.asBinder().linkToDeath(this, 1L);
                    mIObdService = service;
                    if (z) {
                        this.mIsRegisterCallback = true;
                        mIObdService.registerCallback(this);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
            } else if (z && !this.mIsRegisterCallback) {
                this.mIsRegisterCallback = true;
                try {
                    mIObdService.registerCallback(this);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
            return true;
        }

        private boolean connectObdServiceLocked() {
            return connectObdServiceLocked(true);
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
                Log.i(ObdServiceManager.TAG, "reconnecting OBD service!");
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } while (!connectObdServiceLocked());
            this.mReconnectThread = null;
        }

        @Override // android.hardware.audioadapter.V1_0.IObdCallbacks
        public void onCrashChange(final CrashInfo crashInfo) throws RemoteException {
            int size = this.mCallbackMap.size();
            for (int i = 0; i < size; i++) {
                Handler valueAt = this.mCallbackMap.valueAt(i);
                final ObdCallback keyAt = this.mCallbackMap.keyAt(i);
                if (keyAt != null) {
                    if (valueAt != null) {
                        valueAt.post(new Runnable() { // from class: android.hardware.audioadapter.V1_0.ObdServiceManager.ObdServiceManagerGlobal.1
                            @Override // java.lang.Runnable
                            public void run() {
                                keyAt.onCrashChange(crashInfo);
                            }
                        });
                    } else {
                        keyAt.onCrashChange(crashInfo);
                    }
                }
            }
        }

        @Override // android.hardware.audioadapter.V1_0.IObdCallbacks
        public void onUpdateChange(final UpdateInfo updateInfo) throws RemoteException {
            int size = this.mCallbackMap.size();
            for (int i = 0; i < size; i++) {
                Handler valueAt = this.mCallbackMap.valueAt(i);
                final ObdCallback keyAt = this.mCallbackMap.keyAt(i);
                if (keyAt != null) {
                    if (valueAt != null) {
                        valueAt.post(new Runnable() { // from class: android.hardware.audioadapter.V1_0.ObdServiceManager.ObdServiceManagerGlobal.2
                            @Override // java.lang.Runnable
                            public void run() {
                                keyAt.onUpdateChange(updateInfo);
                            }
                        });
                    } else {
                        keyAt.onUpdateChange(updateInfo);
                    }
                }
            }
        }

        public void registerObdCallback(ObdCallback obdCallback, Handler handler) {
            synchronized (this.mLock) {
                connectObdServiceLocked();
                this.mCallbackMap.put(obdCallback, handler);
                Log.d(ObdServiceManager.TAG, "registerObdCallback: mCallbackMap.size(): " + this.mCallbackMap.size());
            }
        }

        public void unregisterObdCallback(ObdCallback obdCallback) {
            synchronized (this.mLock) {
                this.mCallbackMap.remove(obdCallback);
            }
        }

        @Override // android.os.IHwBinder.DeathRecipient
        public void serviceDied(long j) {
            synchronized (this.mLock) {
                if (mIObdService == null) {
                    return;
                }
                mIObdService = null;
                this.mIsRegisterCallback = false;
                if (!this.mCallbackMap.isEmpty()) {
                    startReconnectThread();
                }
            }
        }

        public void transferCrashLog(String str, int i, int i2, String str2, String str3, ArrayList<String> arrayList) {
            synchronized (this.mLock) {
                try {
                    mIObdService = getObdService();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (mIObdService == null) {
                    Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                    return;
                }
                CrashInfo crashInfo = new CrashInfo();
                if (str != null) {
                    crashInfo.type = str;
                }
                crashInfo.pid = i;
                if (str3 != null) {
                    crashInfo.detailinfo = str3;
                }
                crashInfo.signal = i2;
                if (str2 != null) {
                    crashInfo.processName = str2;
                }
                if (arrayList != null && arrayList.size() > 0) {
                    crashInfo.reserve.addAll(arrayList);
                }
                mIObdService.transferCrashLog(crashInfo);
            }
        }

        public CmdExeInfo runCommand(String str, boolean z, int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return null;
                        }
                        return mIObdService.runCommand(str, z, i);
                    } catch (NullPointerException unused) {
                        return null;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public String readFile(String str, int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return null;
                        }
                        return mIObdService.readFile(str, i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean writeFile(String str, String str2, int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return false;
                        }
                        return mIObdService.writeFile(str, str2, i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public ArrayList<CrashInfo> getCrashInfo() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return null;
                        }
                        return mIObdService.getCrashInfo();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int addUpdateModule(UpdateInfo updateInfo) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 2;
                        }
                        return mIObdService.addUpdateModule(updateInfo);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int removeUpdateModule(UpdateInfo updateInfo) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 2;
                        }
                        return mIObdService.removeUpdateModule(updateInfo);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public ArrayList<UpdateInfo> getUpdateInfo() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return null;
                        }
                        return mIObdService.getUpdateInfo();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int startUpdate() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 2;
                        }
                        return mIObdService.startUpdate();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int reboot(long j, int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 2;
                        }
                        return mIObdService.reboot(j, i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int rollBack() {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 2;
                        }
                        return mIObdService.rollBack();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean fileExists(String str, int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return false;
                        }
                        return mIObdService.fileExists(str, i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public long getFreeMem(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 0L;
                        }
                        return mIObdService.getFreeMem(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 0L;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public long getTotalMem(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 0L;
                        }
                        return mIObdService.getTotalMem(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 0L;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getCpuUsed(int i) {
            synchronized (this.mLock) {
                try {
                    try {
                        mIObdService = getObdService();
                        if (mIObdService == null) {
                            Log.w(ObdServiceManager.TAG, "the OBD service(HIDL) not started!!!");
                            return 0;
                        }
                        return mIObdService.getCpuUsed(i);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 0;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
