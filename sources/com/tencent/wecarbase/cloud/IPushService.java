package com.tencent.wecarbase.cloud;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.tencent.wecarbase.cloud.IConnectCallback;
import com.tencent.wecarbase.cloud.IPushMessageListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPushService extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IPushService {
        public static final String DESCRIPTOR = "com.tencent.wecarbase.cloud.IPushService";
        public static final int TRANSACTION_addMessage = 4;
        public static final int TRANSACTION_pushInstant = 3;
        public static final int TRANSACTION_registerClient = 1;
        public static final int TRANSACTION_registerMessageListener = 2;

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IPushService {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.tencent.wecarbase.cloud.IPushService
            public void addMessage(String str, int i, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.tencent.wecarbase.cloud.IPushService
            public void pushInstant(int i) {
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

            @Override // com.tencent.wecarbase.cloud.IPushService
            public void registerClient(String str, String str2, IConnectCallback iConnectCallback) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iConnectCallback != null ? iConnectCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.cloud.IPushService
            public void registerMessageListener(String str, IPushMessageListener iPushMessageListener) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iPushMessageListener != null ? iPushMessageListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPushService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IPushService)) ? new Proxy(iBinder) : (IPushService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClient(parcel.readString(), parcel.readString(), IConnectCallback.Stub.asInterface(parcel.readStrongBinder()));
                    break;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMessageListener(parcel.readString(), IPushMessageListener.Stub.asInterface(parcel.readStrongBinder()));
                    break;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    pushInstant(parcel.readInt());
                    break;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    addMessage(parcel.readString(), parcel.readInt(), parcel.readLong());
                    break;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void addMessage(String str, int i, long j);

    void pushInstant(int i);

    void registerClient(String str, String str2, IConnectCallback iConnectCallback);

    void registerMessageListener(String str, IPushMessageListener iPushMessageListener);
}
