package com.yftech.hicar.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yftech.hicar.sdk.IHiCarStateCallBack;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IHiCarInterface extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Default implements IHiCarInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public int callState() throws RemoteException {
            return 0;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void callStateChange(int i) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean callSwitch(boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public ConnectStateEntity connectState() throws RemoteException {
            return null;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void connectStateChange(boolean z) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean deleteDevice(String str) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void deviceListChange() throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean disConnectDevice(boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean enableUSB(boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public List<HiCarDeviceEntity> getDeviceList() throws RemoteException {
            return null;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void initSuccess() throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean isInitSuccess() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean isVoiceWakeUp() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean mainPageSwitch(String str) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean mediaSwitch(boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean nextMedia() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean previousMedia() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void registerCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean requestNewConnect() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean requestReConnect(String str) throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean supportWireless() throws RemoteException {
            return false;
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void unregisterCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public void voiceStateChange(boolean z) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarInterface
        public boolean voiceSwitch(boolean z) throws RemoteException {
            return false;
        }
    }

    int callState() throws RemoteException;

    void callStateChange(int i) throws RemoteException;

    boolean callSwitch(boolean z) throws RemoteException;

    ConnectStateEntity connectState() throws RemoteException;

    void connectStateChange(boolean z) throws RemoteException;

    boolean deleteDevice(String str) throws RemoteException;

    void deviceListChange() throws RemoteException;

    boolean disConnectDevice(boolean z) throws RemoteException;

    boolean enableUSB(boolean z) throws RemoteException;

    List<HiCarDeviceEntity> getDeviceList() throws RemoteException;

    void initSuccess() throws RemoteException;

    boolean isInitSuccess() throws RemoteException;

    boolean isVoiceWakeUp() throws RemoteException;

    boolean mainPageSwitch(String str) throws RemoteException;

    boolean mediaSwitch(boolean z) throws RemoteException;

    boolean nextMedia() throws RemoteException;

    boolean previousMedia() throws RemoteException;

    void registerCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException;

    boolean requestNewConnect() throws RemoteException;

    boolean requestReConnect(String str) throws RemoteException;

    boolean supportWireless() throws RemoteException;

    void unregisterCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException;

    void voiceStateChange(boolean z) throws RemoteException;

    boolean voiceSwitch(boolean z) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IHiCarInterface {
        private static final String DESCRIPTOR = "com.yftech.hicar.sdk.IHiCarInterface";
        static final int TRANSACTION_callState = 3;
        static final int TRANSACTION_callStateChange = 19;
        static final int TRANSACTION_callSwitch = 13;
        static final int TRANSACTION_connectState = 2;
        static final int TRANSACTION_connectStateChange = 18;
        static final int TRANSACTION_deleteDevice = 6;
        static final int TRANSACTION_deviceListChange = 21;
        static final int TRANSACTION_disConnectDevice = 7;
        static final int TRANSACTION_enableUSB = 8;
        static final int TRANSACTION_getDeviceList = 4;
        static final int TRANSACTION_initSuccess = 17;
        static final int TRANSACTION_isInitSuccess = 1;
        static final int TRANSACTION_isVoiceWakeUp = 5;
        static final int TRANSACTION_mainPageSwitch = 14;
        static final int TRANSACTION_mediaSwitch = 9;
        static final int TRANSACTION_nextMedia = 11;
        static final int TRANSACTION_previousMedia = 10;
        static final int TRANSACTION_registerCallBack = 15;
        static final int TRANSACTION_requestNewConnect = 24;
        static final int TRANSACTION_requestReConnect = 23;
        static final int TRANSACTION_supportWireless = 22;
        static final int TRANSACTION_unregisterCallBack = 16;
        static final int TRANSACTION_voiceStateChange = 20;
        static final int TRANSACTION_voiceSwitch = 12;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHiCarInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IHiCarInterface)) {
                return (IHiCarInterface) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isInitSuccess = isInitSuccess();
                    parcel2.writeNoException();
                    parcel2.writeInt(isInitSuccess ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    ConnectStateEntity connectState = connectState();
                    parcel2.writeNoException();
                    if (connectState != null) {
                        parcel2.writeInt(1);
                        connectState.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int callState = callState();
                    parcel2.writeNoException();
                    parcel2.writeInt(callState);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<HiCarDeviceEntity> deviceList = getDeviceList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(deviceList);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isVoiceWakeUp = isVoiceWakeUp();
                    parcel2.writeNoException();
                    parcel2.writeInt(isVoiceWakeUp ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean deleteDevice = deleteDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(deleteDevice ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean disConnectDevice = disConnectDevice(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(disConnectDevice ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean enableUSB = enableUSB(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(enableUSB ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean mediaSwitch = mediaSwitch(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(mediaSwitch ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean previousMedia = previousMedia();
                    parcel2.writeNoException();
                    parcel2.writeInt(previousMedia ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean nextMedia = nextMedia();
                    parcel2.writeNoException();
                    parcel2.writeInt(nextMedia ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean voiceSwitch = voiceSwitch(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceSwitch ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean callSwitch = callSwitch(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(callSwitch ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean mainPageSwitch = mainPageSwitch(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(mainPageSwitch ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallBack(IHiCarStateCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallBack(IHiCarStateCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    initSuccess();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    connectStateChange(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    callStateChange(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    voiceStateChange(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    deviceListChange();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean supportWireless = supportWireless();
                    parcel2.writeNoException();
                    parcel2.writeInt(supportWireless ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean requestReConnect = requestReConnect(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(requestReConnect ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean requestNewConnect = requestNewConnect();
                    parcel2.writeNoException();
                    parcel2.writeInt(requestNewConnect ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class Proxy implements IHiCarInterface {
            public static IHiCarInterface sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean isInitSuccess() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isInitSuccess();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public ConnectStateEntity connectState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().connectState();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ConnectStateEntity.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public int callState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().callState();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public List<HiCarDeviceEntity> getDeviceList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDeviceList();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(HiCarDeviceEntity.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean isVoiceWakeUp() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isVoiceWakeUp();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean deleteDevice(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().deleteDevice(str);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean disConnectDevice(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().disConnectDevice(z);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean enableUSB(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().enableUSB(z);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean mediaSwitch(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(9, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mediaSwitch(z);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean previousMedia() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().previousMedia();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean nextMedia() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().nextMedia();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean voiceSwitch(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(12, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().voiceSwitch(z);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean callSwitch(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(13, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().callSwitch(z);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean mainPageSwitch(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.mRemote.transact(14, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mainPageSwitch(str);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void registerCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iHiCarStateCallBack != null ? iHiCarStateCallBack.asBinder() : null);
                    if (!this.mRemote.transact(15, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallBack(iHiCarStateCallBack);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void unregisterCallBack(IHiCarStateCallBack iHiCarStateCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iHiCarStateCallBack != null ? iHiCarStateCallBack.asBinder() : null);
                    if (!this.mRemote.transact(16, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallBack(iHiCarStateCallBack);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void initSuccess() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().initSuccess();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void connectStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(18, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().connectStateChange(z);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void callStateChange(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (!this.mRemote.transact(19, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().callStateChange(i);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void voiceStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(20, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().voiceStateChange(z);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public void deviceListChange() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(21, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().deviceListChange();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean supportWireless() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().supportWireless();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean requestReConnect(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.mRemote.transact(23, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestReConnect(str);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarInterface
            public boolean requestNewConnect() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(24, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestNewConnect();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IHiCarInterface iHiCarInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHiCarInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHiCarInterface;
            return true;
        }

        public static IHiCarInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
