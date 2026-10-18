package com.tencent.taes.remote.api.operate.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IStatusBannerInfoListener extends IInterface {
    void onSceneBannerInfo(List<SceneStatusBannerInfo> list) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IStatusBannerInfoListener {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.operate.listener.IStatusBannerInfoListener";
        static final int TRANSACTION_onSceneBannerInfo = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IStatusBannerInfoListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IStatusBannerInfoListener)) {
                return (IStatusBannerInfoListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onSceneBannerInfo(parcel.createTypedArrayList(SceneStatusBannerInfo.CREATOR));
            parcel2.writeNoException();
            return true;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IStatusBannerInfoListener {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.taes.remote.api.operate.listener.IStatusBannerInfoListener
            public void onSceneBannerInfo(List<SceneStatusBannerInfo> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
