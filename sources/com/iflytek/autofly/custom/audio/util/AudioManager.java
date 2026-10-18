package com.iflytek.autofly.custom.audio.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.AudioManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.iflytek.autofly.custom.IflyAidlException;
import com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL;
import com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener;
import com.iflytek.autofly.custom.audio.aidl.ICustomAudioFocusDispatcher;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioManager {
    private static final String TAG = "AudioManager.Custom";
    private static AudioManager instance;
    private static Context mContext;
    private int mState = 1;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private IAudioServiceAIDL mRemoteService = null;
    private IAudioListener mAudioListener = null;
    private final ConcurrentHashMap<IBinder, CustomAudioFocusChangeListener> mCustomAudioFocusChangeListenerMap = new ConcurrentHashMap<>();
    private ServiceConnection mConnect = new ServiceConnection() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(AudioManager.TAG, "onService Connected |" + Thread.currentThread().getId());
            AudioManager.this.mRemoteService = IAudioServiceAIDL.Stub.asInterface(iBinder);
            if (AudioManager.this.mRemoteService != null) {
                try {
                    AudioManager.this.mRemoteService.registerListener((IBinder) AudioManager.this.mServiceAIDLListener);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            AudioManager.this.mState = 3;
            AudioManager.this.notifyClientServiceStatus(AudioManager.this.mState);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(AudioManager.TAG, "onService Disconnected: " + componentName);
            AudioManager.this.mState = 1;
            AudioManager.this.notifyClientServiceStatus(AudioManager.this.mState);
            AudioManager.this.mRemoteService = null;
        }
    };
    private IAudioServiceAIDLListener mServiceAIDLListener = new IAudioServiceAIDLListener.Stub() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1
        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onSwitchChannel(int i) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onSwitchChannel(i);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSwitchChannel exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onCloseChannel(int i) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onCloseChannel(i);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onCloseChannel exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onGetCurrentChannel() throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onGetCurrentChannel();
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetCurrentChannel exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public boolean onIsAudioFocusOccupy() throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return false;
            }
            try {
                return AudioManager.this.mAudioListener.onIsAudioFocusOccupy();
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onIsAudioFocusOccupy exception", e);
                    }
                });
                return false;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onGetEQMode() throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onGetEQMode();
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetEQMode exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onSetEQMode(int i) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onSetEQMode(i);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSetEQMode exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onRequestAudioFocus(IBinder iBinder, int i, int i2) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return 0;
            }
            try {
                CustomAudioFocusChangeListener customAudioFocusChangeListener = (CustomAudioFocusChangeListener) AudioManager.this.mCustomAudioFocusChangeListenerMap.get(iBinder);
                if (customAudioFocusChangeListener == null) {
                    customAudioFocusChangeListener = new CustomAudioFocusChangeListener(iBinder);
                    AudioManager.this.mCustomAudioFocusChangeListenerMap.put(iBinder, customAudioFocusChangeListener);
                }
                return AudioManager.this.mAudioListener.onRequestAudioFocus(customAudioFocusChangeListener, i, i2);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onRequestAudioFocus exception", e);
                    }
                });
                return 0;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onAbandonAudioFocus(IBinder iBinder) throws RemoteException {
            if (AudioManager.this.mAudioListener != null) {
                try {
                    CustomAudioFocusChangeListener customAudioFocusChangeListener = (CustomAudioFocusChangeListener) AudioManager.this.mCustomAudioFocusChangeListenerMap.remove(iBinder);
                    if (customAudioFocusChangeListener == null) {
                        return 0;
                    }
                    customAudioFocusChangeListener.customDispatcher.unlinkToDeath(customAudioFocusChangeListener.deathRecipient, 0);
                    return AudioManager.this.mAudioListener.onAbandonAudioFocus(customAudioFocusChangeListener);
                } catch (Exception e) {
                    AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.8
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IflyAidlException("onAbandonAudioFocus exception", e);
                        }
                    });
                }
            }
            return 0;
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onGetLastMusicSourceChannel() throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onGetLastMusicSourceChannel();
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetLastMusicSourceChannel exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onGetEQ(int i) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onGetEQ(i);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGetEQ exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onSetEQ(int i, int i2) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onSetEQ(i, i2);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.11
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSetEQ exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onGet3DSoundMode() throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onGet3DSoundMode();
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.12
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onGet3DSoundMode exception", e);
                    }
                });
                return -1003;
            }
        }

        @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
        public int onSet3DSoundMode(int i) throws RemoteException {
            if (AudioManager.this.mAudioListener == null) {
                return -1003;
            }
            try {
                return AudioManager.this.mAudioListener.onSet3DSoundMode(i);
            } catch (Exception e) {
                AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IflyAidlException("onSet3DSoundMode exception", e);
                    }
                });
                return -1003;
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    private class CustomAudioFocusChangeListener implements AudioManager.OnAudioFocusChangeListener {
        private IBinder customDispatcher;
        private IBinder.DeathRecipient deathRecipient;

        CustomAudioFocusChangeListener(IBinder iBinder) {
            this.customDispatcher = iBinder;
            this.deathRecipient = new IBinder.DeathRecipient() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.CustomAudioFocusChangeListener.1
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    if (AudioManager.this.mAudioListener != null) {
                        try {
                            CustomAudioFocusChangeListener customAudioFocusChangeListener = (CustomAudioFocusChangeListener) AudioManager.this.mCustomAudioFocusChangeListenerMap.remove(CustomAudioFocusChangeListener.this.customDispatcher);
                            if (customAudioFocusChangeListener == null) {
                                return;
                            }
                            CustomAudioFocusChangeListener.this.customDispatcher.unlinkToDeath(CustomAudioFocusChangeListener.this.deathRecipient, 0);
                            AudioManager.this.mAudioListener.onAbandonAudioFocus(customAudioFocusChangeListener);
                        } catch (Exception e) {
                            AudioManager.this.mMainHandler.post(new Runnable() { // from class: com.iflytek.autofly.custom.audio.util.AudioManager.CustomAudioFocusChangeListener.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    throw new IflyAidlException("onAbandonAudioFocus exception", e);
                                }
                            });
                        }
                    }
                }
            };
            try {
                this.customDispatcher.linkToDeath(this.deathRecipient, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            try {
                ICustomAudioFocusDispatcher.Stub.asInterface(this.customDispatcher).dispatchAudioFocusChange(i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private AudioManager() {
        initClient();
    }

    public static AudioManager registerListener(Context context, Object obj) {
        if (context == null) {
            Log.e(TAG, "registerListener context is null");
            return null;
        }
        if (obj == null) {
            Log.e(TAG, "registerListener listener object is null");
            return null;
        }
        mContext = context;
        if (instance == null) {
            instance = new AudioManager();
        }
        instance.registerListenerLocal(obj);
        instance.serviceCheck();
        return instance;
    }

    public static int unregisterListener(IAudioListener iAudioListener) {
        if (iAudioListener == null) {
            Log.e(TAG, "unregisterListener listener is null");
            return -1002;
        }
        if (instance != null) {
            return instance.unRegisterListenerLocal(iAudioListener);
        }
        return -1003;
    }

    private int registerListenerLocal(Object obj) {
        int i = -1006;
        if (this.mAudioListener != null && this.mAudioListener.equals(obj)) {
            i = -1007;
            Log.e(TAG, "ERROR REDUNDANCY LISTENER");
        } else {
            try {
                this.mAudioListener = (IAudioListener) obj;
                if (this.mRemoteService != null) {
                    try {
                        int registerListener = this.mRemoteService.registerListener((IBinder) this.mServiceAIDLListener);
                        try {
                            this.mState = 3;
                            notifyClientServiceStatus(this.mState);
                            i = registerListener;
                        } catch (RemoteException e) {
                            e = e;
                            i = registerListener;
                            Log.e(TAG, "registerListenerLocal error", e);
                            Log.d(TAG, "registerListenerLocal result:" + i);
                            return i;
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                    }
                }
            } catch (ClassCastException e3) {
                Log.e(TAG, "fatal error listener illegal", e3);
                return -1003;
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
        if (this.mAudioListener == null || !this.mAudioListener.equals(obj)) {
            return -1003;
        }
        this.mAudioListener = null;
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

    public void notifyAudioChannel(int i) {
        if (serviceCheck() != 0) {
            Log.e(TAG, "notifyAudioChannel: Service not bound");
        } else if (this.mRemoteService != null) {
            try {
                this.mRemoteService.notifyAudioChannel(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public int notifyGetFuncMode() {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyGetFuncMode: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyGetFuncMode();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyGetBeamForming() {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyGetBeamForming: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyGetBeamForming();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyChangeFuncBeamForming(int i, int i2) {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyChangeFuncBeamForming: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyChangeFuncBeamForming(i, i2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyChangeSampleRate(int i) {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyChangeSampleRate: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyChangeSampleRate(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyGetSampleRate() {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyGetSampleRate: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyGetSampleRate();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyGetEnvironmentMode() {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyGetEnvironmentMode: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyGetEnvironmentMode();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyChangeEnvironmentMode(int i) {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.d(TAG, "notifyChangeEnvironmentMode: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService != null) {
            try {
                return this.mRemoteService.notifyChangeEnvironmentMode(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return serviceCheck;
    }

    public int notifyEQModeChanged(int i) {
        int serviceCheck = serviceCheck();
        if (serviceCheck != 0) {
            Log.e(TAG, "notifyEQModeChanged: Service not bound");
            return serviceCheck;
        }
        if (this.mRemoteService == null) {
            return -1003;
        }
        try {
            return this.mRemoteService.notifyEQModeChanged(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1003;
        }
    }

    private int serviceCheck() {
        switch (this.mState) {
            case 1:
                Log.d(TAG, "serviceCheck SERVICE_AIDL_NOT_BOUND and init client return " + initClient());
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
        intent.setAction(AudioServiceCons.SERVICE_ACTION);
        intent.setComponent(new ComponentName("com.iflytek.autofly.platformservice", "com.iflytek.autofly.customservice.CustomAudioService"));
        boolean bindService = mContext.bindService(intent, this.mConnect, 1);
        this.mState = bindService ? 2 : 1;
        notifyClientServiceStatus(this.mState);
        Log.d(TAG, "bindService " + bindService);
        return bindService ? 0 : -1005;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyClientServiceStatus(int i) {
        Log.d(TAG, "notifyClientServiceStatus status: " + i);
        if (this.mAudioListener != null) {
            this.mAudioListener.onServiceStatusChanged(i);
        }
    }
}
