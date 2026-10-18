package com.tencent.taes.remote.api.infodispatcher.listener;

import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRouteParkingPoiInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface OnDestinationParkingUpdateListener {
    void onParkingUpdate(List<WeCarRouteParkingPoiInfo> list);
}
