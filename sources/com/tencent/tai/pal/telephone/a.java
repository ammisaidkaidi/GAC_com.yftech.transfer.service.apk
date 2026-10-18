package com.tencent.tai.pal.telephone;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.telephone.b;

/* compiled from: ITelApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {
    int a() throws RemoteException;

    int a(int i) throws RemoteException;

    int a(String str, String str2) throws RemoteException;

    void a(b bVar) throws RemoteException;

    int b() throws RemoteException;

    String b(int i) throws RemoteException;

    void b(b bVar) throws RemoteException;

    int d() throws RemoteException;

    int e() throws RemoteException;

    /* compiled from: ITelApiAidl.java */
    /* renamed from: com.tencent.tai.pal.telephone.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractBinderC0039a extends Binder implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public AbstractBinderC0039a() {
            attachInterface(this, "com.tencent.tai.pal.telephone.ITelApiAidl");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0040a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.telephone.ITelApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    a(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    b(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int a2 = a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int a3 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a3);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int b = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b);
                    return true;
                case 6:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int d = d();
                    parcel2.writeNoException();
                    parcel2.writeInt(d);
                    return true;
                case 7:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int e = e();
                    parcel2.writeNoException();
                    parcel2.writeInt(e);
                    return true;
                case 8:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    int a4 = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a4);
                    return true;
                case 9:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelApiAidl");
                    String b2 = b(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(b2);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: ITelApiAidl.java */
        /* renamed from: com.tencent.tai.pal.telephone.a$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0040a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f149a;

            C0040a(IBinder iBinder) {
                this.f149a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f149a;
            }

            @Override // com.tencent.tai.pal.telephone.a
            public void a(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f149a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public void b(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f149a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int a(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f149a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    this.f149a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    this.f149a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    this.f149a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    this.f149a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public int a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    obtain.writeInt(i);
                    this.f149a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.a
            public String b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelApiAidl");
                    obtain.writeInt(i);
                    this.f149a.transact(9, obtain, obtain2, 0);
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
