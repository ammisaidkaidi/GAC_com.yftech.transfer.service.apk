package com.tencent.taes.remote.api.map;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class MapSurfaceListener {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnMapContextListener {
        void onResult(long j, boolean z);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnMapSurfaceMonitorListener {
        void onTaskFinish(int i, long j);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnStyleModeChangedListener {
        void onStyleModeChanged(int i);
    }
}
