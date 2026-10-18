package com.tencent.tai.pal.extensible;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IExtensibleListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    void a(Bundle bundle) throws RemoteException;

    /* compiled from: IExtensibleListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.extensible.IExtensibleListenerAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.extensible.IExtensibleListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0023a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString("com.tencent.tai.pal.extensible.IExtensibleListenerAidl");
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface("com.tencent.tai.pal.extensible.IExtensibleListenerAidl");
            a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        /* compiled from: IExtensibleListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.extensible.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0023a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f117a;

            C0023a(IBinder iBinder) {
                this.f117a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f117a;
            }

            @Override // com.tencent.tai.pal.extensible.c
            public void a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.extensible.IExtensibleListenerAidl");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f117a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
