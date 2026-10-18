package com.tencent.taes.remote.api.map;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.Surface;
import com.tencent.taes.remote.api.map.IMapPoiLayerListener;
import com.tencent.taes.remote.api.map.IMapSurfaceListener;
import com.tencent.taes.remote.api.map.IMapSurfaceMonitorListener;
import com.tencent.taes.remote.api.map.IStyleModeChangedListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMapSurfaceService extends IInterface {
    long createPoiLayer(long j, List<SearchPoi> list, Bitmap bitmap, Bundle bundle, IMapPoiLayerListener iMapPoiLayerListener) throws RemoteException;

    boolean createSurface(Surface surface, int i, int i2, int i3, int i4, IMapSurfaceListener iMapSurfaceListener) throws RemoteException;

    int getMapMode(long j) throws RemoteException;

    int getStyleMode(long j) throws RemoteException;

    boolean isDisplayingArMap(int i) throws RemoteException;

    boolean isDisplayingMap(int i) throws RemoteException;

    boolean isRunning(long j) throws RemoteException;

    boolean isValid() throws RemoteException;

    boolean onPause(long j) throws RemoteException;

    boolean onResume(long j) throws RemoteException;

    boolean onTouchEvent(long j, MotionEvent motionEvent) throws RemoteException;

    void removeLayer(long j, long j2) throws RemoteException;

    boolean removedSurface(long j) throws RemoteException;

    void setCenterOffset(long j, int i, int i2) throws RemoteException;

    void setFollow(long j, boolean z) throws RemoteException;

    boolean setStyleMode(long j, int i) throws RemoteException;

    void setStyleModeChangedListener(long j, IStyleModeChangedListener iStyleModeChangedListener) throws RemoteException;

    boolean showARMap(int i, boolean z) throws RemoteException;

    void startMapMonitorTask(long j, int i, IMapSurfaceMonitorListener iMapSurfaceMonitorListener) throws RemoteException;

    boolean updateSurface(long j, Surface surface, int i, int i2, IMapSurfaceListener iMapSurfaceListener) throws RemoteException;

    void zoomToPois(long j, List<SearchPoi> list, Rect rect) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IMapSurfaceService {
        private static final String DESCRIPTOR = "com.tencent.taes.remote.api.map.IMapSurfaceService";
        static final int TRANSACTION_createPoiLayer = 12;
        static final int TRANSACTION_createSurface = 1;
        static final int TRANSACTION_getMapMode = 9;
        static final int TRANSACTION_getStyleMode = 16;
        static final int TRANSACTION_isDisplayingArMap = 20;
        static final int TRANSACTION_isDisplayingMap = 19;
        static final int TRANSACTION_isRunning = 7;
        static final int TRANSACTION_isValid = 8;
        static final int TRANSACTION_onPause = 5;
        static final int TRANSACTION_onResume = 4;
        static final int TRANSACTION_onTouchEvent = 6;
        static final int TRANSACTION_removeLayer = 13;
        static final int TRANSACTION_removedSurface = 3;
        static final int TRANSACTION_setCenterOffset = 10;
        static final int TRANSACTION_setFollow = 15;
        static final int TRANSACTION_setStyleMode = 21;
        static final int TRANSACTION_setStyleModeChangedListener = 17;
        static final int TRANSACTION_showARMap = 18;
        static final int TRANSACTION_startMapMonitorTask = 11;
        static final int TRANSACTION_updateSurface = 2;
        static final int TRANSACTION_zoomToPois = 14;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMapSurfaceService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMapSurfaceService)) {
                return (IMapSurfaceService) queryLocalInterface;
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
                    boolean createSurface = createSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), IMapSurfaceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(createSurface ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean updateSurface = updateSurface(parcel.readLong(), parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), IMapSurfaceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(updateSurface ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean removedSurface = removedSurface(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(removedSurface ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onResume = onResume(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(onResume ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onPause = onPause(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(onPause ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onTouchEvent = onTouchEvent(parcel.readLong(), parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(onTouchEvent ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isRunning = isRunning(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(isRunning ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isValid = isValid();
                    parcel2.writeNoException();
                    parcel2.writeInt(isValid ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mapMode = getMapMode(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(mapMode);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCenterOffset(parcel.readLong(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    startMapMonitorTask(parcel.readLong(), parcel.readInt(), IMapSurfaceMonitorListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    long createPoiLayer = createPoiLayer(parcel.readLong(), parcel.createTypedArrayList(SearchPoi.CREATOR), parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, IMapPoiLayerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeLong(createPoiLayer);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeLayer(parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    zoomToPois(parcel.readLong(), parcel.createTypedArrayList(SearchPoi.CREATOR), parcel.readInt() != 0 ? (Rect) Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFollow(parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int styleMode = getStyleMode(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(styleMode);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStyleModeChangedListener(parcel.readLong(), IStyleModeChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean showARMap = showARMap(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(showARMap ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDisplayingMap = isDisplayingMap(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(isDisplayingMap ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDisplayingArMap = isDisplayingArMap(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(isDisplayingArMap ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean styleMode2 = setStyleMode(parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(styleMode2 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IMapSurfaceService {
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

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean createSurface(Surface surface, int i, int i2, int i3, int i4, IMapSurfaceListener iMapSurfaceListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeStrongBinder(iMapSurfaceListener != null ? iMapSurfaceListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean updateSurface(long j, Surface surface, int i, int i2, IMapSurfaceListener iMapSurfaceListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(iMapSurfaceListener != null ? iMapSurfaceListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean removedSurface(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean onResume(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean onPause(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean onTouchEvent(long j, MotionEvent motionEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    if (motionEvent != null) {
                        obtain.writeInt(1);
                        motionEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean isRunning(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean isValid() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public int getMapMode(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void setCenterOffset(long j, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void startMapMonitorTask(long j, int i, IMapSurfaceMonitorListener iMapSurfaceMonitorListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iMapSurfaceMonitorListener != null ? iMapSurfaceMonitorListener.asBinder() : null);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public long createPoiLayer(long j, List<SearchPoi> list, Bitmap bitmap, Bundle bundle, IMapPoiLayerListener iMapPoiLayerListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeTypedList(list);
                    if (bitmap != null) {
                        obtain.writeInt(1);
                        bitmap.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iMapPoiLayerListener != null ? iMapPoiLayerListener.asBinder() : null);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void removeLayer(long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void zoomToPois(long j, List<SearchPoi> list, Rect rect) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeTypedList(list);
                    if (rect != null) {
                        obtain.writeInt(1);
                        rect.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void setFollow(long j, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public int getStyleMode(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public void setStyleModeChangedListener(long j, IStyleModeChangedListener iStyleModeChangedListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iStyleModeChangedListener != null ? iStyleModeChangedListener.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean showARMap(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean isDisplayingMap(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean isDisplayingArMap(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.taes.remote.api.map.IMapSurfaceService
            public boolean setStyleMode(long j, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(21, obtain, obtain2, 0);
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
