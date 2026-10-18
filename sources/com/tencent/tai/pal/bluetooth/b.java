package com.tencent.tai.pal.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.bluetooth.c;

/* compiled from: IBluetoothApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    int a() throws RemoteException;

    int a(boolean z) throws RemoteException;

    void a(c cVar) throws RemoteException;

    String b() throws RemoteException;

    void b(c cVar) throws RemoteException;

    String d() throws RemoteException;

    /* compiled from: IBluetoothApiAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0019a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    int a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a2);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    String b = b();
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    String d = d();
                    parcel2.writeNoException();
                    parcel2.writeString(d);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    a(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    b(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    int a3 = a(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(a3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IBluetoothApiAidl.java */
        /* renamed from: com.tencent.tai.pal.bluetooth.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0019a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f60a;

            C0019a(IBinder iBinder) {
                this.f60a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f60a;
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    this.f60a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public String b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    this.f60a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public String d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    this.f60a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public void a(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f60a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public void b(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f60a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.bluetooth.b
            public int a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothApiAidl");
                    obtain.writeInt(z ? 1 : 0);
                    this.f60a.transact(6, obtain, obtain2, 0);
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
