package com.tencent.taes.remote.api.infodispatcher;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IInfoDispatchService extends IInterface {
    String getAppEventStateCache() throws RemoteException;

    String getStartEventCache() throws RemoteException;

    void registerInfoDispatchListener(IInfoDispatchListener iInfoDispatchListener) throws RemoteException;

    void sendCacheMessage(String str, String str2) throws RemoteException;

    void sendMessage(String str, String str2) throws RemoteException;

    void unregisterInfoDispatchListener(IInfoDispatchListener iInfoDispatchListener) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IInfoDispatchService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService";
        static final int TRANSACTION_getAppEventStateCache = 5;
        static final int TRANSACTION_getStartEventCache = 4;
        static final int TRANSACTION_registerInfoDispatchListener = 2;
        static final int TRANSACTION_sendCacheMessage = 6;
        static final int TRANSACTION_sendMessage = 1;
        static final int TRANSACTION_unregisterInfoDispatchListener = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInfoDispatchService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IInfoDispatchService)) {
                return (IInfoDispatchService) queryLocalInterface;
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
                    sendMessage(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerInfoDispatchListener(IInfoDispatchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterInfoDispatchListener(IInfoDispatchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String startEventCache = getStartEventCache();
                    parcel2.writeNoException();
                    parcel2.writeString(startEventCache);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String appEventStateCache = getAppEventStateCache();
                    parcel2.writeNoException();
                    parcel2.writeString(appEventStateCache);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCacheMessage(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IInfoDispatchService {
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

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public void sendMessage(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public void registerInfoDispatchListener(IInfoDispatchListener iInfoDispatchListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iInfoDispatchListener != null ? iInfoDispatchListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public void unregisterInfoDispatchListener(IInfoDispatchListener iInfoDispatchListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iInfoDispatchListener != null ? iInfoDispatchListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public String getStartEventCache() throws RemoteException {
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

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public String getAppEventStateCache() throws RemoteException {
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

            @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService
            public void sendCacheMessage(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
