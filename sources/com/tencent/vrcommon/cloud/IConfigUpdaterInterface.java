package com.tencent.vrcommon.cloud;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IConfigUpdaterInterface extends IInterface {
    void clearCurrentLocalChannel() throws RemoteException;

    void clearCurrentLocalVersion() throws RemoteException;

    String getCurrentLocalChannel() throws RemoteException;

    String getCurrentLocalVersion() throws RemoteException;

    String getFileName() throws RemoteException;

    void init() throws RemoteException;

    void onNewConfigAvailable(String str) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IConfigUpdaterInterface {
        private static final String DESCRIPTOR = "com.tencent.vrcommon.cloud.IConfigUpdaterInterface";
        static final int TRANSACTION_clearCurrentLocalChannel = 7;
        static final int TRANSACTION_clearCurrentLocalVersion = 6;
        static final int TRANSACTION_getCurrentLocalChannel = 5;
        static final int TRANSACTION_getCurrentLocalVersion = 4;
        static final int TRANSACTION_getFileName = 1;
        static final int TRANSACTION_init = 3;
        static final int TRANSACTION_onNewConfigAvailable = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IConfigUpdaterInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IConfigUpdaterInterface)) {
                return (IConfigUpdaterInterface) queryLocalInterface;
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
                    String fileName = getFileName();
                    parcel2.writeNoException();
                    parcel2.writeString(fileName);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNewConfigAvailable(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    init();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentLocalVersion = getCurrentLocalVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(currentLocalVersion);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentLocalChannel = getCurrentLocalChannel();
                    parcel2.writeNoException();
                    parcel2.writeString(currentLocalChannel);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearCurrentLocalVersion();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearCurrentLocalChannel();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IConfigUpdaterInterface {
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

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public String getFileName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public void onNewConfigAvailable(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public void init() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public String getCurrentLocalVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public String getCurrentLocalChannel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public void clearCurrentLocalVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrcommon.cloud.IConfigUpdaterInterface
            public void clearCurrentLocalChannel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
