package com.tencent.taes.remote.api.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.location.bean.LocationBean;
import com.tencent.taes.remote.api.location.bean.LocationDistrict;
import com.tencent.taes.remote.api.location.listener.IDistrictChangedListener;
import com.tencent.taes.remote.api.location.listener.ILocationListener;
import com.tencent.taes.remote.api.location.listener.ILocationSatellitesListener;
import com.tencent.taes.remote.api.location.listener.INemaListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILocationService extends IInterface {
    LocationBean getCurLocation() throws RemoteException;

    int getGpsSignalLevel() throws RemoteException;

    long getGpsTime() throws RemoteException;

    LocationDistrict getLastValidDistrict() throws RemoteException;

    LatLng getLastValidLocation() throws RemoteException;

    String getLocationSDKVersion() throws RemoteException;

    int getSatellitesNum() throws RemoteException;

    boolean hasSensor() throws RemoteException;

    boolean hasWecarId() throws RemoteException;

    boolean isGpsAvailable() throws RemoteException;

    boolean isSimulateLocation() throws RemoteException;

    boolean isSupportIns() throws RemoteException;

    void registerDistrictChangedListener(IDistrictChangedListener iDistrictChangedListener) throws RemoteException;

    void registerLocationInfoListener(ILocationListener iLocationListener) throws RemoteException;

    void registerNemaInfoListener(INemaListener iNemaListener) throws RemoteException;

    void registerSatellitesChangedListener(ILocationSatellitesListener iLocationSatellitesListener) throws RemoteException;

    void restartWithWeCarId(String str) throws RemoteException;

    void setIsUseCarSpeed(boolean z) throws RemoteException;

    void startLocation(int i) throws RemoteException;

    void startSimulateLocation(String str) throws RemoteException;

    void stopSimulateLocation() throws RemoteException;

    void unregisterDistrictChangedListener(IDistrictChangedListener iDistrictChangedListener) throws RemoteException;

    void unregisterLocationInfoListener(ILocationListener iLocationListener) throws RemoteException;

    void unregisterNemaInfoListener(INemaListener iNemaListener) throws RemoteException;

    void unregisterSatellitesChangedListener(ILocationSatellitesListener iLocationSatellitesListener) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements ILocationService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.location.ILocationService";
        static final int TRANSACTION_getCurLocation = 4;
        static final int TRANSACTION_getGpsSignalLevel = 8;
        static final int TRANSACTION_getGpsTime = 7;
        static final int TRANSACTION_getLastValidDistrict = 5;
        static final int TRANSACTION_getLastValidLocation = 6;
        static final int TRANSACTION_getLocationSDKVersion = 12;
        static final int TRANSACTION_getSatellitesNum = 3;
        static final int TRANSACTION_hasSensor = 10;
        static final int TRANSACTION_hasWecarId = 21;
        static final int TRANSACTION_isGpsAvailable = 2;
        static final int TRANSACTION_isSimulateLocation = 25;
        static final int TRANSACTION_isSupportIns = 11;
        static final int TRANSACTION_registerDistrictChangedListener = 15;
        static final int TRANSACTION_registerLocationInfoListener = 13;
        static final int TRANSACTION_registerNemaInfoListener = 19;
        static final int TRANSACTION_registerSatellitesChangedListener = 17;
        static final int TRANSACTION_restartWithWeCarId = 22;
        static final int TRANSACTION_setIsUseCarSpeed = 9;
        static final int TRANSACTION_startLocation = 1;
        static final int TRANSACTION_startSimulateLocation = 23;
        static final int TRANSACTION_stopSimulateLocation = 24;
        static final int TRANSACTION_unregisterDistrictChangedListener = 16;
        static final int TRANSACTION_unregisterLocationInfoListener = 14;
        static final int TRANSACTION_unregisterNemaInfoListener = 20;
        static final int TRANSACTION_unregisterSatellitesChangedListener = 18;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILocationService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILocationService)) {
                return (ILocationService) queryLocalInterface;
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
                    startLocation(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isGpsAvailable = isGpsAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isGpsAvailable ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int satellitesNum = getSatellitesNum();
                    parcel2.writeNoException();
                    parcel2.writeInt(satellitesNum);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    LocationBean curLocation = getCurLocation();
                    parcel2.writeNoException();
                    if (curLocation != null) {
                        parcel2.writeInt(1);
                        curLocation.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    LocationDistrict lastValidDistrict = getLastValidDistrict();
                    parcel2.writeNoException();
                    if (lastValidDistrict != null) {
                        parcel2.writeInt(1);
                        lastValidDistrict.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    LatLng lastValidLocation = getLastValidLocation();
                    parcel2.writeNoException();
                    if (lastValidLocation != null) {
                        parcel2.writeInt(1);
                        lastValidLocation.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    long gpsTime = getGpsTime();
                    parcel2.writeNoException();
                    parcel2.writeLong(gpsTime);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int gpsSignalLevel = getGpsSignalLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(gpsSignalLevel);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIsUseCarSpeed(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasSensor = hasSensor();
                    parcel2.writeNoException();
                    parcel2.writeInt(hasSensor ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isSupportIns = isSupportIns();
                    parcel2.writeNoException();
                    parcel2.writeInt(isSupportIns ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String locationSDKVersion = getLocationSDKVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(locationSDKVersion);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerLocationInfoListener(ILocationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterLocationInfoListener(ILocationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDistrictChangedListener(IDistrictChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDistrictChangedListener(IDistrictChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSatellitesChangedListener(ILocationSatellitesListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSatellitesChangedListener(ILocationSatellitesListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerNemaInfoListener(INemaListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterNemaInfoListener(INemaListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasWecarId = hasWecarId();
                    parcel2.writeNoException();
                    parcel2.writeInt(hasWecarId ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    restartWithWeCarId(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSimulateLocation(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSimulateLocation();
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isSimulateLocation = isSimulateLocation();
                    parcel2.writeNoException();
                    parcel2.writeInt(isSimulateLocation ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements ILocationService {
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

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void startLocation(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public boolean isGpsAvailable() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public int getSatellitesNum() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public LocationBean getCurLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LocationBean.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public LocationDistrict getLastValidDistrict() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LocationDistrict.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public LatLng getLastValidLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LatLng.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public long getGpsTime() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public int getGpsSignalLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void setIsUseCarSpeed(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public boolean hasSensor() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public boolean isSupportIns() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public String getLocationSDKVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void registerLocationInfoListener(ILocationListener iLocationListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLocationListener != null ? iLocationListener.asBinder() : null);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void unregisterLocationInfoListener(ILocationListener iLocationListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLocationListener != null ? iLocationListener.asBinder() : null);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void registerDistrictChangedListener(IDistrictChangedListener iDistrictChangedListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iDistrictChangedListener != null ? iDistrictChangedListener.asBinder() : null);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void unregisterDistrictChangedListener(IDistrictChangedListener iDistrictChangedListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iDistrictChangedListener != null ? iDistrictChangedListener.asBinder() : null);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void registerSatellitesChangedListener(ILocationSatellitesListener iLocationSatellitesListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLocationSatellitesListener != null ? iLocationSatellitesListener.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void unregisterSatellitesChangedListener(ILocationSatellitesListener iLocationSatellitesListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLocationSatellitesListener != null ? iLocationSatellitesListener.asBinder() : null);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void registerNemaInfoListener(INemaListener iNemaListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iNemaListener != null ? iNemaListener.asBinder() : null);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void unregisterNemaInfoListener(INemaListener iNemaListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iNemaListener != null ? iNemaListener.asBinder() : null);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public boolean hasWecarId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void restartWithWeCarId(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void startSimulateLocation(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public void stopSimulateLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.location.ILocationService
            public boolean isSimulateLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
