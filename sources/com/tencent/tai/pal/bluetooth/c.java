package com.tencent.tai.pal.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IBluetoothListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    void a(int i, String str, String str2) throws RemoteException;

    /* compiled from: IBluetoothListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.bluetooth.IBluetoothListenerAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.bluetooth.IBluetoothListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0020a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.bluetooth.IBluetoothListenerAidl");
                a(parcel.readInt(), parcel.readString(), parcel.readString());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.bluetooth.IBluetoothListenerAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IBluetoothListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.bluetooth.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0020a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f61a;

            C0020a(IBinder iBinder) {
                this.f61a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f61a;
            }

            @Override // com.tencent.tai.pal.bluetooth.c
            public void a(int i, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.bluetooth.IBluetoothListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f61a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
