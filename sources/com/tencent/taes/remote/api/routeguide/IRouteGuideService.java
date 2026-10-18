package com.tencent.taes.remote.api.routeguide;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.routeguide.IRouteGuideListener;
import com.tencent.taes.remote.api.routeguide.IRoutePlanResultListener;
import com.tencent.taes.remote.api.routeguide.bean.WecarPoi;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRouteGuideService extends IInterface {
    int getNaviStatus() throws RemoteException;

    int getPassNodeNum() throws RemoteException;

    String getPoiDetailNaviCoordinate() throws RemoteException;

    int getRouteGuideSpeakMute() throws RemoteException;

    int getRoutePlanCount() throws RemoteException;

    String getRoutePlanDestNode() throws RemoteException;

    String getWeCarNaviRoadConditionInfo() throws RemoteException;

    String getWeCarSnapShotInfo() throws RemoteException;

    void searchRouteCondInfo(int i, IRouteGuideListener iRouteGuideListener) throws RemoteException;

    void searchRoutePlanResult(WecarPoi wecarPoi, WecarPoi wecarPoi2, int i, List<WecarPoi> list, IRoutePlanResultListener iRoutePlanResultListener) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IRouteGuideService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.routeguide.IRouteGuideService";
        static final int TRANSACTION_getNaviStatus = 1;
        static final int TRANSACTION_getPassNodeNum = 6;
        static final int TRANSACTION_getPoiDetailNaviCoordinate = 10;
        static final int TRANSACTION_getRouteGuideSpeakMute = 4;
        static final int TRANSACTION_getRoutePlanCount = 7;
        static final int TRANSACTION_getRoutePlanDestNode = 8;
        static final int TRANSACTION_getWeCarNaviRoadConditionInfo = 2;
        static final int TRANSACTION_getWeCarSnapShotInfo = 3;
        static final int TRANSACTION_searchRouteCondInfo = 5;
        static final int TRANSACTION_searchRoutePlanResult = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRouteGuideService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRouteGuideService)) {
                return (IRouteGuideService) queryLocalInterface;
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
                    int naviStatus = getNaviStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(naviStatus);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String weCarNaviRoadConditionInfo = getWeCarNaviRoadConditionInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(weCarNaviRoadConditionInfo);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String weCarSnapShotInfo = getWeCarSnapShotInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(weCarSnapShotInfo);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int routeGuideSpeakMute = getRouteGuideSpeakMute();
                    parcel2.writeNoException();
                    parcel2.writeInt(routeGuideSpeakMute);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchRouteCondInfo(parcel.readInt(), IRouteGuideListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int passNodeNum = getPassNodeNum();
                    parcel2.writeNoException();
                    parcel2.writeInt(passNodeNum);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int routePlanCount = getRoutePlanCount();
                    parcel2.writeNoException();
                    parcel2.writeInt(routePlanCount);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String routePlanDestNode = getRoutePlanDestNode();
                    parcel2.writeNoException();
                    parcel2.writeString(routePlanDestNode);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchRoutePlanResult(parcel.readInt() != 0 ? WecarPoi.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? WecarPoi.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.createTypedArrayList(WecarPoi.CREATOR), IRoutePlanResultListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String poiDetailNaviCoordinate = getPoiDetailNaviCoordinate();
                    parcel2.writeNoException();
                    parcel2.writeString(poiDetailNaviCoordinate);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IRouteGuideService {
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

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public int getNaviStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public String getWeCarNaviRoadConditionInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public String getWeCarSnapShotInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public int getRouteGuideSpeakMute() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public void searchRouteCondInfo(int i, IRouteGuideListener iRouteGuideListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iRouteGuideListener != null ? iRouteGuideListener.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public int getPassNodeNum() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public int getRoutePlanCount() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public String getRoutePlanDestNode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public void searchRoutePlanResult(WecarPoi wecarPoi, WecarPoi wecarPoi2, int i, List<WecarPoi> list, IRoutePlanResultListener iRoutePlanResultListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (wecarPoi != null) {
                        obtain.writeInt(1);
                        wecarPoi.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (wecarPoi2 != null) {
                        obtain.writeInt(1);
                        wecarPoi2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    obtain.writeStrongBinder(iRoutePlanResultListener != null ? iRoutePlanResultListener.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideService
            public String getPoiDetailNaviCoordinate() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
