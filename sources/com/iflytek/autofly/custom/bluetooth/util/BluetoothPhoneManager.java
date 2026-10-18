package com.iflytek.autofly.custom.bluetooth.util;

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
import com.iflytek.autofly.custom.bluetooth.aidl.FlyCallLog;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyContact;
import com.iflytek.autofly.custom.bluetooth.aidl.FlyDevice;
import com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL;
import com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothPhoneManager {
    private static final String TAG = "BtPhoneManager.Custom";
    private static BluetoothPhoneManager instance;
    private static Context mContext;
    private IBluetoothServiceAIDL mRemoteService = null;
    private IBluetoothPhoneListener mBtPhoneListener = null;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(BluetoothPhoneManager.TAG, "onService Disconnected: " + componentName);
            BluetoothPhoneManager.this.mState = 1;
            BluetoothPhoneManager.this.notifyClientServiceStatus(BluetoothPhoneManager.this.mState);
            BluetoothPhoneManager.this.mRemoteService = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(BluetoothPhoneManager.TAG, "onService Connected");
            BluetoothPhoneManager.this.mRemoteService = IBluetoothServiceAIDL.Stub.asInterface(iBinder);
            if (BluetoothPhoneManager.this.mRemoteService != null && BluetoothPhoneManager.this.mServiceAIDLPhoneListener != null) {
                try {
                    BluetoothPhoneManager.this.mRemoteService.registerListener((IBinder) BluetoothPhoneManager.this.mServiceAIDLPhoneListener, 1);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            BluetoothPhoneManager.this.mState = 3;
            BluetoothPhoneManager.this.notifyClientServiceStatus(BluetoothPhoneManager.this.mState);
        }
    };
    private IBluetoothServiceAIDLPhoneListener mServiceAIDLPhoneListener = new IBluetoothServiceAIDLPhoneListener.Stub() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1
        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public String onGetName() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetName();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetName exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onGetConnectionState() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetConnectionState();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetConnectionState exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onCall(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onCall(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onCall exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onRecall() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onRecall();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onRecall exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onHang(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onHang(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onHang exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onReject(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onReject(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onReject exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onAccept(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onAccept(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onAccept exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public List<FlyContact> onGetContactList() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetContactList();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetContactList exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public List<FlyContact> onGetContactByName(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetContactByName(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetContactByName exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public List<FlyContact> onGetContactByNumber(String str) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetContactByNumber(str);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetContactByNumber exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onTransfer() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onTransfer();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.11
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onTransfer exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onLaunchActivity(int i) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onLaunchActivity(i);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.12
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onLaunchActivity exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public FlyDevice onGetBluetoothDevice() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetBluetoothDevice();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetBluetoothDevice exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public List<FlyCallLog> onGetCallLogList() throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return null;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onGetCallLogList();
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.14
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetCallLogList exception", e);
                    }
                });
                return null;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
        public int onSyncPhoneBook(int i) throws RemoteException {
            if (BluetoothPhoneManager.this.mBtPhoneListener == null) {
                return -1005;
            }
            try {
                return BluetoothPhoneManager.this.mBtPhoneListener.onSyncPhoneBook(i);
            } catch (Exception e) {
                BluetoothPhoneManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothPhoneManager.1.15
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSyncPhoneBook exception", e);
                    }
                });
                return -1005;
            }
        }
    };

    private BluetoothPhoneManager() {
        initClient();
    }

    public static BluetoothPhoneManager registerListener(Context context, Object obj) {
        if (context == null) {
            Log.e(TAG, "registerListener context is null !!!");
            return null;
        }
        if (obj == null) {
            Log.e(TAG, "registerListener listener is null !!!");
            return null;
        }
        mContext = context;
        if (instance == null) {
            instance = new BluetoothPhoneManager();
        }
        instance.registerListenerLocal(obj, 1);
        instance.serviceCheck();
        return instance;
    }

    public static int unRegisterListener(Object obj) {
        if (obj == null) {
            Log.e(TAG, "unRegisterListener listener is null !!!");
            return -1002;
        }
        if (instance != null) {
            return instance.unRegisterListenerLocal(obj, 1);
        }
        return -1003;
    }

    private int registerListenerLocal(Object obj, int i) {
        int i2;
        if (this.mBtPhoneListener == null || !this.mBtPhoneListener.equals(obj)) {
            try {
                this.mBtPhoneListener = (IBluetoothPhoneListener) obj;
                i2 = 0;
            } catch (ClassCastException e) {
                Log.e(TAG, "fatal error listener illegal", e);
                return -1003;
            }
        } else {
            i2 = -1007;
        }
        try {
            if (this.mRemoteService != null) {
                int registerListener = this.mRemoteService.registerListener((IBinder) this.mServiceAIDLPhoneListener, i);
                try {
                    this.mState = 3;
                    notifyClientServiceStatus(this.mState);
                    i2 = registerListener;
                } catch (RemoteException e2) {
                    e = e2;
                    i2 = registerListener;
                    Log.e(TAG, "fatal error when register call AIDL listener", e);
                    Log.d(TAG, "registerListenerLocal result:" + i2);
                    return i2;
                }
            }
        } catch (RemoteException e3) {
            e = e3;
        }
        Log.d(TAG, "registerListenerLocal result:" + i2);
        return i2;
    }

    private int unRegisterListenerLocal(Object obj, int i) {
        int i2;
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            return serviceCheck;
        }
        if (this.mBtPhoneListener == null || !this.mBtPhoneListener.equals(obj)) {
            serviceCheck = -1003;
        } else {
            this.mBtPhoneListener = null;
        }
        try {
            i2 = this.mRemoteService.unregisterListener((IBinder) this.mServiceAIDLPhoneListener, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            i2 = serviceCheck;
        }
        Log.d(TAG, "unRegisterListenerLocal result:" + i2);
        return i2;
    }

    public void notifyContactsNumber(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyContactsNumber: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyContactsNumber(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyCallLogNumber(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyCallLogNumber: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCallLogNumber(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyPhoneCallLog(FlyCallLog flyCallLog, boolean z) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyPhoneCallLog: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyPhoneCallLog(flyCallLog, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyPhoneContact(FlyContact flyContact, boolean z) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyPhoneContact: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyPhoneContact(flyContact, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyCallTransferToPhone(boolean z) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyCallTransferToPhone: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCallTransferToPhone(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyCallStatusChanged(int i, String str) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyCallStatusChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyCallStatusChanged(i, str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyConnectStatus(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyConnectStatus: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyConnectStatus(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private int serviceCheck() {
        switch (this.mState) {
            case 1:
                Log.d(TAG, "serviceCheck SERVICE_AIDL_NOT_BOUND");
                Log.d(TAG, "initClient " + initClient());
                return -1005;
            case 2:
                Log.d(TAG, "serviceCheck AIDL_BINDING");
                return -1004;
            case 3:
                return 0;
            default:
                return 0;
        }
    }

    private int initClient() {
        Intent intent = new Intent();
        intent.setAction(BluetoothServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomBluetoothService"));
        this.mState = 2;
        notifyClientServiceStatus(this.mState);
        boolean bindService = mContext.bindService(intent, this.mConnect, 1);
        if (!bindService) {
            this.mState = 1;
            notifyClientServiceStatus(this.mState);
        }
        Log.d(TAG, "initClient bindService " + bindService);
        return bindService ? 0 : -1005;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyClientServiceStatus(int i) {
        Log.d(TAG, "notifyClientServiceStatus status: " + i);
        if (this.mBtPhoneListener != null) {
            this.mBtPhoneListener.onServiceStatusChanged(i);
        }
    }
}
