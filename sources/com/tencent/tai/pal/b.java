package com.tencent.tai.pal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IPALServiceAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    IBinder a(String str, String str2) throws RemoteException;

    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    /* compiled from: IPALServiceAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.IPALServiceAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.IPALServiceAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0018a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.IPALServiceAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.IPALServiceAidl");
                    String a2 = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(a2);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.IPALServiceAidl");
                    String a3 = a();
                    parcel2.writeNoException();
                    parcel2.writeString(a3);
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.IPALServiceAidl");
                    IBinder a4 = a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a4);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IPALServiceAidl.java */
        /* renamed from: com.tencent.tai.pal.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0018a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f57a;

            C0018a(IBinder iBinder) {
                this.f57a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f57a;
            }

            @Override // com.tencent.tai.pal.b
            public String a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.IPALServiceAidl");
                    obtain.writeString(str);
                    this.f57a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.b
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.IPALServiceAidl");
                    this.f57a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.b
            public IBinder a(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.IPALServiceAidl");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f57a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
