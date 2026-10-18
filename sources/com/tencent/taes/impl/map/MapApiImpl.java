package com.tencent.taes.impl.map;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import com.tencent.taes.api.map.IMapApi;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.impl.base.BaseConnectApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.remote.api.map.IMapPoiLayerListener;
import com.tencent.taes.remote.api.map.IMapSurfaceApi;
import com.tencent.taes.remote.api.map.MapSurfaceListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MapApiImpl extends BaseConnectApi<IMapSurfaceApi> implements IMapApi {
    private static final String TAG = "MapApiImp";
    private IMapSurfaceApi mMapSurfaceApi;

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public MapApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("MapService", new TAESCommonListener() { // from class: com.tencent.taes.impl.map.MapApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                MapApiImpl.this.getMapSurfaceApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(MapApiImpl.TAG, "MapServiceloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IMapSurfaceApi getMapSurfaceApi() {
        if (this.mMapSurfaceApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("MapService", IMapSurfaceApi.class, null);
            if (api.isSuccess()) {
                this.mMapSurfaceApi = (IMapSurfaceApi) api.data;
                registerInnerConnectListener(this.mMapSurfaceApi);
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mMapSurfaceApi;
    }

    @Override // com.tencent.taes.impl.base.BaseConnectApi, com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        super.registerConnectListener(iServerConnectListener);
        if (this.mMapSurfaceApi == null) {
            Log.e(TAG, "registerInnerConnectListener Exception：mMapSurfaceApi = " + this.mMapSurfaceApi);
            getMapSurfaceApi();
            return;
        }
        registerInnerConnectListener(this.mMapSurfaceApi);
    }

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
        unregisterInnerConnectListener(this.mMapSurfaceApi);
        unregisterConnectListener();
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean createSurface(Surface surface, int i, int i2, int i3, int i4, MapSurfaceListener.OnMapContextListener onMapContextListener) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().createSurface(surface, i, i2, i3, i4, onMapContextListener);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean updateSurface(long j, Surface surface, int i, int i2, MapSurfaceListener.OnMapContextListener onMapContextListener) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().updateSurface(j, surface, i, i2, onMapContextListener);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean removedSurface(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().removedSurface(j);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onResume(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().onResume(j);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onPause(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().onPause(j);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean onTouchEvent(long j, MotionEvent motionEvent) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().onTouchEvent(j, motionEvent);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isRunning(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().isRunning(j);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isValid() {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().isValid();
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public int getMapMode(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().getMapMode(j);
        }
        return -1;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void setCenterOffset(long j, int i, int i2) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().setCenterOffset(j, i, i2);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void startMapMonitorTask(long j, int i, MapSurfaceListener.OnMapSurfaceMonitorListener onMapSurfaceMonitorListener) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().startMapMonitorTask(j, i, onMapSurfaceMonitorListener);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public long createPoiLayer(long j, List<SearchPoi> list, Bitmap bitmap, Bundle bundle, IMapPoiLayerListener iMapPoiLayerListener) {
        if (list == null || list.size() == 0 || bitmap == null) {
            Log.d(TAG, "createPoiLayer params error poiList=" + list + " bitmap=" + bitmap);
            return -1L;
        }
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().createPoiLayer(j, list, bitmap, bundle, iMapPoiLayerListener);
        }
        return 0L;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void removeLayer(long j, long j2) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().removeLayer(j, j2);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void zoomToPois(long j, List<SearchPoi> list, Rect rect) {
        if (list == null || list.size() == 0) {
            Log.d(TAG, "zoomToPois params error poiList=" + list);
            return;
        }
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().zoomToPois(j, list, rect);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void setFollow(long j, boolean z) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().setFollow(j, z);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public int getStyleMode(long j) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().getStyleMode(j);
        }
        return -1;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void addStyleModeChangedListener(long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().addStyleModeChangedListener(j, onStyleModeChangedListener);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public void removeStyleModeChangedListener(long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener) {
        if (getMapSurfaceApi() != null) {
            getMapSurfaceApi().removeStyleModeChangedListener(j, onStyleModeChangedListener);
        }
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean showARMap(int i, boolean z) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().showARMap(i, z);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isDisplayingMap(int i) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().isDisplayingMap(i);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean isDisplayingArMap(int i) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().isDisplayingArMap(i);
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.map.IMapSurfaceApi
    public boolean setStyleMode(long j, int i) {
        if (getMapSurfaceApi() != null) {
            return getMapSurfaceApi().setStyleMode(j, i);
        }
        return false;
    }
}
