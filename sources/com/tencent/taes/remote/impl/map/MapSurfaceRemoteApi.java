package com.tencent.taes.remote.impl.map;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.Surface;
import com.tencent.taes.remote.api.map.IMapPoiLayerListener;
import com.tencent.taes.remote.api.map.IMapSurfaceApi;
import com.tencent.taes.remote.api.map.IMapSurfaceListener;
import com.tencent.taes.remote.api.map.IMapSurfaceMonitorListener;
import com.tencent.taes.remote.api.map.IMapSurfaceService;
import com.tencent.taes.remote.api.map.IStyleModeChangedListener;
import com.tencent.taes.remote.api.map.MapSurfaceListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class MapSurfaceRemoteApi extends BaseRemoteApi implements IMapSurfaceApi {
    private static final String TAG = "MapSurfaceRemoteApi";
    private IMapSurfaceService mMapSurfaceService;
    private Map<Long, List<MapSurfaceListener.OnStyleModeChangedListener>> mStyleModeChangedListenerMap;

    private MapSurfaceRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mStyleModeChangedListenerMap = new ConcurrentHashMap();
        this.mMapSurfaceService = IMapSurfaceService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("MapService", IMapSurfaceService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mMapSurfaceService = IMapSurfaceService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean createSurface(Surface surface, int i, int i2, int i3, int i4, final MapSurfaceListener.OnMapContextListener onMapContextListener) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.createSurface(surface, i, i2, i3, i4, new IMapSurfaceListener.Stub() { // from class: com.tencent.taes.remote.impl.map.MapSurfaceRemoteApi.1
                @Override // com.tencent.taes.remote.api.map.IMapSurfaceListener
                public void onResult(long j, boolean z) throws RemoteException {
                    Log.e(MapSurfaceRemoteApi.TAG, "createSurface:surfaceId=" + j + "   result=" + z);
                    if (onMapContextListener != null) {
                        onMapContextListener.onResult(j, z);
                    }
                }
            });
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean updateSurface(long j, Surface surface, int i, int i2, final MapSurfaceListener.OnMapContextListener onMapContextListener) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.updateSurface(j, surface, i, i2, new IMapSurfaceListener.Stub() { // from class: com.tencent.taes.remote.impl.map.MapSurfaceRemoteApi.2
                @Override // com.tencent.taes.remote.api.map.IMapSurfaceListener
                public void onResult(long j2, boolean z) throws RemoteException {
                    Log.e(MapSurfaceRemoteApi.TAG, "updateSurface:surfaceId=" + j2 + "   result=" + z);
                    if (onMapContextListener != null) {
                        onMapContextListener.onResult(j2, z);
                    }
                }
            });
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean removedSurface(long j) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.removedSurface(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onResume(long j) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.onResume(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onPause(long j) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.onPause(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onTouchEvent(long j, MotionEvent motionEvent) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.onTouchEvent(j, motionEvent);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isRunning(long j) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.isRunning(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isValid() {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.isValid();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public int getMapMode(long j) {
        if (this.mMapSurfaceService == null) {
            return -1;
        }
        try {
            return this.mMapSurfaceService.getMapMode(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void setCenterOffset(long j, int i, int i2) {
        if (this.mMapSurfaceService != null) {
            try {
                this.mMapSurfaceService.setCenterOffset(j, i, i2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void startMapMonitorTask(long j, int i, final MapSurfaceListener.OnMapSurfaceMonitorListener onMapSurfaceMonitorListener) {
        if (this.mMapSurfaceService != null) {
            try {
                this.mMapSurfaceService.startMapMonitorTask(j, i, new IMapSurfaceMonitorListener.Stub() { // from class: com.tencent.taes.remote.impl.map.MapSurfaceRemoteApi.3
                    @Override // com.tencent.taes.remote.api.map.IMapSurfaceMonitorListener
                    public void onTaskFinish(int i2, long j2) throws RemoteException {
                        onMapSurfaceMonitorListener.onTaskFinish(i2, j2);
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public long createPoiLayer(long j, List<SearchPoi> list, Bitmap bitmap, Bundle bundle, final IMapPoiLayerListener iMapPoiLayerListener) {
        if (this.mMapSurfaceService == null) {
            return 0L;
        }
        try {
            return this.mMapSurfaceService.createPoiLayer(j, list, bitmap, bundle, new IMapPoiLayerListener.Stub() { // from class: com.tencent.taes.remote.impl.map.MapSurfaceRemoteApi.4
                @Override // com.tencent.taes.remote.api.map.IMapPoiLayerListener
                public void onClick(SearchPoi searchPoi) throws RemoteException {
                    if (iMapPoiLayerListener != null) {
                        iMapPoiLayerListener.onClick(searchPoi);
                    }
                }
            });
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void removeLayer(long j, long j2) {
        if (this.mMapSurfaceService != null) {
            try {
                this.mMapSurfaceService.removeLayer(j, j2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void zoomToPois(long j, List<SearchPoi> list, Rect rect) {
        if (this.mMapSurfaceService != null) {
            try {
                this.mMapSurfaceService.zoomToPois(j, list, rect);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void setFollow(long j, boolean z) {
        if (this.mMapSurfaceService != null) {
            try {
                this.mMapSurfaceService.setFollow(j, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public int getStyleMode(long j) {
        if (this.mMapSurfaceService == null) {
            return -1;
        }
        try {
            return this.mMapSurfaceService.getStyleMode(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void addStyleModeChangedListener(final long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener) {
        if (onStyleModeChangedListener == null || this.mMapSurfaceService == null) {
            return;
        }
        List<MapSurfaceListener.OnStyleModeChangedListener> list = this.mStyleModeChangedListenerMap.get(Long.valueOf(j));
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(onStyleModeChangedListener);
            this.mStyleModeChangedListenerMap.put(Long.valueOf(j), arrayList);
            try {
                this.mMapSurfaceService.setStyleModeChangedListener(j, new IStyleModeChangedListener.Stub() { // from class: com.tencent.taes.remote.impl.map.MapSurfaceRemoteApi.5
                    @Override // com.tencent.taes.remote.api.map.IStyleModeChangedListener
                    public void onStyleModeChanged(int i) throws RemoteException {
                        List list2 = (List) MapSurfaceRemoteApi.this.mStyleModeChangedListenerMap.get(Long.valueOf(j));
                        Log.d(MapSurfaceRemoteApi.TAG, "onStyleModeChanged mStyleModeChangedListenerMap = " + MapSurfaceRemoteApi.this.mStyleModeChangedListenerMap + ", surfaceId = " + j + ", styleMode = " + i);
                        if (list2 != null) {
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                ((MapSurfaceListener.OnStyleModeChangedListener) it.next()).onStyleModeChanged(i);
                            }
                        }
                    }
                });
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                return;
            }
        }
        if (list.contains(onStyleModeChangedListener)) {
            return;
        }
        list.add(onStyleModeChangedListener);
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void removeStyleModeChangedListener(long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener) {
        List<MapSurfaceListener.OnStyleModeChangedListener> list;
        if (onStyleModeChangedListener == null || this.mMapSurfaceService == null || (list = this.mStyleModeChangedListenerMap.get(Long.valueOf(j))) == null) {
            return;
        }
        list.remove(onStyleModeChangedListener);
        if (list.isEmpty()) {
            this.mStyleModeChangedListenerMap.remove(Long.valueOf(j));
            try {
                this.mMapSurfaceService.setStyleModeChangedListener(j, null);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean showARMap(int i, boolean z) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.showARMap(i, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isDisplayingMap(int i) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.isDisplayingMap(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isDisplayingArMap(int i) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.isDisplayingArMap(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean setStyleMode(long j, int i) {
        if (this.mMapSurfaceService == null) {
            return false;
        }
        try {
            return this.mMapSurfaceService.setStyleMode(j, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
