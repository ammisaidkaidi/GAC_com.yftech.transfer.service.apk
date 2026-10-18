package com.iflytek.autofly.custom.dashboard.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.iflytek.autofly.custom.IflyAidlException;
import com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDL;
import com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class DashboardManager {
    private static final String TAG = "DashboardManager.Custom";
    private static DashboardManager instance;
    private Context mContext;
    private int mState = 1;
    private IDashboardServiceAIDL mRemoteService = null;
    private IDashboardListener mDashboardListener = null;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.dashboard.util.DashboardManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(DashboardManager.TAG, "onService Connected");
            DashboardManager.this.mRemoteService = IDashboardServiceAIDL.Stub.asInterface(iBinder);
            if (DashboardManager.this.mRemoteService != null) {
                try {
                    DashboardManager.this.mRemoteService.registerListener((IBinder) DashboardManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            DashboardManager.this.mState = 3;
            DashboardManager.this.notifyClientServiceStatus(DashboardManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(DashboardManager.TAG, "onService Disconnected: " + componentName);
            DashboardManager.this.mState = 1;
            DashboardManager.this.notifyClientServiceStatus(DashboardManager.this.mState);
            DashboardManager.this.mRemoteService = null;
        }
    };
    private IDashboardServiceAIDLListener mServiceAIDLListener = new IDashboardServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.dashboard.util.DashboardManager.1
        @Override // com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener
        public boolean onCheckDashboardValid() throws RemoteException {
            if (DashboardManager.this.mDashboardListener != null) {
                try {
                    return DashboardManager.this.mDashboardListener.onCheckDashboardValid();
                } catch (Exception e) {
                    DashboardManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.dashboard.util.DashboardManager.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onCheckDashboardValid exception", e);
                        }
                    });
                    Log.e(DashboardManager.TAG, "onCheckDashboardValid exception");
                    return false;
                }
            }
            Log.e(DashboardManager.TAG, "onCheckDashboardValid: mDashboardListener is null");
            return false;
        }

        @Override // com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener
        public void onSendData(int i, int i2, int i3, byte[] bArr) throws RemoteException {
            if (DashboardManager.this.mDashboardListener != null) {
                try {
                    DashboardManager.this.mDashboardListener.onSendData(i, i2, i3, bArr);
                    return;
                } catch (Exception e) {
                    DashboardManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.dashboard.util.DashboardManager.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onSendData exception", e);
                        }
                    });
                    return;
                }
            }
            Log.e(DashboardManager.TAG, "onSendData: mDashboardListener is null");
        }

        @Override // com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener
        public void onSendDataString(int i, int i2, int i3, String str) throws RemoteException {
            if (DashboardManager.this.mDashboardListener != null) {
                try {
                    DashboardManager.this.mDashboardListener.onSendDataString(i, i2, i3, str);
                    return;
                } catch (Exception e) {
                    DashboardManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.dashboard.util.DashboardManager.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onSendDataString exception", e);
                        }
                    });
                    return;
                }
            }
            Log.e(DashboardManager.TAG, "onSendData: mDashboardListener is null");
        }

        @Override // com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener
        public String onGetDashboradStatus(String str) throws RemoteException {
            if (DashboardManager.this.mDashboardListener != null) {
                return DashboardManager.this.mDashboardListener.onGetDashboradStatus(str);
            }
            Log.e(DashboardManager.TAG, "onGetDashboradStatus: mDashboardListener is null");
            return null;
        }
    };

    private DashboardManager(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static DashboardManager registerListener(Context context, Object obj) {
        if (context == null) {
            Log.e(TAG, "registerListener context is null");
            return null;
        }
        if (obj == null) {
            Log.e(TAG, "registerListener listener is null");
            return null;
        }
        if (instance == null) {
            instance = new DashboardManager(context);
        }
        instance.serviceCheck();
        Log.d(TAG, "registerListener result:" + instance.registerListenerLocal(obj));
        return instance;
    }

    public static int unRegisterListener(Object obj) {
        if (obj == null) {
            Log.e(TAG, "unregisterListener listener is null");
            return -1002;
        }
        if (instance != null) {
            return instance.unRegisterListenerLocal(obj);
        }
        return -1003;
    }

    private int registerListenerLocal(Object obj) {
        int i;
        if (this.mDashboardListener != null && this.mDashboardListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mDashboardListener = (IDashboardListener) obj;
                i = 0;
            } catch (ClassCastException e) {
                Log.e(TAG, "fatal error listener illegal", e);
                return -1003;
            }
        }
        if (this.mRemoteService != null) {
            try {
                int registerListener = this.mRemoteService.registerListener((IBinder) this.mServiceAIDLListener);
                try {
                    this.mState = 3;
                    notifyClientServiceStatus(this.mState);
                    i = registerListener;
                } catch (RemoteException e2) {
                    e = e2;
                    i = registerListener;
                    Log.e(TAG, "fatal error when register call AIDL listener", e);
                    Log.d(TAG, "registerListenerLocal result:" + i);
                    return i;
                }
            } catch (RemoteException e3) {
                e = e3;
            }
        }
        Log.d(TAG, "registerListenerLocal result:" + i);
        return i;
    }

    private int unRegisterListenerLocal(Object obj) {
        int unregisterListener;
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            return serviceCheck;
        }
        if (this.mDashboardListener == null || !this.mDashboardListener.equals(obj)) {
            return -1003;
        }
        this.mDashboardListener = null;
        if (this.mRemoteService != null) {
            try {
                unregisterListener = this.mRemoteService.unregisterListener((IBinder) this.mServiceAIDLListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            Log.d(TAG, "unRegisterListenerLocal result:" + unregisterListener);
            return unregisterListener;
        }
        unregisterListener = serviceCheck;
        Log.d(TAG, "unRegisterListenerLocal result:" + unregisterListener);
        return unregisterListener;
    }

    public void notifyCommand(int i, int i2, int i3, byte[] bArr) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyCommand: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCommand(i, i2, i3, bArr);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyCommandString(int i, int i2, int i3, String str) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyCommand: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCommandString(i, i2, i3, str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private int serviceCheck() {
        switch (this.mState) {
            case 1:
                Log.d(TAG, "serviceCheck SERVICE_AIDL_NOT_BOUND and init client return " + initClient());
                return -1005;
            case 2:
                Log.e(TAG, "serviceCheck AIDL_BINDING");
                return -1004;
            case 3:
                return 0;
            default:
                return 0;
        }
    }

    private int initClient() {
        Intent intent = new Intent();
        intent.setAction(DashboardServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomDashboardService"));
        boolean bindService = this.mContext.bindService(intent, this.mConnect, 1);
        if (bindService) {
            this.mState = 2;
            notifyClientServiceStatus(this.mState);
        } else {
            this.mState = 1;
            notifyClientServiceStatus(this.mState);
        }
        Log.d(TAG, "initClient bindService " + bindService);
        return bindService ? 0 : -1005;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyClientServiceStatus(int i) {
        Log.d(TAG, "notifyClientServiceStatus status: " + i);
        if (this.mDashboardListener != null) {
            this.mDashboardListener.onServiceStatusChanged(i);
        }
    }
}
