package com.tencent.tai.pal.vehiclebasicinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: ISpeedListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {
    void a(float f) throws RemoteException;

    /* compiled from: ISpeedListenerAidl.java */
    /* renamed from: com.tencent.tai.pal.vehiclebasicinfo.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractBinderC0043a extends Binder implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public AbstractBinderC0043a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclebasicinfo.ISpeedListenerAidl");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclebasicinfo.ISpeedListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0044a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.ISpeedListenerAidl");
                a(parcel.readFloat());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclebasicinfo.ISpeedListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: ISpeedListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclebasicinfo.a$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0044a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f157a;

            C0044a(IBinder iBinder) {
                this.f157a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f157a;
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.a
            public void a(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.ISpeedListenerAidl");
                    obtain.writeFloat(f);
                    this.f157a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
