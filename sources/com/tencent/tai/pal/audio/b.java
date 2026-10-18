package com.tencent.tai.pal.audio;

import android.media.AudioAttributes;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tai.pal.audio.c;
import com.tencent.tai.pal.audio.d;

/* compiled from: IAudioApiAidl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends IInterface {
    int a(int i) throws RemoteException;

    int a(int i, int i2) throws RemoteException;

    int a(int i, int i2, int i3) throws RemoteException;

    int a(int i, int i2, c cVar, String str, String str2) throws RemoteException;

    int a(c cVar, String str) throws RemoteException;

    AudioAttributes a(int i, String str) throws RemoteException;

    void a(d dVar) throws RemoteException;

    boolean a() throws RemoteException;

    int b() throws RemoteException;

    int b(int i, int i2, int i3) throws RemoteException;

    int b(int i, int i2, c cVar, String str, String str2) throws RemoteException;

    int b(c cVar, String str) throws RemoteException;

    void b(int i, int i2) throws RemoteException;

    void b(d dVar) throws RemoteException;

    boolean b(int i) throws RemoteException;

    int c(int i) throws RemoteException;

    int c(int i, int i2) throws RemoteException;

    int c(int i, int i2, int i3) throws RemoteException;

    int d(int i) throws RemoteException;

    void d(int i, int i2) throws RemoteException;

    /* compiled from: IAudioApiAidl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a extends Binder implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public a() {
            attachInterface(this, "com.tencent.tai.pal.audio.IAudioApiAidl");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0015a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.tai.pal.audio.IAudioApiAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    a(d.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    b(d.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int a2 = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    boolean b = b(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(b ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    b(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int c = c(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(c);
                    return true;
                case 7:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int d = d(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(d);
                    return true;
                case 8:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    d(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int a3 = a(parcel.readInt(), parcel.readInt(), c.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a3);
                    return true;
                case 10:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int a4 = a(c.a.a(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a4);
                    return true;
                case 11:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int b2 = b(parcel.readInt(), parcel.readInt(), c.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(b2);
                    return true;
                case 12:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int b3 = b(c.a.a(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(b3);
                    return true;
                case 13:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int c2 = c(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(c2);
                    return true;
                case 14:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int a5 = a(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a5);
                    return true;
                case 15:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    boolean a6 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a6 ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int a7 = a(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(a7);
                    return true;
                case 17:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int b4 = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b4);
                    return true;
                case 18:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    AudioAttributes a8 = a(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (a8 != null) {
                        parcel2.writeInt(1);
                        a8.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 19:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int b5 = b(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(b5);
                    return true;
                case 20:
                    parcel.enforceInterface("com.tencent.tai.pal.audio.IAudioApiAidl");
                    int c3 = c(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(c3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IAudioApiAidl.java */
        /* renamed from: com.tencent.tai.pal.audio.b$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0015a implements b {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f54a;

            C0015a(IBinder iBinder) {
                this.f54a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f54a;
            }

            @Override // com.tencent.tai.pal.audio.b
            public void a(d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    this.f54a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public void b(d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    this.f54a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    this.f54a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public boolean b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    this.f54a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public void b(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f54a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    this.f54a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int d(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    this.f54a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public void d(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f54a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int a(int i, int i2, c cVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f54a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int a(c cVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    obtain.writeString(str);
                    this.f54a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int b(int i, int i2, c cVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f54a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int b(c cVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    obtain.writeString(str);
                    this.f54a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int c(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f54a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int a(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.f54a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public boolean a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    this.f54a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int a(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f54a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    this.f54a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public AudioAttributes a(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f54a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (AudioAttributes) AudioAttributes.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int b(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.f54a.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.tai.pal.audio.b
            public int c(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.tai.pal.audio.IAudioApiAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.f54a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
