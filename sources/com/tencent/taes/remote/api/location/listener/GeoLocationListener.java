package com.tencent.taes.remote.api.location.listener;

import com.tencent.taes.remote.api.location.bean.LocationBean;

/* loaded from: /home/user/work/dex/classes.dex */
public interface GeoLocationListener {
    void onGpsStatusChange(boolean z, boolean z2);

    void onLocationChange(LocationBean locationBean);
}
