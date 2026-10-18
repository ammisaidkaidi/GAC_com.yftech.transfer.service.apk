package com.tencent.tai.pal.extensible;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.extensible.c;

/* compiled from: IExtensibleApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    Bundle a(Bundle bundle) throws RemoteException;

    void a(c cVar) throws RemoteException;

    void b(c cVar) throws RemoteException;

    /* compiled from: IExtensibleApiAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.extensible.IExtensibleApiAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0022a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    Bundle a2 = a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    a(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    b(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IExtensibleApiAidl.java */
        /* renamed from: com.tencent.tai.pal.extensible.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0022a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f116a;

            C0022a(IBinder iBinder) {
                this.f116a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f116a;
            }

            @Override // com.tencent.tai.pal.extensible.b
            public Bundle a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f116a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.extensible.b
            public void a(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f116a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.extensible.b
            public void b(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.extensible.IExtensibleApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f116a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
