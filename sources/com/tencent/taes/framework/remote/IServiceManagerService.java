package com.tencent.taes.framework.remote;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.framework.auth.IClientVerifyResult;
import com.tencent.taes.framework.listener.LoadListener;
import com.tencent.taes.framework.parser.ComponentConfigInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IServiceManagerService extends IInterface {
    Bundle callExtMethod(Bundle bundle) throws RemoteException;

    void dispatchEventToAllService(int i, Bundle bundle) throws RemoteException;

    List<ComponentConfigInfo> getConfigComponents() throws RemoteException;

    IBinder getIBinder(String str, String str2, Bundle bundle) throws RemoteException;

    Bundle getRemoteBinder(String str, String str2, Bundle bundle) throws RemoteException;

    String getRemoteVersion() throws RemoteException;

    String getServerHostPkgName(String str) throws RemoteException;

    void loadServiceComponent(ComponentConfigInfo componentConfigInfo, LoadListener loadListener) throws RemoteException;

    void unloadServiceComponent(ComponentConfigInfo componentConfigInfo) throws RemoteException;

    void verifyAppId(String str, String str2, String str3, String str4, IClientVerifyResult iClientVerifyResult) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IServiceManagerService {
        private static final String DESCRIPTOR = "com.tencent.taes.framework.remote.IServiceManagerService";
        static final int TRANSACTION_callExtMethod = 6;
        static final int TRANSACTION_dispatchEventToAllService = 5;
        static final int TRANSACTION_getConfigComponents = 2;
        static final int TRANSACTION_getIBinder = 4;
        static final int TRANSACTION_getRemoteBinder = 7;
        static final int TRANSACTION_getRemoteVersion = 3;
        static final int TRANSACTION_getServerHostPkgName = 10;
        static final int TRANSACTION_loadServiceComponent = 1;
        static final int TRANSACTION_unloadServiceComponent = 8;
        static final int TRANSACTION_verifyAppId = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IServiceManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IServiceManagerService)) {
                return (IServiceManagerService) queryLocalInterface;
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
                    loadServiceComponent(parcel.readInt() != 0 ? ComponentConfigInfo.CREATOR.createFromParcel(parcel) : null, LoadListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ComponentConfigInfo> configComponents = getConfigComponents();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(configComponents);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String remoteVersion = getRemoteVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(remoteVersion);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinder = getIBinder(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    dispatchEventToAllService(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle callExtMethod = callExtMethod(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (callExtMethod != null) {
                        parcel2.writeInt(1);
                        callExtMethod.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle remoteBinder = getRemoteBinder(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (remoteBinder != null) {
                        parcel2.writeInt(1);
                        remoteBinder.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unloadServiceComponent(parcel.readInt() != 0 ? ComponentConfigInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    verifyAppId(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), IClientVerifyResult.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String serverHostPkgName = getServerHostPkgName(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(serverHostPkgName);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IServiceManagerService {
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

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public void loadServiceComponent(ComponentConfigInfo componentConfigInfo, LoadListener loadListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentConfigInfo != null) {
                        obtain.writeInt(1);
                        componentConfigInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(loadListener != null ? loadListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public List<ComponentConfigInfo> getConfigComponents() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(ComponentConfigInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public String getRemoteVersion() throws RemoteException {
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

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public IBinder getIBinder(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public void dispatchEventToAllService(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
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

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public Bundle callExtMethod(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public Bundle getRemoteBinder(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public void unloadServiceComponent(ComponentConfigInfo componentConfigInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentConfigInfo != null) {
                        obtain.writeInt(1);
                        componentConfigInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public void verifyAppId(String str, String str2, String str3, String str4, IClientVerifyResult iClientVerifyResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeStrongBinder(iClientVerifyResult != null ? iClientVerifyResult.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.framework.remote.IServiceManagerService
            public String getServerHostPkgName(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
