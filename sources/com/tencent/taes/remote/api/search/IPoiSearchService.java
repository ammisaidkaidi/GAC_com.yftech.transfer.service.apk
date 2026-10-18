package com.tencent.taes.remote.api.search;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.search.bean.PoiSearchResult;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.remote.api.search.listener.IPoiSearchByRoadListener;
import com.tencent.taes.remote.api.search.listener.IPoiSearchListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPoiSearchService extends IInterface {
    void cancelSearch(String str) throws RemoteException;

    String searchKeyWord(String str, IPoiSearchListener iPoiSearchListener) throws RemoteException;

    void searchKeyWordByRoad(String str, IPoiSearchByRoadListener iPoiSearchByRoadListener) throws RemoteException;

    String searchNearbyLatLng(String str, LatLng latLng, IPoiSearchListener iPoiSearchListener) throws RemoteException;

    void showPoiDetail(SearchPoi searchPoi) throws RemoteException;

    void showPoiResult(String str) throws RemoteException;

    void showSearchResult(PoiSearchResult poiSearchResult) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IPoiSearchService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.search.IPoiSearchService";
        static final int TRANSACTION_cancelSearch = 2;
        static final int TRANSACTION_searchKeyWord = 1;
        static final int TRANSACTION_searchKeyWordByRoad = 7;
        static final int TRANSACTION_searchNearbyLatLng = 6;
        static final int TRANSACTION_showPoiDetail = 5;
        static final int TRANSACTION_showPoiResult = 3;
        static final int TRANSACTION_showSearchResult = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPoiSearchService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPoiSearchService)) {
                return (IPoiSearchService) queryLocalInterface;
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
                    String searchKeyWord = searchKeyWord(parcel.readString(), IPoiSearchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(searchKeyWord);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelSearch(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    showPoiResult(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    showSearchResult(parcel.readInt() != 0 ? PoiSearchResult.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    showPoiDetail(parcel.readInt() != 0 ? SearchPoi.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String searchNearbyLatLng = searchNearbyLatLng(parcel.readString(), parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null, IPoiSearchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(searchNearbyLatLng);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchKeyWordByRoad(parcel.readString(), IPoiSearchByRoadListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IPoiSearchService {
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

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public String searchKeyWord(String str, IPoiSearchListener iPoiSearchListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iPoiSearchListener != null ? iPoiSearchListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public void cancelSearch(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public void showPoiResult(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public void showSearchResult(PoiSearchResult poiSearchResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (poiSearchResult != null) {
                        obtain.writeInt(1);
                        poiSearchResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public void showPoiDetail(SearchPoi searchPoi) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (searchPoi != null) {
                        obtain.writeInt(1);
                        searchPoi.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public String searchNearbyLatLng(String str, LatLng latLng, IPoiSearchListener iPoiSearchListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (latLng != null) {
                        obtain.writeInt(1);
                        latLng.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iPoiSearchListener != null ? iPoiSearchListener.asBinder() : null);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.search.IPoiSearchService
            public void searchKeyWordByRoad(String str, IPoiSearchByRoadListener iPoiSearchByRoadListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iPoiSearchByRoadListener != null ? iPoiSearchByRoadListener.asBinder() : null);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
