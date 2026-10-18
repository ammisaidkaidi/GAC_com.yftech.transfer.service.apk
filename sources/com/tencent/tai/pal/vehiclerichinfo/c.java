package com.tencent.tai.pal.vehiclerichinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.vehiclerichinfo.a;
import com.tencent.tai.pal.vehiclerichinfo.b;

/* compiled from: IVehicleRichInfoAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    String a() throws RemoteException;

    void a(com.tencent.tai.pal.vehiclerichinfo.a aVar) throws RemoteException;

    void a(b bVar) throws RemoteException;

    int b() throws RemoteException;

    void b(com.tencent.tai.pal.vehiclerichinfo.a aVar) throws RemoteException;

    void b(b bVar) throws RemoteException;

    /* compiled from: IVehicleRichInfoAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0050a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    a(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    b(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    String a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeString(a2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    a(a.AbstractBinderC0047a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    b(a.AbstractBinderC0047a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    int b = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IVehicleRichInfoAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclerichinfo.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0050a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f165a;

            C0050a(IBinder iBinder) {
                this.f165a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f165a;
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public void a(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f165a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public void b(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f165a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    this.f165a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public void a(com.tencent.tai.pal.vehiclerichinfo.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f165a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public void b(com.tencent.tai.pal.vehiclerichinfo.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f165a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.c
            public int b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl");
                    this.f165a.transact(6, obtain, obtain2, 0);
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
