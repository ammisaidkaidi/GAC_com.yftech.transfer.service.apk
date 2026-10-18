package com.tencent.tai.pal.power;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.power.b;

/* compiled from: IPowerApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {
    int a() throws RemoteException;

    int a(int i) throws RemoteException;

    void a(b bVar) throws RemoteException;

    String b() throws RemoteException;

    void b(b bVar) throws RemoteException;

    /* compiled from: IPowerApiAidl.java */
    /* renamed from: com.tencent.tai.pal.power.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractBinderC0034a extends Binder implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public AbstractBinderC0034a() {
            attachInterface(this, "com.tencent.tai.pal.power.IPowerApiAidl");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.power.IPowerApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0035a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.power.IPowerApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.power.IPowerApiAidl");
                    a(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.power.IPowerApiAidl");
                    b(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.power.IPowerApiAidl");
                    int a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.power.IPowerApiAidl");
                    String b = b();
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.power.IPowerApiAidl");
                    int a3 = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IPowerApiAidl.java */
        /* renamed from: com.tencent.tai.pal.power.a$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0035a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f137a;

            C0035a(IBinder iBinder) {
                this.f137a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f137a;
            }

            @Override // com.tencent.tai.pal.power.a
            public void a(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerApiAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f137a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.power.a
            public void b(b bVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerApiAidl");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    this.f137a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.power.a
            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerApiAidl");
                    this.f137a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.power.a
            public String b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerApiAidl");
                    this.f137a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.power.a
            public int a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerApiAidl");
                    obtain.writeInt(i);
                    this.f137a.transact(5, obtain, obtain2, 0);
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
