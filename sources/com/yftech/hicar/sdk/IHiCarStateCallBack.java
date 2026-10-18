package com.yftech.hicar.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IHiCarStateCallBack extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Default implements IHiCarStateCallBack {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void callStateChange(int i) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void connectStateChange(boolean z) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void deviceListChange() throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void initSuccess() throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void reConnectStateChange(boolean z, String str) throws RemoteException {
        }

        @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
        public void voiceStateChange(boolean z) throws RemoteException {
        }
    }

    void callStateChange(int i) throws RemoteException;

    void connectStateChange(boolean z) throws RemoteException;

    void deviceListChange() throws RemoteException;

    void initSuccess() throws RemoteException;

    void reConnectStateChange(boolean z, String str) throws RemoteException;

    void voiceStateChange(boolean z) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IHiCarStateCallBack {
        private static final String DESCRIPTOR = "com.yftech.hicar.sdk.IHiCarStateCallBack";
        static final int TRANSACTION_callStateChange = 3;
        static final int TRANSACTION_connectStateChange = 2;
        static final int TRANSACTION_deviceListChange = 5;
        static final int TRANSACTION_initSuccess = 1;
        static final int TRANSACTION_reConnectStateChange = 6;
        static final int TRANSACTION_voiceStateChange = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHiCarStateCallBack asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IHiCarStateCallBack)) {
                return (IHiCarStateCallBack) queryLocalInterface;
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
                    initSuccess();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    connectStateChange(parcel.readInt() != 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    callStateChange(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    voiceStateChange(parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    deviceListChange();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    reConnectStateChange(parcel.readInt() != 0, parcel.readString());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class Proxy implements IHiCarStateCallBack {
            public static IHiCarStateCallBack sDefaultImpl;
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

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void initSuccess() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().initSuccess();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void connectStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().connectStateChange(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void callStateChange(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(3, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().callStateChange(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void voiceStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(4, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().voiceStateChange(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void deviceListChange() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().deviceListChange();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.hicar.sdk.IHiCarStateCallBack
            public void reConnectStateChange(boolean z, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeString(str);
                    if (this.mRemote.transact(6, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().reConnectStateChange(z, str);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IHiCarStateCallBack iHiCarStateCallBack) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHiCarStateCallBack == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHiCarStateCallBack;
            return true;
        }

        public static IHiCarStateCallBack getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
