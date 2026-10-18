package com.tencent.taes.remote.api.routeguide;

import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarNaviRoadConditionInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarPoi;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarSnapShotInfo;
import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
import com.tencent.taes.remote.api.routeguide.bean.WecarPoi;
import com.tencent.taes.remote.api.routeguide.listener.OnSearchRouteCondInfoListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRouteGuideApi extends IRegitsterConnectStateApi {
    int getNaviStatus();

    int getPassNodeNum();

    String getPoiDetailNaviCoordinate();

    int getRouteGuideSpeakMute();

    int getRoutePlanCount();

    WeCarPoi getRoutePlanDestNode();

    WeCarNaviRoadConditionInfo getWeCarNaviRoadConditionInfo();

    WeCarSnapShotInfo getWeCarSnapShotInfo();

    void searchRouteCondInfo(int i, OnSearchRouteCondInfoListener onSearchRouteCondInfoListener);

    void searchRoutePlanResult(WecarPoi wecarPoi, WecarPoi wecarPoi2, int i, List<WecarPoi> list, com.tencent.taes.remote.api.routeguide.listener.IRoutePlanResultListener iRoutePlanResultListener);
}
