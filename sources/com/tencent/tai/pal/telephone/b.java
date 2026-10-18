package com.tencent.tai.pal.telephone;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: ITelCallbackAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    void a(int i, String str) throws RemoteException;

    void a(String str) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void a(boolean z, boolean z2) throws RemoteException;

    /* compiled from: ITelCallbackAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.telephone.ITelCallbackAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.telephone.ITelCallbackAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0041a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    a(parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    a(parcel.readInt(), parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    a(parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    a(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: ITelCallbackAidl.java */
        /* renamed from: com.tencent.tai.pal.telephone.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0041a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f150a;

            C0041a(IBinder iBinder) {
                this.f150a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f150a;
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    obtain.writeInt(z ? 1 : 0);
                    this.f150a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f150a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    obtain.writeString(str);
                    this.f150a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.telephone.b
            public void a(boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.telephone.ITelCallbackAidl");
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    this.f150a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
