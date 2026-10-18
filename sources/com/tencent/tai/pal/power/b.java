package com.tencent.tai.pal.power;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IPowerLevelListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    void a(int i) throws RemoteException;

    /* compiled from: IPowerLevelListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.power.IPowerLevelListenerAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.power.IPowerLevelListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0036a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.power.IPowerLevelListenerAidl");
                a(parcel.readInt());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.power.IPowerLevelListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IPowerLevelListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.power.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0036a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f138a;

            C0036a(IBinder iBinder) {
                this.f138a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f138a;
            }

            @Override // com.tencent.tai.pal.power.b
            public void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.power.IPowerLevelListenerAidl");
                    obtain.writeInt(i);
                    this.f138a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
