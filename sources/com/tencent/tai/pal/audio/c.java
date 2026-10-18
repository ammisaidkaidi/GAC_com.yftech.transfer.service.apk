package com.tencent.tai.pal.audio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IAudioFocusDispatcherAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface c extends IInterface {
    void a(int i, String str) throws RemoteException;

    /* compiled from: IAudioFocusDispatcherAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.audio.IAudioFocusDispatcherAidl");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.audio.IAudioFocusDispatcherAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0016a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioFocusDispatcherAidl");
                a(parcel.readInt(), parcel.readString());
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.audio.IAudioFocusDispatcherAidl");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* compiled from: IAudioFocusDispatcherAidl.java */
        /* renamed from: com.tencent.tai.pal.audio.c$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0016a implements c {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f55a;

            C0016a(IBinder iBinder) {
                this.f55a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f55a;
            }

            @Override // com.tencent.tai.pal.audio.c
            public void a(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioFocusDispatcherAidl");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f55a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
