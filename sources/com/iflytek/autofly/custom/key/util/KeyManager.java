package com.iflytek.autofly.custom.key.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.KeyEvent;
import com.iflytek.autofly.custom.key.aidl.IKeyServiceAIDL;
import com.iflytek.autofly.custom.key.aidl.IKeyServiceAIDLListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class KeyManager {
    private static final String TAG = "KeyManager.Custom";
    private static KeyManager instance;
    private static Context mContext;
    private int mState = 1;
    private IKeyServiceAIDL mRemoteService = null;
    private IKeyListener mKeyListener = null;
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.key.util.KeyManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(KeyManager.TAG, "onService Connected");
            KeyManager.this.mRemoteService = IKeyServiceAIDL.Stub.asInterface(iBinder);
            if (KeyManager.this.mRemoteService != null) {
                try {
                    KeyManager.this.mRemoteService.registerListener((IBinder) KeyManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            KeyManager.this.mState = 3;
            KeyManager.this.notifyClientServiceStatus(KeyManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(KeyManager.TAG, "onService Disconnected: " + componentName);
            KeyManager.this.mState = 1;
            KeyManager.this.notifyClientServiceStatus(KeyManager.this.mState);
            KeyManager.this.mRemoteService = null;
        }
    };
    private IKeyServiceAIDLListener mServiceAIDLListener = new IKeyServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.key.util.KeyManager.1
    };

    private KeyManager() {
    }

    public static KeyManager getInstance(Context context) {
        if (context == null) {
            return null;
        }
        mContext = context;
        if (instance == null) {
            instance = new KeyManager();
        }
        instance.serviceCheck();
        Log.d(TAG, "getInstance");
        return instance;
    }

    public static KeyManager registerListener(Context context, Object obj) {
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
            instance = new KeyManager();
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
        if (this.mKeyListener != null && this.mKeyListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mKeyListener = (IKeyListener) obj;
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
        if (this.mKeyListener == null || !this.mKeyListener.equals(obj)) {
            return -1003;
        }
        this.mKeyListener = null;
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

    public void notifyKeyCode(KeyEvent keyEvent) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyKeyCode: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyKeyCode(keyEvent);
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
        intent.setAction(KeyServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomKeyService"));
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
        if (this.mKeyListener != null) {
            this.mKeyListener.onServiceStatusChanged(i);
        }
    }
}
