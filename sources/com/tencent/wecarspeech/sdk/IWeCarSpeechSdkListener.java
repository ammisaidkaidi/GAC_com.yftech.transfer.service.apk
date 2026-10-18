package com.tencent.wecarspeech.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarSpeechSdkListener extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IWeCarSpeechSdkListener {

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class a implements IWeCarSpeechSdkListener {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f170a;

            a(IBinder iBinder) {
                this.f170a = iBinder;
            }

            @Override // com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener
            public byte[] actionCallback(String str, String str2, byte[] bArr, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    this.f170a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f170a;
            }
        }

        public Stub() {
            attachInterface(this, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener");
        }

        public static IWeCarSpeechSdkListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IWeCarSpeechSdkListener)) ? new a(iBinder) : (IWeCarSpeechSdkListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener");
                return true;
            }
            parcel.enforceInterface("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener");
            byte[] actionCallback = actionCallback(parcel.readString(), parcel.readString(), parcel.createByteArray(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeByteArray(actionCallback);
            return true;
        }
    }

    byte[] actionCallback(String str, String str2, byte[] bArr, int i);
}
