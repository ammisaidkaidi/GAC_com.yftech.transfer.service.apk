package com.tencent.tai.pal.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.input.c;

/* compiled from: ICabinKeyInputApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface d extends IInterface {
    void a(c cVar) throws RemoteException;

    void b(c cVar) throws RemoteException;

    /* compiled from: ICabinKeyInputApiAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0025a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
                    a(c.a.a(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
                    b(c.a.a(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: ICabinKeyInputApiAidl.java */
        /* renamed from: com.tencent.tai.pal.input.d$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0025a implements d {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f122a;

            C0025a(IBinder iBinder) {
                this.f122a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f122a;
            }

            @Override // com.tencent.tai.pal.input.d
            public void a(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f122a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.input.d
            public void b(c cVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.input.ICabinKeyInputApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f122a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
