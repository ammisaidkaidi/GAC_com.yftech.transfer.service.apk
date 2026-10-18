package com.iflytek.autofly.custom.radio.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRadioServiceAIDLListener extends IInterface {
    int onCloseDevice() throws RemoteException;

    int onGetBand() throws RemoteException;

    int onGetFrequency() throws RemoteException;

    int[] onGetRadioListInfo() throws RemoteException;

    int onGetRadioMode() throws RemoteException;

    boolean onGetScanStatus() throws RemoteException;

    int onGetSignalStrength() throws RemoteException;

    int onOpenDevice() throws RemoteException;

    int onScanNext() throws RemoteException;

    int onScanPrevious() throws RemoteException;

    int onScanRadio(String str) throws RemoteException;

    int onSetBand(String str) throws RemoteException;

    int onSetFrequency(int i) throws RemoteException;

    int onStartPlay() throws RemoteException;

    int onStopPlay() throws RemoteException;

    int onStopScan() throws RemoteException;

    int onSwitchRadioMode(int i) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IRadioServiceAIDLListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener";
        static final int TRANSACTION_onCloseDevice = 2;
        static final int TRANSACTION_onGetBand = 12;
        static final int TRANSACTION_onGetFrequency = 11;
        static final int TRANSACTION_onGetRadioListInfo = 16;
        static final int TRANSACTION_onGetRadioMode = 14;
        static final int TRANSACTION_onGetScanStatus = 15;
        static final int TRANSACTION_onGetSignalStrength = 17;
        static final int TRANSACTION_onOpenDevice = 1;
        static final int TRANSACTION_onScanNext = 8;
        static final int TRANSACTION_onScanPrevious = 9;
        static final int TRANSACTION_onScanRadio = 4;
        static final int TRANSACTION_onSetBand = 3;
        static final int TRANSACTION_onSetFrequency = 10;
        static final int TRANSACTION_onStartPlay = 6;
        static final int TRANSACTION_onStopPlay = 7;
        static final int TRANSACTION_onStopScan = 5;
        static final int TRANSACTION_onSwitchRadioMode = 13;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRadioServiceAIDLListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRadioServiceAIDLListener)) {
                return (IRadioServiceAIDLListener) queryLocalInterface;
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
                    int onOpenDevice = onOpenDevice();
                    parcel2.writeNoException();
                    parcel2.writeInt(onOpenDevice);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onCloseDevice = onCloseDevice();
                    parcel2.writeNoException();
                    parcel2.writeInt(onCloseDevice);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSetBand = onSetBand(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSetBand);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onScanRadio = onScanRadio(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onScanRadio);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onStopScan = onStopScan();
                    parcel2.writeNoException();
                    parcel2.writeInt(onStopScan);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onStartPlay = onStartPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(onStartPlay);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onStopPlay = onStopPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(onStopPlay);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onScanNext = onScanNext();
                    parcel2.writeNoException();
                    parcel2.writeInt(onScanNext);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onScanPrevious = onScanPrevious();
                    parcel2.writeNoException();
                    parcel2.writeInt(onScanPrevious);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSetFrequency = onSetFrequency(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSetFrequency);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetFrequency = onGetFrequency();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetFrequency);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetBand = onGetBand();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetBand);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSwitchRadioMode = onSwitchRadioMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSwitchRadioMode);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetRadioMode = onGetRadioMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetRadioMode);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onGetScanStatus = onGetScanStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetScanStatus ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] onGetRadioListInfo = onGetRadioListInfo();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(onGetRadioListInfo);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetSignalStrength = onGetSignalStrength();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetSignalStrength);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IRadioServiceAIDLListener {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onOpenDevice() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onCloseDevice() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onSetBand(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onScanRadio(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onStopScan() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onStartPlay() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onStopPlay() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onScanNext() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onScanPrevious() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onSetFrequency(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onGetFrequency() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onGetBand() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onSwitchRadioMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onGetRadioMode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public boolean onGetScanStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int[] onGetRadioListInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createIntArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.radio.aidl.IRadioServiceAIDLListener
            public int onGetSignalStrength() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
