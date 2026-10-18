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
import com.iflytek.autofly.custom.bluetooth.aidl.FlyMediaInfo;
import com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDL;
import com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothMusicManager {
    private static final String TAG = "BtMusicManager.Custom";
    private static BluetoothMusicManager instance;
    private static Context mContext;
    private IBluetoothServiceAIDL mRemoteService = null;
    private IBluetoothMusicListener mBtMusicListener = null;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(BluetoothMusicManager.TAG, "onService Disconnected: " + componentName);
            BluetoothMusicManager.this.mState = 1;
            BluetoothMusicManager.this.notifyClientServiceStatus(BluetoothMusicManager.this.mState);
            BluetoothMusicManager.this.mRemoteService = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(BluetoothMusicManager.TAG, "onService Connected");
            BluetoothMusicManager.this.mRemoteService = IBluetoothServiceAIDL.Stub.asInterface(iBinder);
            if (BluetoothMusicManager.this.mRemoteService != null && BluetoothMusicManager.this.mServiceAIDLMusicListener != null) {
                try {
                    BluetoothMusicManager.this.mRemoteService.registerListener((IBinder) BluetoothMusicManager.this.mServiceAIDLMusicListener, 2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            BluetoothMusicManager.this.mState = 3;
            BluetoothMusicManager.this.notifyClientServiceStatus(BluetoothMusicManager.this.mState);
        }
    };
    private IBluetoothServiceAIDLMusicListener mServiceAIDLMusicListener = new IBluetoothServiceAIDLMusicListener.Stub() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1
        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onConnectA2DP() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onConnectA2DP();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onConnectA2DP exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onDisconnectA2DP() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onDisconnectA2DP();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onDisconnectA2DP exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onGetA2DPConnectionState() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onGetA2DPConnectionState();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetA2DPConnectionState exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onPlay() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onPlay();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onPlay exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onPause() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onPause();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onPause exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onGetMusicStatus() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onGetMusicStatus();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetMusicStatus exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onStopMusic() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onStopMusic();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onStopMusic exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onNextMusic() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onNextMusic();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onNextMusic exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onPreviousMusic() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onPreviousMusic();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onPreviousMusic exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onOpenA2dpStream() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onOpenA2dpStream();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onOpenA2dpStream exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public int onCloseA2dpStream() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener == null) {
                return -1005;
            }
            try {
                return BluetoothMusicManager.this.mBtMusicListener.onCloseA2dpStream();
            } catch (Exception e) {
                BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.11
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onCloseA2dpStream exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
        public void onGetFlyMediaInfoList() throws RemoteException {
            if (BluetoothMusicManager.this.mBtMusicListener != null) {
                try {
                    BluetoothMusicManager.this.mBtMusicListener.onGetFlyMediaInfoList();
                } catch (Exception e) {
                    BluetoothMusicManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.bluetooth.util.BluetoothMusicManager.1.12
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onGetFlyMediaInfoList exception", e);
                        }
                    });
                }
            }
        }
    };

    private BluetoothMusicManager() {
    }

    public static BluetoothMusicManager registerListener(Context context, Object obj) {
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
            instance = new BluetoothMusicManager();
        }
        instance.registerListenerLocal(obj, 2);
        instance.serviceCheck();
        return instance;
    }

    public static int unRegisterListener(Object obj) {
        if (obj == null) {
            Log.e(TAG, "unRegisterListener listener is null !!!");
            return -1002;
        }
        if (instance != null) {
            return instance.unRegisterListenerLocal(obj, 2);
        }
        return -1003;
    }

    private int registerListenerLocal(Object obj, int i) {
        int i2;
        if (this.mBtMusicListener == null || !this.mBtMusicListener.equals(obj)) {
            try {
                this.mBtMusicListener = (IBluetoothMusicListener) obj;
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
                int registerListener = this.mRemoteService.registerListener((IBinder) this.mServiceAIDLMusicListener, i);
                try {
                    this.mBtMusicListener.onServiceStatusChanged(3);
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
        if (this.mBtMusicListener == null || !this.mBtMusicListener.equals(obj)) {
            return -1003;
        }
        this.mBtMusicListener = null;
        try {
            i2 = this.mRemoteService.unregisterListener((IBinder) this.mServiceAIDLMusicListener, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            i2 = serviceCheck;
        }
        Log.d(TAG, "unRegisterListenerLocal result:" + i2);
        return i2;
    }

    public void notifyMusicStart() {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyMusicStart: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyMusicStart();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyMusicStop() {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyMusicStop: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyMusicStop();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyA2DPConnectStatus(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyA2DPConnectStatus: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyA2DPConnectStatus(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyMediaInfo(FlyMediaInfo flyMediaInfo) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyMediaInfo: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyMediaInfo(flyMediaInfo);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyAvrcpPosition(long j) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyAvrcpPosition: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyAvrcpPosition(j);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyFlyMediaInfoList(List<FlyMediaInfo> list) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyMediaInfo: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyFlyMediaInfoList(list);
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
        if (this.mBtMusicListener != null) {
            this.mBtMusicListener.onServiceStatusChanged(i);
        }
    }
}
