package com.tencent.taes.api.search;

import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.search.listener.PoiSearchByRoadListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPoiSearchApi extends com.tencent.taes.remote.api.search.IPoiSearchApi, BaseApi {
    void goFavoritePage();

    void goPoiDetailPage(String str, String str2, double d, double d2);

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    void searchKeyWordByRoad(String str, PoiSearchByRoadListener poiSearchByRoadListener);

    void searchKeyword(String str);

    void searchNearby(int i, String str);

    void searchNearby(String str, LatLng latLng);
}
