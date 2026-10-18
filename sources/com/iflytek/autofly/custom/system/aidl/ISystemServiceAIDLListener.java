package com.iflytek.autofly.custom.system.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ISystemServiceAIDLListener extends IInterface {
    int onGetCarConfig(String str) throws RemoteException;

    String onGetUUID() throws RemoteException;

    String onGetVNCode() throws RemoteException;

    int onGetVehicleState(String str) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements ISystemServiceAIDLListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener";
        static final int TRANSACTION_onGetCarConfig = 2;
        static final int TRANSACTION_onGetUUID = 3;
        static final int TRANSACTION_onGetVNCode = 1;
        static final int TRANSACTION_onGetVehicleState = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISystemServiceAIDLListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISystemServiceAIDLListener)) {
                return (ISystemServiceAIDLListener) queryLocalInterface;
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
                    String onGetVNCode = onGetVNCode();
                    parcel2.writeNoException();
                    parcel2.writeString(onGetVNCode);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetCarConfig = onGetCarConfig(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetCarConfig);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String onGetUUID = onGetUUID();
                    parcel2.writeNoException();
                    parcel2.writeString(onGetUUID);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetVehicleState = onGetVehicleState(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetVehicleState);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements ISystemServiceAIDLListener {
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

            @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
            public String onGetVNCode() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
            public int onGetCarConfig(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
            public String onGetUUID() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.system.aidl.ISystemServiceAIDLListener
            public int onGetVehicleState(String str) throws RemoteException {
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
        }
    }
}
