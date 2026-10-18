package com.tencent.tai.pal.vehiclerichinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IDrivingControlStatusChangeListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {
    void a(int i) throws RemoteException;

    /* compiled from: IDrivingControlStatusChangeListenerAidl.java */
    /* renamed from: com.tencent.tai.pal.vehiclerichinfo.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractBinderC0047a extends Binder implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public AbstractBinderC0047a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclerichinfo.IDrivingControlStatusChangeListenerAidl");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclerichinfo.IDrivingControlStatusChangeListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0048a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IDrivingControlStatusChangeListenerAidl");
                a(parcel.readInt());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclerichinfo.IDrivingControlStatusChangeListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IDrivingControlStatusChangeListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclerichinfo.a$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0048a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f163a;

            C0048a(IBinder iBinder) {
                this.f163a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f163a;
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.a
            public void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IDrivingControlStatusChangeListenerAidl");
                    obtain.writeInt(i);
                    this.f163a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
