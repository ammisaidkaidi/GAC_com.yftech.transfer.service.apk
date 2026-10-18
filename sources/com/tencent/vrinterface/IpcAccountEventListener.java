package com.tencent.vrinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.vrcommon.account.VrAccount;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IpcAccountEventListener extends IInterface {
    void onWXAccountBind(VrAccount vrAccount) throws RemoteException;

    void onWXAccountUnbind(VrAccount vrAccount) throws RemoteException;

    void onWXAccountUpdate(VrAccount vrAccount, VrAccount vrAccount2) throws RemoteException;

    void onWeCarIdChanged(VrAccount vrAccount, VrAccount vrAccount2) throws RemoteException;

    void onWeCarIdRegistered(VrAccount vrAccount) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IpcAccountEventListener {
        private static final String DESCRIPTOR = "com.tencent.vrinterface.IpcAccountEventListener";
        static final int TRANSACTION_onWXAccountBind = 2;
        static final int TRANSACTION_onWXAccountUnbind = 3;
        static final int TRANSACTION_onWXAccountUpdate = 1;
        static final int TRANSACTION_onWeCarIdChanged = 5;
        static final int TRANSACTION_onWeCarIdRegistered = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IpcAccountEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IpcAccountEventListener)) {
                return (IpcAccountEventListener) queryLocalInterface;
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
                    onWXAccountUpdate(parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onWXAccountBind(parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onWXAccountUnbind(parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onWeCarIdRegistered(parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onWeCarIdChanged(parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? VrAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IpcAccountEventListener {
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

            @Override // com.tencent.vrinterface.IpcAccountEventListener
            public void onWXAccountUpdate(VrAccount vrAccount, VrAccount vrAccount2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vrAccount != null) {
                        obtain.writeInt(1);
                        vrAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (vrAccount2 != null) {
                        obtain.writeInt(1);
                        vrAccount2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IpcAccountEventListener
            public void onWXAccountBind(VrAccount vrAccount) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vrAccount != null) {
                        obtain.writeInt(1);
                        vrAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IpcAccountEventListener
            public void onWXAccountUnbind(VrAccount vrAccount) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vrAccount != null) {
                        obtain.writeInt(1);
                        vrAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IpcAccountEventListener
            public void onWeCarIdRegistered(VrAccount vrAccount) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vrAccount != null) {
                        obtain.writeInt(1);
                        vrAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.vrinterface.IpcAccountEventListener
            public void onWeCarIdChanged(VrAccount vrAccount, VrAccount vrAccount2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vrAccount != null) {
                        obtain.writeInt(1);
                        vrAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (vrAccount2 != null) {
                        obtain.writeInt(1);
                        vrAccount2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
