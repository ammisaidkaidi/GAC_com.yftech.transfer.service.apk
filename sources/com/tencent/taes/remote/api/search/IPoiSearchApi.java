package com.tencent.taes.remote.api.search;

import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.search.bean.PoiSearchResult;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.remote.api.search.listener.PoiSearchByRoadListener;
import com.tencent.taes.remote.api.search.listener.PoiSearchListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPoiSearchApi {
    void cancelSearch(String str);

    String searchKeyWord(String str, PoiSearchListener poiSearchListener);

    void searchKeyWordByRoad(String str, PoiSearchByRoadListener poiSearchByRoadListener);

    String searchNearbyLatLng(String str, LatLng latLng, PoiSearchListener poiSearchListener);

    void showPoiDetail(SearchPoi searchPoi);

    void showPoiResult(PoiSearchResult poiSearchResult);

    @Deprecated
    void showPoiResult(String str);
}
