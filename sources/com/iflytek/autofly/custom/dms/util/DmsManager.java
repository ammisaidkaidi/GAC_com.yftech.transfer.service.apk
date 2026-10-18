package com.iflytek.autofly.custom.dms.util;

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
import com.iflytek.autofly.custom.dms.aidl.IDmsServiceAIDL;
import com.iflytek.autofly.custom.dms.aidl.IDmsServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class DmsManager {
    private static final String TAG = "DmsManager.Custom";
    private static DmsManager instance;
    private static Context mContext;
    private int mState = 1;
    private Handler mMainHander = new Handler(Looper.getMainLooper());
    private IDmsServiceAIDL mRemoteService = null;
    private IDmsListener mDmsListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.dms.util.DmsManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(DmsManager.TAG, "onService Connected");
            DmsManager.this.mRemoteService = IDmsServiceAIDL.Stub.asInterface(iBinder);
            if (DmsManager.this.mRemoteService != null) {
                try {
                    DmsManager.this.mRemoteService.registerListener((IBinder) DmsManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            DmsManager.this.mState = 3;
            DmsManager.this.notifyClientServiceStatus(DmsManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(DmsManager.TAG, "onService Disconnected: " + componentName);
            DmsManager.this.mState = 1;
            DmsManager.this.notifyClientServiceStatus(DmsManager.this.mState);
            DmsManager.this.mRemoteService = null;
        }
    };
    private IDmsServiceAIDLListener mServiceAIDLListener = new IDmsServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.dms.util.DmsManager.1
        @Override // com.iflytek.autofly.custom.dms.aidl.IDmsServiceAIDLListener
        public String onReadDmsMessage(int i) throws RemoteException {
            if (DmsManager.this.mDmsListener == null) {
                return null;
            }
            try {
                return DmsManager.this.mDmsListener.onReadDmsMessage(i);
            } catch (Exception e) {
                DmsManager.this.mMainHander.post(new Runnable() { // from class: com.iflytek.autofly.custom.dms.util.DmsManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onReadDmsMessage exception ", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.dms.aidl.IDmsServiceAIDLListener
        public int onWriteDmsMessage(int i, String str) throws RemoteException {
            if (DmsManager.this.mDmsListener == null) {
                return -1005;
            }
            try {
                return DmsManager.this.mDmsListener.onWriteDmsMessage(i, str);
            } catch (Exception e) {
                DmsManager.this.mMainHander.post(new Runnable() { // from class: com.iflytek.autofly.custom.dms.util.DmsManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onWriteDmsMessage exception ", e);
                    }
                });
                return -1005;
            }
        }
    };

    private DmsManager() {
    }

    public static DmsManager registerListener(Context context, Object obj) {
        if (context == null) {
            Log.e(TAG, "registerListener context is null");
            return null;
        }
        if (obj == null) {
            Log.e(TAG, "registerListener listener is null");
            return null;
        }
        mContext = context;
        if (instance == null) {
            instance = new DmsManager();
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

    public void notifyReceiveDmsMessage(int i, String str) {
        Log.e(TAG, "notifyReceiveDmsMessage messageId: " + i + ", message: " + str);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyReceiveDmsMessage: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyReceiveDmsMessage(i, str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private int registerListenerLocal(Object obj) {
        int i;
        if (this.mDmsListener != null && this.mDmsListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mDmsListener = (IDmsListener) obj;
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
        if (this.mDmsListener == null || !this.mDmsListener.equals(obj)) {
            return -1003;
        }
        this.mDmsListener = null;
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
        intent.setAction("com.iflytek.autofly.customdmsservice");
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomDmsService"));
        boolean bindService = mContext.bindService(intent, this.mConnect, 1);
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
        if (this.mDmsListener != null) {
            this.mDmsListener.onServiceStatusChanged(i);
        }
    }
}
