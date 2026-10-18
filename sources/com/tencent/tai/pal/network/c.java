package com.tencent.tai.pal.network;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IOnNetworkAvailabilityChangeListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    void a(boolean z) throws RemoteException;

    /* compiled from: IOnNetworkAvailabilityChangeListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.network.IOnNetworkAvailabilityChangeListenerAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.network.IOnNetworkAvailabilityChangeListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0032a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.network.IOnNetworkAvailabilityChangeListenerAidl");
                a(parcel.readInt() != 0);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.network.IOnNetworkAvailabilityChangeListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IOnNetworkAvailabilityChangeListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.network.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0032a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f130a;

            C0032a(IBinder iBinder) {
                this.f130a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f130a;
            }

            @Override // com.tencent.tai.pal.network.c
            public void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.network.IOnNetworkAvailabilityChangeListenerAidl");
                    obtain.writeInt(z ? 1 : 0);
                    this.f130a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
