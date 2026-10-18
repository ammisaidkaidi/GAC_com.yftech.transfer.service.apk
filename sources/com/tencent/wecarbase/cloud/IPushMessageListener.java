package com.tencent.wecarbase.cloud;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPushMessageListener extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IPushMessageListener {
        public static final String DESCRIPTOR = "com.tencent.wecarbase.cloud.IPushMessageListener";
        public static final int TRANSACTION_onMessageReceived = 1;

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IPushMessageListener {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.tencent.wecarbase.cloud.IPushMessageListener
            public void onMessageReceived(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, obtain2, 0);
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

        public static IPushMessageListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IPushMessageListener)) ? new Proxy(iBinder) : (IPushMessageListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onMessageReceived(parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void onMessageReceived(String str);
}
