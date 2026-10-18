package com.iflytek.autofly.custom.tbox.util;

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
import com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDL;
import com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class TboxManager {
    private static final String TAG = "TboxManager.Custom";
    private static TboxManager instance;
    private static Context mContext;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ITboxServiceAIDL mRemoteService = null;
    private ITboxListener mTboxListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.tbox.util.TboxManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(TboxManager.TAG, "onService Connected");
            TboxManager.this.mRemoteService = ITboxServiceAIDL.Stub.asInterface(iBinder);
            if (TboxManager.this.mRemoteService != null) {
                try {
                    TboxManager.this.mRemoteService.registerListener((IBinder) TboxManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            TboxManager.this.mState = 3;
            TboxManager.this.notifyClientServiceStatus(TboxManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(TboxManager.TAG, "onService Disconnected: " + componentName);
            TboxManager.this.mState = 1;
            TboxManager.this.notifyClientServiceStatus(TboxManager.this.mState);
            TboxManager.this.mRemoteService = null;
        }
    };
    private ITboxServiceAIDLListener mServiceAIDLListener = new ITboxServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.tbox.util.TboxManager.1
        @Override // com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener
        public int onGetTboxSignalStrength() throws RemoteException {
            if (TboxManager.this.mTboxListener == null) {
                return -1005;
            }
            try {
                return TboxManager.this.mTboxListener.onGetTboxSignalStrength();
            } catch (Exception e) {
                TboxManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.tbox.util.TboxManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetSignalStrength exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener
        public boolean onHasTboxNetWork() throws RemoteException {
            if (TboxManager.this.mTboxListener == null) {
                return false;
            }
            try {
                return TboxManager.this.mTboxListener.onHasTboxNetWork();
            } catch (Exception e) {
                TboxManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.tbox.util.TboxManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onHasTboxNetWork exception", e);
                    }
                });
                return false;
            }
        }
    };

    private TboxManager() {
    }

    public static TboxManager registerListener(Context context, Object obj) {
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
            instance = new TboxManager();
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
        if (this.mTboxListener != null && this.mTboxListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mTboxListener = (ITboxListener) obj;
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
        if (this.mTboxListener == null || !this.mTboxListener.equals(obj)) {
            return -1003;
        }
        this.mTboxListener = null;
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
        intent.setAction(TboxServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomTboxService"));
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
        if (this.mTboxListener != null) {
            this.mTboxListener.onServiceStatusChanged(i);
        }
    }

    public void notifyTboxSignalStrengthChanged(int i) {
        Log.e(TAG, "notifyTboxSignalStrengthChanged freq: " + i);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyTboxSignalStrengthChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyTboxSignalStrengthChanged(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyTboxNetWorkChanged(boolean z) {
        Log.e(TAG, "notifyTboxNetWorkChanged freq: " + z);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyTboxNetWorkChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyTboxNetWorkChanged(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
