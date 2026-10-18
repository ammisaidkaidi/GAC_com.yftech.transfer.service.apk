package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothServiceAIDLMusicListener extends IInterface {
    int onCloseA2dpStream() throws RemoteException;

    int onConnectA2DP() throws RemoteException;

    int onDisconnectA2DP() throws RemoteException;

    int onGetA2DPConnectionState() throws RemoteException;

    void onGetFlyMediaInfoList() throws RemoteException;

    int onGetMusicStatus() throws RemoteException;

    int onNextMusic() throws RemoteException;

    int onOpenA2dpStream() throws RemoteException;

    int onPause() throws RemoteException;

    int onPlay() throws RemoteException;

    int onPreviousMusic() throws RemoteException;

    int onStopMusic() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IBluetoothServiceAIDLMusicListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener";
        static final int TRANSACTION_onCloseA2dpStream = 11;
        static final int TRANSACTION_onConnectA2DP = 1;
        static final int TRANSACTION_onDisconnectA2DP = 2;
        static final int TRANSACTION_onGetA2DPConnectionState = 3;
        static final int TRANSACTION_onGetFlyMediaInfoList = 12;
        static final int TRANSACTION_onGetMusicStatus = 6;
        static final int TRANSACTION_onNextMusic = 8;
        static final int TRANSACTION_onOpenA2dpStream = 10;
        static final int TRANSACTION_onPause = 5;
        static final int TRANSACTION_onPlay = 4;
        static final int TRANSACTION_onPreviousMusic = 9;
        static final int TRANSACTION_onStopMusic = 7;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothServiceAIDLMusicListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IBluetoothServiceAIDLMusicListener)) {
                return (IBluetoothServiceAIDLMusicListener) queryLocalInterface;
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
                    int onConnectA2DP = onConnectA2DP();
                    parcel2.writeNoException();
                    parcel2.writeInt(onConnectA2DP);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onDisconnectA2DP = onDisconnectA2DP();
                    parcel2.writeNoException();
                    parcel2.writeInt(onDisconnectA2DP);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetA2DPConnectionState = onGetA2DPConnectionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetA2DPConnectionState);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onPlay = onPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(onPlay);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onPause = onPause();
                    parcel2.writeNoException();
                    parcel2.writeInt(onPause);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetMusicStatus = onGetMusicStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetMusicStatus);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onStopMusic = onStopMusic();
                    parcel2.writeNoException();
                    parcel2.writeInt(onStopMusic);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onNextMusic = onNextMusic();
                    parcel2.writeNoException();
                    parcel2.writeInt(onNextMusic);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onPreviousMusic = onPreviousMusic();
                    parcel2.writeNoException();
                    parcel2.writeInt(onPreviousMusic);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onOpenA2dpStream = onOpenA2dpStream();
                    parcel2.writeNoException();
                    parcel2.writeInt(onOpenA2dpStream);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onCloseA2dpStream = onCloseA2dpStream();
                    parcel2.writeNoException();
                    parcel2.writeInt(onCloseA2dpStream);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onGetFlyMediaInfoList();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IBluetoothServiceAIDLMusicListener {
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

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onConnectA2DP() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onDisconnectA2DP() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onGetA2DPConnectionState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onPlay() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onPause() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onGetMusicStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onStopMusic() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onNextMusic() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onPreviousMusic() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onOpenA2dpStream() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public int onCloseA2dpStream() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLMusicListener
            public void onGetFlyMediaInfoList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
