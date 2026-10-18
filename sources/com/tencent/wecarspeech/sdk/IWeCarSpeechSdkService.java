package com.tencent.wecarspeech.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarSpeechSdkService extends IInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IWeCarSpeechSdkService {

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class a implements IWeCarSpeechSdkService {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f171a;

            a(IBinder iBinder) {
                this.f171a = iBinder;
            }

            @Override // com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService
            public byte[] actionCall(String str, String str2, byte[] bArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr);
                    this.f171a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f171a;
            }

            @Override // com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService
            public void setWeCarSpeechSdkListener(IWeCarSpeechSdkListener iWeCarSpeechSdkListener) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
                    obtain.writeStrongBinder(iWeCarSpeechSdkListener != null ? iWeCarSpeechSdkListener.asBinder() : null);
                    this.f171a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
        }

        public static IWeCarSpeechSdkService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IWeCarSpeechSdkService)) ? new a(iBinder) : (IWeCarSpeechSdkService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
                    setWeCarSpeechSdkListener(IWeCarSpeechSdkListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService");
                    byte[] actionCall = actionCall(parcel.readString(), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(actionCall);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    byte[] actionCall(String str, String str2, byte[] bArr);

    void setWeCarSpeechSdkListener(IWeCarSpeechSdkListener iWeCarSpeechSdkListener);
}
