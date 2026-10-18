package com.tencent.taes.remote.api.map;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.Surface;
import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
import com.tencent.taes.remote.api.map.MapSurfaceListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMapSurfaceApi extends IRegitsterConnectStateApi {
    public static final int SURFACE_TYPE_CUSTOM = 3;
    public static final int SURFACE_TYPE_DASBOARD = 2;
    public static final int SURFACE_TYPE_WIDGET = 1;

    void addStyleModeChangedListener(long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener);

    long createPoiLayer(long j, List<SearchPoi> list, Bitmap bitmap, Bundle bundle, IMapPoiLayerListener iMapPoiLayerListener);

    boolean createSurface(Surface surface, int i, int i2, int i3, int i4, MapSurfaceListener.OnMapContextListener onMapContextListener);

    int getMapMode(long j);

    int getStyleMode(long j);

    boolean isDisplayingArMap(int i);

    boolean isDisplayingMap(int i);

    boolean isRunning(long j);

    boolean isValid();

    boolean onPause(long j);

    boolean onResume(long j);

    boolean onTouchEvent(long j, MotionEvent motionEvent);

    void removeLayer(long j, long j2);

    void removeStyleModeChangedListener(long j, MapSurfaceListener.OnStyleModeChangedListener onStyleModeChangedListener);

    boolean removedSurface(long j);

    void setCenterOffset(long j, int i, int i2);

    void setFollow(long j, boolean z);

    boolean setStyleMode(long j, int i);

    boolean showARMap(int i, boolean z);

    void startMapMonitorTask(long j, int i, MapSurfaceListener.OnMapSurfaceMonitorListener onMapSurfaceMonitorListener);

    boolean updateSurface(long j, Surface surface, int i, int i2, MapSurfaceListener.OnMapContextListener onMapContextListener);

    void zoomToPois(long j, List<SearchPoi> list, Rect rect);
}
