package com.tencent.tai.pal.screen;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: ScreenApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a extends IInterface {
    int a() throws RemoteException;

    boolean a(int i, int i2) throws RemoteException;

    int b() throws RemoteException;

    int b(int i, int i2) throws RemoteException;

    boolean d() throws RemoteException;

    /* compiled from: ScreenApiAidl.java */
    /* renamed from: com.tencent.tai.pal.screen.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractBinderC0037a extends Binder implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public AbstractBinderC0037a() {
            attachInterface(this, "com.tencent.tai.pal.screen.ScreenApiAidl");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0038a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.screen.ScreenApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
                    int a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a2);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
                    int b = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b);
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
                    boolean a3 = a(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a3 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
                    boolean d = d();
                    parcel2.writeNoException();
                    parcel2.writeInt(d ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.screen.ScreenApiAidl");
                    int b2 = b(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(b2);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: ScreenApiAidl.java */
        /* renamed from: com.tencent.tai.pal.screen.a$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0038a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f142a;

            C0038a(IBinder iBinder) {
                this.f142a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f142a;
            }

            @Override // com.tencent.tai.pal.screen.a
            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.screen.ScreenApiAidl");
                    this.f142a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.screen.a
            public int b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.screen.ScreenApiAidl");
                    this.f142a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.screen.a
            public boolean a(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.screen.ScreenApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f142a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.screen.a
            public boolean d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.screen.ScreenApiAidl");
                    this.f142a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.screen.a
            public int b(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.screen.ScreenApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f142a.transact(5, obtain, obtain2, 0);
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
