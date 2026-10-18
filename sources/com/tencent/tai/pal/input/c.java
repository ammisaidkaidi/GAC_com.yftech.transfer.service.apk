package com.tencent.tai.pal.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: ICabinKeyEventHandlerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    KeyFilter a() throws RemoteException;

    void a(CabinKeyEvent cabinKeyEvent) throws RemoteException;

    void b(CabinKeyEvent cabinKeyEvent) throws RemoteException;

    /* compiled from: ICabinKeyEventHandlerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0024a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    KeyFilter a2 = a();
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    a(parcel.readInt() != 0 ? CabinKeyEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    b(parcel.readInt() != 0 ? CabinKeyEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: ICabinKeyEventHandlerAidl.java */
        /* renamed from: com.tencent.tai.pal.input.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0024a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f121a;

            C0024a(IBinder iBinder) {
                this.f121a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f121a;
            }

            @Override // com.tencent.tai.pal.input.c
            public KeyFilter a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    this.f121a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? KeyFilter.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.input.c
            public void a(CabinKeyEvent cabinKeyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    if (cabinKeyEvent != null) {
                        obtain.writeInt(1);
                        cabinKeyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f121a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.input.c
            public void b(CabinKeyEvent cabinKeyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.input.ICabinKeyEventHandlerAidl");
                    if (cabinKeyEvent != null) {
                        obtain.writeInt(1);
                        cabinKeyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f121a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
