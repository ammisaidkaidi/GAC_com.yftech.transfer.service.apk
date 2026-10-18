package com.tencent.tai.pal.ins;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IInsInfoListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    void a(float f, float f2, float f3, float f4, int i, long j) throws RemoteException;

    void a(float f, float f2, float f3, int i, long j) throws RemoteException;

    void a(float f, int i, long j) throws RemoteException;

    /* compiled from: IInsInfoListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.ins.IInsInfoListenerAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0028a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    a(parcel.readFloat(), parcel.readInt(), parcel.readLong());
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    a(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt(), parcel.readLong());
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    a(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt(), parcel.readLong());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IInsInfoListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.ins.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0028a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f124a;

            C0028a(IBinder iBinder) {
                this.f124a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f124a;
            }

            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    obtain.writeFloat(f);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.f124a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, float f2, float f3, float f4, int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    obtain.writeFloat(f);
                    obtain.writeFloat(f2);
                    obtain.writeFloat(f3);
                    obtain.writeFloat(f4);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.f124a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, float f2, float f3, int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.ins.IInsInfoListenerAidl");
                    obtain.writeFloat(f);
                    obtain.writeFloat(f2);
                    obtain.writeFloat(f3);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.f124a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
