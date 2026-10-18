package com.tencent.tai.pal.vehiclerichinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IDrivingSafetyDisclaimerListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    void a(String str) throws RemoteException;

    /* compiled from: IDrivingSafetyDisclaimerListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.vehiclerichinfo.IDrivingSafetyDisclaimerListenerAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.vehiclerichinfo.IDrivingSafetyDisclaimerListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0049a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.vehiclerichinfo.IDrivingSafetyDisclaimerListenerAidl");
                a(parcel.readString());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.vehiclerichinfo.IDrivingSafetyDisclaimerListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IDrivingSafetyDisclaimerListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.vehiclerichinfo.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0049a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f164a;

            C0049a(IBinder iBinder) {
                this.f164a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f164a;
            }

            @Override // com.tencent.tai.pal.vehiclerichinfo.b
            public void a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.vehiclerichinfo.IDrivingSafetyDisclaimerListenerAidl");
                    obtain.writeString(str);
                    this.f164a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
