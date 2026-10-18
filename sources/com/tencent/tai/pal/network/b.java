package com.tencent.tai.pal.network;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IOnActiveNetworkTypeChangeListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    void a(int i) throws RemoteException;

    /* compiled from: IOnActiveNetworkTypeChangeListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.network.IOnActiveNetworkTypeChangeListenerAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.network.IOnActiveNetworkTypeChangeListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0031a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.network.IOnActiveNetworkTypeChangeListenerAidl");
                a(parcel.readInt());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.network.IOnActiveNetworkTypeChangeListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IOnActiveNetworkTypeChangeListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.network.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0031a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f129a;

            C0031a(IBinder iBinder) {
                this.f129a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f129a;
            }

            @Override // com.tencent.tai.pal.network.b
            public void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.network.IOnActiveNetworkTypeChangeListenerAidl");
                    obtain.writeInt(i);
                    this.f129a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
