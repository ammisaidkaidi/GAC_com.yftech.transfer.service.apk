package com.tencent.taes.remote.api.operate;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.operate.bean.SceneBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneStatusBannerInfo;
import com.tencent.taes.remote.api.operate.bean.SceneTipsInfo;
import com.tencent.taes.remote.api.operate.bean.SceneWeakPushInfo;
import com.tencent.taes.remote.api.operate.listener.ISceneBannerInfoListener;
import com.tencent.taes.remote.api.operate.listener.ISceneTipsInfoListener;
import com.tencent.taes.remote.api.operate.listener.ISceneWeakPushInfoListener;
import com.tencent.taes.remote.api.operate.listener.IStatusBannerInfoListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IOperateService extends IInterface {
    List<SceneBannerInfo> getSceneBannerInfos() throws RemoteException;

    List<SceneTipsInfo> getSceneTipsInfos() throws RemoteException;

    List<SceneWeakPushInfo> getSceneWeakPushInfos() throws RemoteException;

    List<SceneStatusBannerInfo> getStatusBannerInfos() throws RemoteException;

    void registerSceneBannerInfoListener(ISceneBannerInfoListener iSceneBannerInfoListener) throws RemoteException;

    void registerSceneTipsInfoListener(ISceneTipsInfoListener iSceneTipsInfoListener) throws RemoteException;

    void registerSceneWeakPushInfoListener(ISceneWeakPushInfoListener iSceneWeakPushInfoListener) throws RemoteException;

    void registerStatusBannerInfoListener(IStatusBannerInfoListener iStatusBannerInfoListener) throws RemoteException;

    boolean showSceneBannerDetail(String str, boolean z) throws RemoteException;

    void unregisterSceneBannerInfoListener(ISceneBannerInfoListener iSceneBannerInfoListener) throws RemoteException;

    void unregisterSceneTipsInfoListener(ISceneTipsInfoListener iSceneTipsInfoListener) throws RemoteException;

    void unregisterSceneWeakPushInfoListener(ISceneWeakPushInfoListener iSceneWeakPushInfoListener) throws RemoteException;

    void unregisterStatusBannerInfoListener(IStatusBannerInfoListener iStatusBannerInfoListener) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IOperateService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.operate.IOperateService";
        static final int TRANSACTION_getSceneBannerInfos = 1;
        static final int TRANSACTION_getSceneTipsInfos = 11;
        static final int TRANSACTION_getSceneWeakPushInfos = 8;
        static final int TRANSACTION_getStatusBannerInfos = 5;
        static final int TRANSACTION_registerSceneBannerInfoListener = 2;
        static final int TRANSACTION_registerSceneTipsInfoListener = 12;
        static final int TRANSACTION_registerSceneWeakPushInfoListener = 9;
        static final int TRANSACTION_registerStatusBannerInfoListener = 6;
        static final int TRANSACTION_showSceneBannerDetail = 4;
        static final int TRANSACTION_unregisterSceneBannerInfoListener = 3;
        static final int TRANSACTION_unregisterSceneTipsInfoListener = 13;
        static final int TRANSACTION_unregisterSceneWeakPushInfoListener = 10;
        static final int TRANSACTION_unregisterStatusBannerInfoListener = 7;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOperateService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOperateService)) {
                return (IOperateService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<SceneBannerInfo> sceneBannerInfos = getSceneBannerInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(sceneBannerInfos);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneBannerInfoListener(ISceneBannerInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneBannerInfoListener(ISceneBannerInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean showSceneBannerDetail = showSceneBannerDetail(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(showSceneBannerDetail ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<SceneStatusBannerInfo> statusBannerInfos = getStatusBannerInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(statusBannerInfos);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerStatusBannerInfoListener(IStatusBannerInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterStatusBannerInfoListener(IStatusBannerInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<SceneWeakPushInfo> sceneWeakPushInfos = getSceneWeakPushInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(sceneWeakPushInfos);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneWeakPushInfoListener(ISceneWeakPushInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneWeakPushInfoListener(ISceneWeakPushInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<SceneTipsInfo> sceneTipsInfos = getSceneTipsInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(sceneTipsInfos);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSceneTipsInfoListener(ISceneTipsInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSceneTipsInfoListener(ISceneTipsInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IOperateService {
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

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public List<SceneBannerInfo> getSceneBannerInfos() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(SceneBannerInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void registerSceneBannerInfoListener(ISceneBannerInfoListener iSceneBannerInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneBannerInfoListener != null ? iSceneBannerInfoListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void unregisterSceneBannerInfoListener(ISceneBannerInfoListener iSceneBannerInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneBannerInfoListener != null ? iSceneBannerInfoListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public boolean showSceneBannerDetail(String str, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public List<SceneStatusBannerInfo> getStatusBannerInfos() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(SceneStatusBannerInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void registerStatusBannerInfoListener(IStatusBannerInfoListener iStatusBannerInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iStatusBannerInfoListener != null ? iStatusBannerInfoListener.asBinder() : null);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void unregisterStatusBannerInfoListener(IStatusBannerInfoListener iStatusBannerInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iStatusBannerInfoListener != null ? iStatusBannerInfoListener.asBinder() : null);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public List<SceneWeakPushInfo> getSceneWeakPushInfos() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(SceneWeakPushInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void registerSceneWeakPushInfoListener(ISceneWeakPushInfoListener iSceneWeakPushInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneWeakPushInfoListener != null ? iSceneWeakPushInfoListener.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void unregisterSceneWeakPushInfoListener(ISceneWeakPushInfoListener iSceneWeakPushInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneWeakPushInfoListener != null ? iSceneWeakPushInfoListener.asBinder() : null);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public List<SceneTipsInfo> getSceneTipsInfos() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(SceneTipsInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void registerSceneTipsInfoListener(ISceneTipsInfoListener iSceneTipsInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneTipsInfoListener != null ? iSceneTipsInfoListener.asBinder() : null);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.operate.IOperateService
            public void unregisterSceneTipsInfoListener(ISceneTipsInfoListener iSceneTipsInfoListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSceneTipsInfoListener != null ? iSceneTipsInfoListener.asBinder() : null);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
