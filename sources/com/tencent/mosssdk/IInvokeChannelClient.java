package com.tencent.mosssdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.mosssdk.IInvokeChannelCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IInvokeChannelClient extends IInterface {
    void invoke(String str, String str2, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException;

    String invokeSync(String str, String str2) throws RemoteException;

    void register(String str, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException;

    void unregister(String str, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IInvokeChannelClient {
        private static final String DESCRIPTOR = "com.tencent.mosssdk.IInvokeChannelClient";
        static final int TRANSACTION_invoke = 1;
        static final int TRANSACTION_invokeSync = 2;
        static final int TRANSACTION_register = 3;
        static final int TRANSACTION_unregister = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInvokeChannelClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IInvokeChannelClient)) {
                return (IInvokeChannelClient) queryLocalInterface;
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
                    invoke(parcel.readString(), parcel.readString(), IInvokeChannelCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String invokeSync = invokeSync(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(invokeSync);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    register(parcel.readString(), IInvokeChannelCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregister(parcel.readString(), IInvokeChannelCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IInvokeChannelClient {
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

            @Override // com.tencent.mosssdk.IInvokeChannelClient
            public void invoke(String str, String str2, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iInvokeChannelCallback != null ? iInvokeChannelCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mosssdk.IInvokeChannelClient
            public String invokeSync(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mosssdk.IInvokeChannelClient
            public void register(String str, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iInvokeChannelCallback != null ? iInvokeChannelCallback.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mosssdk.IInvokeChannelClient
            public void unregister(String str, IInvokeChannelCallback iInvokeChannelCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iInvokeChannelCallback != null ? iInvokeChannelCallback.asBinder() : null);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
