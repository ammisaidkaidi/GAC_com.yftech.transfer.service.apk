package com.iflytek.autofly.custom.audio.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAudioServiceAIDL extends IInterface {
    void notifyAudioChannel(int i) throws RemoteException;

    int notifyChangeEnvironmentMode(int i) throws RemoteException;

    int notifyChangeFuncBeamForming(int i, int i2) throws RemoteException;

    int notifyChangeSampleRate(int i) throws RemoteException;

    int notifyEQModeChanged(int i) throws RemoteException;

    int notifyGetBeamForming() throws RemoteException;

    int notifyGetEnvironmentMode() throws RemoteException;

    int notifyGetFuncMode() throws RemoteException;

    int notifyGetSampleRate() throws RemoteException;

    int registerListener(IBinder iBinder) throws RemoteException;

    int unregisterListener(IBinder iBinder) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IAudioServiceAIDL {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL";
        static final int TRANSACTION_notifyAudioChannel = 3;
        static final int TRANSACTION_notifyChangeEnvironmentMode = 11;
        static final int TRANSACTION_notifyChangeFuncBeamForming = 7;
        static final int TRANSACTION_notifyChangeSampleRate = 8;
        static final int TRANSACTION_notifyEQModeChanged = 4;
        static final int TRANSACTION_notifyGetBeamForming = 6;
        static final int TRANSACTION_notifyGetEnvironmentMode = 10;
        static final int TRANSACTION_notifyGetFuncMode = 5;
        static final int TRANSACTION_notifyGetSampleRate = 9;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_unregisterListener = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioServiceAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAudioServiceAIDL)) {
                return (IAudioServiceAIDL) queryLocalInterface;
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
                    int registerListener = registerListener(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(registerListener);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int unregisterListener = unregisterListener(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(unregisterListener);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyAudioChannel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyEQModeChanged = notifyEQModeChanged(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyEQModeChanged);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyGetFuncMode = notifyGetFuncMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyGetFuncMode);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyGetBeamForming = notifyGetBeamForming();
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyGetBeamForming);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyChangeFuncBeamForming = notifyChangeFuncBeamForming(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyChangeFuncBeamForming);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyChangeSampleRate = notifyChangeSampleRate(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyChangeSampleRate);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyGetSampleRate = notifyGetSampleRate();
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyGetSampleRate);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyGetEnvironmentMode = notifyGetEnvironmentMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyGetEnvironmentMode);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyChangeEnvironmentMode = notifyChangeEnvironmentMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyChangeEnvironmentMode);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IAudioServiceAIDL {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int registerListener(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int unregisterListener(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public void notifyAudioChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyEQModeChanged(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyGetFuncMode() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyGetBeamForming() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyChangeFuncBeamForming(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyChangeSampleRate(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyGetSampleRate() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyGetEnvironmentMode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDL
            public int notifyChangeEnvironmentMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(11, obtain, obtain2, 0);
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
