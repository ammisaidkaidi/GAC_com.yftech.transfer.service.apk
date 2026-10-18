package com.iflytek.autofly.custom.audio.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAudioServiceAIDLListener extends IInterface {
    int onAbandonAudioFocus(IBinder iBinder) throws RemoteException;

    int onCloseChannel(int i) throws RemoteException;

    int onGet3DSoundMode() throws RemoteException;

    int onGetCurrentChannel() throws RemoteException;

    int onGetEQ(int i) throws RemoteException;

    int onGetEQMode() throws RemoteException;

    int onGetLastMusicSourceChannel() throws RemoteException;

    boolean onIsAudioFocusOccupy() throws RemoteException;

    int onRequestAudioFocus(IBinder iBinder, int i, int i2) throws RemoteException;

    int onSet3DSoundMode(int i) throws RemoteException;

    int onSetEQ(int i, int i2) throws RemoteException;

    int onSetEQMode(int i) throws RemoteException;

    int onSwitchChannel(int i) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IAudioServiceAIDLListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener";
        static final int TRANSACTION_onAbandonAudioFocus = 8;
        static final int TRANSACTION_onCloseChannel = 2;
        static final int TRANSACTION_onGet3DSoundMode = 12;
        static final int TRANSACTION_onGetCurrentChannel = 3;
        static final int TRANSACTION_onGetEQ = 10;
        static final int TRANSACTION_onGetEQMode = 5;
        static final int TRANSACTION_onGetLastMusicSourceChannel = 9;
        static final int TRANSACTION_onIsAudioFocusOccupy = 4;
        static final int TRANSACTION_onRequestAudioFocus = 7;
        static final int TRANSACTION_onSet3DSoundMode = 13;
        static final int TRANSACTION_onSetEQ = 11;
        static final int TRANSACTION_onSetEQMode = 6;
        static final int TRANSACTION_onSwitchChannel = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioServiceAIDLListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAudioServiceAIDLListener)) {
                return (IAudioServiceAIDLListener) queryLocalInterface;
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
                    int onSwitchChannel = onSwitchChannel(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSwitchChannel);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onCloseChannel = onCloseChannel(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onCloseChannel);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetCurrentChannel = onGetCurrentChannel();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetCurrentChannel);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onIsAudioFocusOccupy = onIsAudioFocusOccupy();
                    parcel2.writeNoException();
                    parcel2.writeInt(onIsAudioFocusOccupy ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetEQMode = onGetEQMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetEQMode);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSetEQMode = onSetEQMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSetEQMode);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onRequestAudioFocus = onRequestAudioFocus(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onRequestAudioFocus);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onAbandonAudioFocus = onAbandonAudioFocus(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(onAbandonAudioFocus);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetLastMusicSourceChannel = onGetLastMusicSourceChannel();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetLastMusicSourceChannel);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetEQ = onGetEQ(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetEQ);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSetEQ = onSetEQ(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSetEQ);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGet3DSoundMode = onGet3DSoundMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGet3DSoundMode);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSet3DSoundMode = onSet3DSoundMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSet3DSoundMode);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IAudioServiceAIDLListener {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onSwitchChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onCloseChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onGetCurrentChannel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public boolean onIsAudioFocusOccupy() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onGetEQMode() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onSetEQMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onRequestAudioFocus(IBinder iBinder, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onAbandonAudioFocus(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onGetLastMusicSourceChannel() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onGetEQ(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onSetEQ(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onGet3DSoundMode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener
            public int onSet3DSoundMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(13, obtain, obtain2, 0);
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
