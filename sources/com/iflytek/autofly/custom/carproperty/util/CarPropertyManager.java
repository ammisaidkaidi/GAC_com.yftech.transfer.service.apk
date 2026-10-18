package com.iflytek.autofly.custom.carproperty.util;

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
import com.iflytek.autofly.custom.carproperty.aidl.ICarPropertyServiceAIDL;
import com.iflytek.autofly.custom.carproperty.aidl.ICarPropertyServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPropertyManager {
    private static final String TAG = "CarPropertyManager.Custom";
    private static CarPropertyManager instance;
    private static Context mContext;
    private int mState = 1;
    private Handler mMainHander = new Handler(Looper.getMainLooper());
    private ICarPropertyServiceAIDL mRemoteService = null;
    private ICarPropertyListener mCarPropertyListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.carproperty.util.CarPropertyManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(CarPropertyManager.TAG, "onService Connected");
            CarPropertyManager.this.mRemoteService = ICarPropertyServiceAIDL.Stub.asInterface(iBinder);
            if (CarPropertyManager.this.mRemoteService != null) {
                try {
                    CarPropertyManager.this.mRemoteService.registerListener((IBinder) CarPropertyManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            CarPropertyManager.this.mState = 3;
            CarPropertyManager.this.notifyClientServiceStatus(CarPropertyManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(CarPropertyManager.TAG, "onService Disconnected: " + componentName);
            CarPropertyManager.this.mState = 1;
            CarPropertyManager.this.notifyClientServiceStatus(CarPropertyManager.this.mState);
            CarPropertyManager.this.mRemoteService = null;
        }
    };
    private ICarPropertyServiceAIDLListener mServiceAIDLListener = new ICarPropertyServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.carproperty.util.CarPropertyManager.1
        @Override // com.iflytek.autofly.custom.carproperty.aidl.ICarPropertyServiceAIDLListener
        public String onGetCarProperty(int i) throws RemoteException {
            if (CarPropertyManager.this.mCarPropertyListener == null) {
                return null;
            }
            try {
                return CarPropertyManager.this.mCarPropertyListener.onGetCarProperty(i);
            } catch (Exception e) {
                CarPropertyManager.this.mMainHander.post(new Runnable() { // from class: com.iflytek.autofly.custom.carproperty.util.CarPropertyManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetCarProperty exception ", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.carproperty.aidl.ICarPropertyServiceAIDLListener
        public int onSetCarProperty(int i, String str) throws RemoteException {
            if (CarPropertyManager.this.mCarPropertyListener == null) {
                return -1005;
            }
            try {
                return CarPropertyManager.this.mCarPropertyListener.onSetCarProperty(i, str);
            } catch (Exception e) {
                CarPropertyManager.this.mMainHander.post(new Runnable() { // from class: com.iflytek.autofly.custom.carproperty.util.CarPropertyManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSetCarProperty exception ", e);
                    }
                });
                return -1005;
            }
        }
    };

    private CarPropertyManager() {
        initClient();
    }

    public static CarPropertyManager registerListener(Context context, Object obj) {
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
            instance = new CarPropertyManager();
        }
        Log.d(TAG, "registerListener result:" + instance.registerListenerLocal(obj));
        instance.serviceCheck();
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

    public void notifyReceiveCarProperty(int i, String str) {
        Log.e(TAG, "notifyReceiveCarProperty propId: " + i + ", propValue: " + str);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyReceiveCarProperty: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyReceiveCarProperty(i, str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private int registerListenerLocal(Object obj) {
        int i;
        if (this.mCarPropertyListener != null && this.mCarPropertyListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mCarPropertyListener = (ICarPropertyListener) obj;
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
        if (this.mCarPropertyListener == null || !this.mCarPropertyListener.equals(obj)) {
            return -1003;
        }
        this.mCarPropertyListener = null;
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
        intent.setAction(CarPropertyServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomCarPropertyService"));
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
        if (this.mCarPropertyListener != null) {
            this.mCarPropertyListener.onServiceStatusChanged(i);
        }
    }
}
