package com.tencent.tai.pal.vehiclebasicinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IVehicleBasicInfoListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    void a(int i) throws RemoteException;

    void a(int i, boolean z) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void b(int i) throws RemoteException;

    void c(int i) throws RemoteException;

    /* compiled from: IVehicleBasicInfoListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0046a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    a(parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    b(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    a(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    a(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    c(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IVehicleBasicInfoListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclebasicinfo.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0046a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f159a;

            C0046a(IBinder iBinder) {
                this.f159a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f159a;
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    obtain.writeInt(z ? 1 : 0);
                    this.f159a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    obtain.writeInt(i);
                    this.f159a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    obtain.writeInt(i);
                    this.f159a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    this.f159a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoListenerAidl");
                    obtain.writeInt(i);
                    this.f159a.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
