package com.iflytek.autofly.custom.system.util;

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
import com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDL;
import com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemManager {
    private static final String TAG = "SystemManager.Custom";
    private static SystemManager instance;
    private Context mContext;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ISystemServiceAIDL mRemoteService = null;
    private ISystemListener mSystemListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(SystemManager.TAG, "onService Connected");
            SystemManager.this.mRemoteService = ISystemServiceAIDL.Stub.asInterface(iBinder);
            if (SystemManager.this.mRemoteService != null) {
                try {
                    SystemManager.this.mRemoteService.registerListener((IBinder) SystemManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            SystemManager.this.mState = 3;
            SystemManager.this.notifyClientServiceStatus(SystemManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(SystemManager.TAG, "onService Disconnected: " + componentName);
            SystemManager.this.mState = 1;
            SystemManager.this.notifyClientServiceStatus(SystemManager.this.mState);
            SystemManager.this.mRemoteService = null;
        }
    };
    private ISystemServiceAIDLListener mServiceAIDLListener = new ISystemServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.1
        @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
        public String onGetVNCode() throws RemoteException {
            if (SystemManager.this.mSystemListener != null) {
                try {
                    return SystemManager.this.mSystemListener.onGetVNCode();
                } catch (Exception e) {
                    SystemManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onGetVNCode exception", e);
                        }
                    });
                    return null;
                }
            }
            Log.e(SystemManager.TAG, "onGetVNCode: mSystemListener is null");
            return null;
        }

        @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
        public int onGetCarConfig(String str) throws RemoteException {
            if (SystemManager.this.mSystemListener != null) {
                try {
                    return SystemManager.this.mSystemListener.onGetCarConfig(str);
                } catch (Exception e) {
                    SystemManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onGetCarConfig exception", e);
                        }
                    });
                    return -1003;
                }
            }
            Log.e(SystemManager.TAG, "onGetCarConfig: mSystemListener is null");
            return -1003;
        }

        @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
        public String onGetUUID() throws RemoteException {
            if (SystemManager.this.mSystemListener != null) {
                try {
                    return SystemManager.this.mSystemListener.onGetUUID();
                } catch (Exception e) {
                    SystemManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onGetUUID exception", e);
                        }
                    });
                    return null;
                }
            }
            Log.e(SystemManager.TAG, "onGetUUID: mSystemListener is null");
            return null;
        }

        @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
        public int onGetVehicleState(String str) throws RemoteException {
            if (SystemManager.this.mSystemListener != null) {
                try {
                    return SystemManager.this.mSystemListener.onGetVehicleState(str);
                } catch (Exception e) {
                    SystemManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.system.util.SystemManager.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onGetVehicleState exception", e);
                        }
                    });
                    return -1003;
                }
            }
            Log.e(SystemManager.TAG, "onGetVehicleState: mSystemListener is null");
            return -1003;
        }
    };

    private SystemManager(Context context) {
        this.mContext = context;
        initClient();
    }

    public static SystemManager registerListener(Context context, Object obj) {
        if (context == null) {
            Log.e(TAG, "registerListener context is null");
            return null;
        }
        if (obj == null) {
            Log.e(TAG, "registerListener listener is null");
            return null;
        }
        if (instance == null) {
            instance = new SystemManager(context);
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

    private int registerListenerLocal(Object obj) {
        int i;
        if (this.mSystemListener != null && this.mSystemListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mSystemListener = (ISystemListener) obj;
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
        if (this.mSystemListener == null || !this.mSystemListener.equals(obj)) {
            return -1003;
        }
        this.mSystemListener = null;
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

    public void notifyVehicleStateChanged(String str, int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyVehicleStateChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyVehicleStateChanged(str, i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyCarConfigChanged(String str, int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyVehicleStateChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCarConfigChanged(str, i);
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
        intent.setAction(SystemServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomSystemService"));
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
        if (this.mSystemListener != null) {
            this.mSystemListener.onServiceStatusChanged(i);
        }
    }
}
