package com.tencent.wecarspeech.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.wecarspeech.sdk.IRecorderCallbacklInterface;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IClientRecorder extends IInterface {
    int getBufferSize(int i) throws RemoteException;

    int getChannelNum() throws RemoteException;

    int getRunningStatus() throws RemoteException;

    int getTimeOfBuffer(int i) throws RemoteException;

    void init(IRecorderCallbacklInterface iRecorderCallbacklInterface) throws RemoteException;

    boolean isMutiModeSupported() throws RemoteException;

    boolean isNeedReduce() throws RemoteException;

    void startRecord(int i) throws RemoteException;

    void stopRecord() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IClientRecorder {
        private static final String DESCRIPTOR = "com.tencent.wecarspeech.sdk.IClientRecorder";
        static final int TRANSACTION_getBufferSize = 4;
        static final int TRANSACTION_getChannelNum = 8;
        static final int TRANSACTION_getRunningStatus = 6;
        static final int TRANSACTION_getTimeOfBuffer = 5;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_isMutiModeSupported = 7;
        static final int TRANSACTION_isNeedReduce = 9;
        static final int TRANSACTION_startRecord = 2;
        static final int TRANSACTION_stopRecord = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IClientRecorder asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IClientRecorder)) {
                return (IClientRecorder) queryLocalInterface;
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
                    init(IRecorderCallbacklInterface.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    startRecord(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopRecord();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int bufferSize = getBufferSize(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(bufferSize);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int timeOfBuffer = getTimeOfBuffer(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(timeOfBuffer);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int runningStatus = getRunningStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(runningStatus);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isMutiModeSupported = isMutiModeSupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(isMutiModeSupported ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int channelNum = getChannelNum();
                    parcel2.writeNoException();
                    parcel2.writeInt(channelNum);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isNeedReduce = isNeedReduce();
                    parcel2.writeNoException();
                    parcel2.writeInt(isNeedReduce ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IClientRecorder {
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

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public void init(IRecorderCallbacklInterface iRecorderCallbacklInterface) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iRecorderCallbacklInterface != null ? iRecorderCallbacklInterface.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public void startRecord(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public void stopRecord() throws RemoteException {
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

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public int getBufferSize(int i) throws RemoteException {
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

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public int getTimeOfBuffer(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public int getRunningStatus() throws RemoteException {
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

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public boolean isMutiModeSupported() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public int getChannelNum() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarspeech.sdk.IClientRecorder
            public boolean isNeedReduce() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
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
