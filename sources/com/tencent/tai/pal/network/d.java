package com.tencent.tai.pal.network;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IOnNetworkSignalStrengthChangeListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface d extends IInterface {
    void a(int i, float f) throws RemoteException;

    /* compiled from: IOnNetworkSignalStrengthChangeListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0033a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl");
                a(parcel.readInt(), parcel.readFloat());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IOnNetworkSignalStrengthChangeListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.network.d$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0033a implements d {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f131a;

            C0033a(IBinder iBinder) {
                this.f131a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f131a;
            }

            @Override // com.tencent.tai.pal.network.d
            public void a(int i, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeFloat(f);
                    this.f131a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
