package com.tencent.wecarspeech.vframework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IClientWrapper extends IInterface {
    String getAppId() throws RemoteException;

    String getAppName() throws RemoteException;

    long getClientState() throws RemoteException;

    long getClientType() throws RemoteException;

    String getCurrentMiniProgramName() throws RemoteException;

    long getLastOptTime() throws RemoteException;

    long getMediaStartTime() throws RemoteException;

    long getMediaStopTime() throws RemoteException;

    String getMiniProgramList() throws RemoteException;

    String getPackageName() throws RemoteException;

    boolean isClientType(long j) throws RemoteException;

    boolean isInFront() throws RemoteException;

    boolean isInNavi() throws RemoteException;

    boolean isPlaying() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IClientWrapper {
        private static final String DESCRIPTOR = "com.tencent.wecarspeech.vframework.IClientWrapper";
        static final int TRANSACTION_getAppId = 1;
        static final int TRANSACTION_getAppName = 3;
        static final int TRANSACTION_getClientState = 7;
        static final int TRANSACTION_getClientType = 10;
        static final int TRANSACTION_getCurrentMiniProgramName = 13;
        static final int TRANSACTION_getLastOptTime = 12;
        static final int TRANSACTION_getMediaStartTime = 8;
        static final int TRANSACTION_getMediaStopTime = 9;
        static final int TRANSACTION_getMiniProgramList = 14;
        static final int TRANSACTION_getPackageName = 2;
        static final int TRANSACTION_isClientType = 11;
        static final int TRANSACTION_isInFront = 4;
        static final int TRANSACTION_isInNavi = 6;
        static final int TRANSACTION_isPlaying = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IClientWrapper asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IClientWrapper)) {
                return (IClientWrapper) queryLocalInterface;
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
                    String appId = getAppId();
                    parcel2.writeNoException();
                    parcel2.writeString(appId);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String packageName = getPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(packageName);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String appName = getAppName();
                    parcel2.writeNoException();
                    parcel2.writeString(appName);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isInFront = isInFront();
                    parcel2.writeNoException();
                    parcel2.writeInt(isInFront ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isPlaying = isPlaying();
                    parcel2.writeNoException();
                    parcel2.writeInt(isPlaying ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isInNavi = isInNavi();
                    parcel2.writeNoException();
                    parcel2.writeInt(isInNavi ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    long clientState = getClientState();
                    parcel2.writeNoException();
                    parcel2.writeLong(clientState);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    long mediaStartTime = getMediaStartTime();
                    parcel2.writeNoException();
                    parcel2.writeLong(mediaStartTime);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    long mediaStopTime = getMediaStopTime();
                    parcel2.writeNoException();
                    parcel2.writeLong(mediaStopTime);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    long clientType = getClientType();
                    parcel2.writeNoException();
                    parcel2.writeLong(clientType);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isClientType = isClientType(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(isClientType ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    long lastOptTime = getLastOptTime();
                    parcel2.writeNoException();
                    parcel2.writeLong(lastOptTime);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentMiniProgramName = getCurrentMiniProgramName();
                    parcel2.writeNoException();
                    parcel2.writeString(currentMiniProgramName);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    String miniProgramList = getMiniProgramList();
                    parcel2.writeNoException();
                    parcel2.writeString(miniProgramList);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IClientWrapper {
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

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public String getAppId() throws RemoteException {
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

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public String getPackageName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public String getAppName() throws RemoteException {
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

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public boolean isInFront() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public boolean isPlaying() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public boolean isInNavi() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public long getClientState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public long getMediaStartTime() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public long getMediaStopTime() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public long getClientType() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public boolean isClientType(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public long getLastOptTime() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public String getCurrentMiniProgramName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.vframework.IClientWrapper
            public String getMiniProgramList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
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
