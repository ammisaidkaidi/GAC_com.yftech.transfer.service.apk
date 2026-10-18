package com.tencent.tai.pal.vehiclebasicinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.vehiclebasicinfo.a;
import com.tencent.tai.pal.vehiclebasicinfo.c;

/* compiled from: IVehicleBasicInfoApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    String a() throws RemoteException;

    String a(int i) throws RemoteException;

    void a(com.tencent.tai.pal.vehiclebasicinfo.a aVar) throws RemoteException;

    void a(c cVar) throws RemoteException;

    String b() throws RemoteException;

    void b(com.tencent.tai.pal.vehiclebasicinfo.a aVar) throws RemoteException;

    void b(c cVar) throws RemoteException;

    boolean b(int i) throws RemoteException;

    boolean d() throws RemoteException;

    float e() throws RemoteException;

    int f() throws RemoteException;

    int g() throws RemoteException;

    String h() throws RemoteException;

    String i() throws RemoteException;

    String j() throws RemoteException;

    /* compiled from: IVehicleBasicInfoApiAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0045a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    a(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    b(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeString(a2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String b = b();
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    boolean d = d();
                    parcel2.writeNoException();
                    parcel2.writeInt(d ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    float e = e();
                    parcel2.writeNoException();
                    parcel2.writeFloat(e);
                    return true;
                case 7:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    int f = f();
                    parcel2.writeNoException();
                    parcel2.writeInt(f);
                    return true;
                case 8:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    int g = g();
                    parcel2.writeNoException();
                    parcel2.writeInt(g);
                    return true;
                case 9:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String a3 = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(a3);
                    return true;
                case 10:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    boolean b2 = b(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(b2 ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    a(a.AbstractBinderC0043a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    b(a.AbstractBinderC0043a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String h = h();
                    parcel2.writeNoException();
                    parcel2.writeString(h);
                    return true;
                case 14:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String i3 = i();
                    parcel2.writeNoException();
                    parcel2.writeString(i3);
                    return true;
                case 15:
                    parcel.enforceInterface("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    String j = j();
                    parcel2.writeNoException();
                    parcel2.writeString(j);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IVehicleBasicInfoApiAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclebasicinfo.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0045a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f158a;

            C0045a(IBinder iBinder) {
                this.f158a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f158a;
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public void a(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f158a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public void b(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f158a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public boolean d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public float e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public int f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public int g() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeInt(i);
                    this.f158a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public boolean b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeInt(i);
                    this.f158a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public void a(com.tencent.tai.pal.vehiclebasicinfo.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f158a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public void b(com.tencent.tai.pal.vehiclebasicinfo.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f158a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String h() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String i() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.b
            public String j() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfoApiAidl");
                    this.f158a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
