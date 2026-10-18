package com.iflytek.autofly.custom.radio.util;

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
import com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDL;
import com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class RadioManager {
    private static final String TAG = "RadioManager.Custom";
    private static RadioManager instance;
    private static Context mContext;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private IRadioServiceAIDL mRemoteService = null;
    private IRadioListener mRadioListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(RadioManager.TAG, "onService Connected");
            RadioManager.this.mRemoteService = IRadioServiceAIDL.Stub.asInterface(iBinder);
            if (RadioManager.this.mRemoteService != null) {
                try {
                    RadioManager.this.mRemoteService.registerListener((IBinder) RadioManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            RadioManager.this.mState = 3;
            RadioManager.this.notifyClientServiceStatus(RadioManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(RadioManager.TAG, "onService Disconnected: " + componentName);
            RadioManager.this.mState = 1;
            RadioManager.this.notifyClientServiceStatus(RadioManager.this.mState);
            RadioManager.this.mRemoteService = null;
        }
    };
    private IRadioServiceAIDLListener mServiceAIDLListener = new IRadioServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1
        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onOpenDevice() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onOpenDevice();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onOpenDevice exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onCloseDevice() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onCloseDevice();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onCloseDevice exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onSetBand(String str) throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onSetBand(str);
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSetBand exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onScanRadio(String str) throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onScanRadio(str);
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onScanRadio exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onStopScan() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onStopScan();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onStopScan exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onStartPlay() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onStartPlay();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onStartPlay exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onStopPlay() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onStopPlay();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onStopPlay exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onScanNext() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onScanNext();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onScanNext exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onScanPrevious() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onScanPrevious();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onScanPrevious exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onSetFrequency(int i) throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onSetFrequency(i);
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSetFrequency exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onGetFrequency() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onGetFrequency();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.11
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetFrequency exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onGetBand() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onGetBand();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.12
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetBand exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onSwitchRadioMode(int i) throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onSwitchRadioMode(i);
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSwitchRadioMode exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onGetRadioMode() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onGetRadioMode();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.14
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetRadioMode exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public boolean onGetScanStatus() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return false;
            }
            try {
                return RadioManager.this.mRadioListener.onGetScanStatus();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.15
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetScanStatus exception", e);
                    }
                });
                return false;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int onGetSignalStrength() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return -1005;
            }
            try {
                return RadioManager.this.mRadioListener.onGetSignalStrength();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.16
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetSignalStrength exception", e);
                    }
                });
                return -1005;
            }
        }

        @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
        public int[] onGetRadioListInfo() throws RemoteException {
            if (RadioManager.this.mRadioListener == null) {
                return null;
            }
            try {
                return RadioManager.this.mRadioListener.onGetRadioListInfo();
            } catch (Exception e) {
                RadioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.radio.util.RadioManager.1.17
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetRadioListInfo exception", e);
                    }
                });
                return null;
            }
        }
    };

    private RadioManager() {
    }

    public static RadioManager registerListener(Context context, Object obj) {
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
            instance = new RadioManager();
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
        if (this.mRadioListener != null && this.mRadioListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mRadioListener = (IRadioListener) obj;
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
        if (this.mRadioListener == null || !this.mRadioListener.equals(obj)) {
            return -1003;
        }
        this.mRadioListener = null;
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

    public void notifyScanFrequency(int i, boolean z) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyScanFrequency: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyScanFrequency(i, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyStateChange(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyStateChange: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyStateChange(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyBandChange(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyBandChange: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyBandChange(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifyFrequencyChanged(int i) {
        Log.e(TAG, "notifyFrequencyChanged freq: " + i);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyFrequencyChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyFrequencyChanged(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void notifySignalStrengthChanged(int i) {
        Log.e(TAG, "notifySignalStrengthChanged freq: " + i);
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifySignalStrengthChanged: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifySignalStrengthChanged(i);
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
        intent.setAction(RadioServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomRadioService"));
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
        if (this.mRadioListener != null) {
            this.mRadioListener.onServiceStatusChanged(i);
        }
    }
}
