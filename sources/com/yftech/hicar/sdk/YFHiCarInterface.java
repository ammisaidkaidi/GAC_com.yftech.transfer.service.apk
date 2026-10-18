package com.yftech.hicar.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.yftech.hicar.sdk.IHiCarInterface;
import com.yftech.hicar.sdk.IHiCarStateCallBack;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class YFHiCarInterface {
    public static final String HICAR_PACKAGE = "com.yftech.hicar";
    public static final String HICAR_SERVICE_ACTION = "com.yftech.hicar.HiCarService";
    private static final String TAG = "YFHiCarInterface";
    private IBindCallBack bindCallBack;
    private Set<IStateChange> changeList;
    IHiCarStateCallBack hiCarStateCallBack;
    private IHiCarInterface iHiCarInterface;
    private ServiceConnection serviceConnection;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Holder {
        public static final YFHiCarInterface INSTANCE = new YFHiCarInterface();
    }

    public static YFHiCarInterface getInstance() {
        return Holder.INSTANCE;
    }

    private YFHiCarInterface() {
        this.changeList = new HashSet();
        this.serviceConnection = new ServiceConnection() { // from class: com.yftech.hicar.sdk.YFHiCarInterface.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(YFHiCarInterface.TAG, "onServiceConnected");
                YFHiCarInterface.this.iHiCarInterface = IHiCarInterface.Stub.asInterface(iBinder);
                if (YFHiCarInterface.this.bindCallBack != null) {
                    YFHiCarInterface.this.bindCallBack.onServiceConnected(componentName, iBinder);
                }
                if (YFHiCarInterface.this.iHiCarInterface != null) {
                    try {
                        YFHiCarInterface.this.iHiCarInterface.registerCallBack(YFHiCarInterface.this.hiCarStateCallBack);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(YFHiCarInterface.TAG, "onServiceDisconnected");
                YFHiCarInterface.this.iHiCarInterface = null;
                if (YFHiCarInterface.this.bindCallBack != null) {
                    YFHiCarInterface.this.bindCallBack.onServiceDisconnected(componentName);
                }
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName componentName) {
                Log.d(YFHiCarInterface.TAG, "onBindingDied");
                if (YFHiCarInterface.this.bindCallBack != null) {
                    YFHiCarInterface.this.bindCallBack.onBindingDied(componentName);
                }
            }
        };
        this.hiCarStateCallBack = new IHiCarStateCallBack.Stub() { // from class: com.yftech.hicar.sdk.YFHiCarInterface.2
            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void initSuccess() throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver initSuccess");
                    iStateChange.initSuccess();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void connectStateChange(boolean z) throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver connectStateChange =" + z);
                    iStateChange.connectStateChange(z);
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void callStateChange(int i) throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver callStateChange =" + i);
                    iStateChange.callStateChange(i);
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void voiceStateChange(boolean z) throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver voiceStateChange =" + z);
                    iStateChange.voiceStateChange(z);
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void deviceListChange() throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver deviceListChange");
                    iStateChange.deviceListChange();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void reConnectStateChange(boolean z, String str) throws RemoteException {
                if (YFHiCarInterface.this.changeList.isEmpty()) {
                    return;
                }
                for (IStateChange iStateChange : YFHiCarInterface.this.changeList) {
                    Log.i(YFHiCarInterface.TAG, "receiver deviceListChange");
                    iStateChange.reConnectStateChange(z, str);
                }
            }
        };
    }

    public void bindService(Context context, IBindCallBack iBindCallBack) {
        Log.d(TAG, "bindService");
        this.bindCallBack = iBindCallBack;
        Intent intent = new Intent();
        intent.setAction(HICAR_SERVICE_ACTION);
        intent.setPackage("com.yftech.hicar");
        context.bindService(intent, this.serviceConnection, 65);
    }

    public void unBindService(Context context) {
        Log.d(TAG, "unBindService");
        if (this.iHiCarInterface != null) {
            try {
                this.iHiCarInterface.unregisterCallBack(this.hiCarStateCallBack);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        context.unbindService(this.serviceConnection);
    }

    public ConnectStateEntity connectState() {
        if (this.iHiCarInterface != null) {
            try {
                return this.iHiCarInterface.connectState();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return new ConnectStateEntity(false, "", 0);
    }

    public int callState() {
        if (this.iHiCarInterface == null) {
            return -1;
        }
        try {
            return this.iHiCarInterface.callState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<HiCarDeviceEntity> getDeviceList() {
        if (this.iHiCarInterface != null) {
            try {
                return this.iHiCarInterface.getDeviceList();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return new ArrayList();
    }

    public boolean isVoiceWakeUp() {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.isVoiceWakeUp();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteDevice(String str) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.deleteDevice(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean disConnectDevice(boolean z) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.disConnectDevice(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean enableUSB(boolean z) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.enableUSB(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean mediaSwitch(boolean z) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.mediaSwitch(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean previousMedia() {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.previousMedia();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean nextMedia() {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.nextMedia();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean voiceSwitch(boolean z) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.voiceSwitch(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean callSwitch(boolean z) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.callSwitch(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean mainPageSwitch(String str) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.mainPageSwitch(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void registerChangeListener(IStateChange iStateChange) {
        this.changeList.add(iStateChange);
    }

    public void unregisterChangeListener(IStateChange iStateChange) {
        if (this.changeList.contains(iStateChange)) {
            this.changeList.remove(iStateChange);
        }
    }

    public boolean supportWireless() {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.supportWireless();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean requestReConnect(String str) {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.requestReConnect(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean requestNewConnect() {
        if (this.iHiCarInterface == null) {
            return false;
        }
        try {
            return this.iHiCarInterface.requestNewConnect();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
