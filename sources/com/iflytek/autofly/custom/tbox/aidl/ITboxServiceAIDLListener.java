package com.iflytek.autofly.custom.tbox.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ITboxServiceAIDLListener extends IInterface {
    int onGetTboxSignalStrength() throws RemoteException;

    boolean onHasTboxNetWork() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements ITboxServiceAIDLListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener";
        static final int TRANSACTION_onGetTboxSignalStrength = 1;
        static final int TRANSACTION_onHasTboxNetWork = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITboxServiceAIDLListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITboxServiceAIDLListener)) {
                return (ITboxServiceAIDLListener) queryLocalInterface;
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
                    int onGetTboxSignalStrength = onGetTboxSignalStrength();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetTboxSignalStrength);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onHasTboxNetWork = onHasTboxNetWork();
                    parcel2.writeNoException();
                    parcel2.writeInt(onHasTboxNetWork ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements ITboxServiceAIDLListener {
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

            @Override // com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener
            public int onGetTboxSignalStrength() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.tbox.aidl.ITboxServiceAIDLListener
            public boolean onHasTboxNetWork() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
