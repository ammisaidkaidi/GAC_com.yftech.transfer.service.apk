package com.tencent.tai.pal.audio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IStreamVolumeListenerAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface d extends IInterface {
    void a(int i, int i2) throws RemoteException;

    void a(int i, boolean z) throws RemoteException;

    /* compiled from: IStreamVolumeListenerAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0017a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
                    a(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
                    a(parcel.readInt(), parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IStreamVolumeListenerAidl.java */
        /* renamed from: com.tencent.tai.pal.audio.d$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0017a implements d {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f56a;

            C0017a(IBinder iBinder) {
                this.f56a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f56a;
            }

            @Override // com.tencent.tai.pal.audio.d
            public void a(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    this.f56a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.d
            public void a(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IStreamVolumeListenerAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f56a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
