package com.tencent.taes.impl.search;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.taes.TaesSDKHelper;
import com.tencent.taes.api.search.IPoiSearchApi;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.search.bean.PoiSearchResult;
import com.tencent.taes.remote.api.search.bean.SearchApiConsts;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.remote.api.search.listener.PoiSearchByRoadListener;
import com.tencent.taes.remote.api.search.listener.PoiSearchListener;
import com.tencent.taes.util.config.ConfigManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class PoiSearchApiImpl extends AbstractApi implements IPoiSearchApi {
    public static final String TAG = "PoiSearchApi";
    private com.tencent.taes.remote.api.search.IPoiSearchApi mPoiSearchApi = null;
    private String mIntentScheme = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_URI_SCHEME);
    private String mIntentAction = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_API_ACTION);

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public PoiSearchApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("MapService", new TAESCommonListener() { // from class: com.tencent.taes.impl.search.PoiSearchApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                PoiSearchApiImpl.this.getSearchApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(PoiSearchApiImpl.TAG, "MapServiceloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    public com.tencent.taes.remote.api.search.IPoiSearchApi getSearchApi() {
        if (this.mPoiSearchApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("MapService", com.tencent.taes.remote.api.search.IPoiSearchApi.class, null);
            if (api.isSuccess()) {
                this.mPoiSearchApi = (com.tencent.taes.remote.api.search.IPoiSearchApi) api.data;
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mPoiSearchApi;
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public String searchKeyWord(String str, PoiSearchListener poiSearchListener) {
        if (TextUtils.isEmpty(str)) {
            Intent intent = new Intent(this.mIntentAction);
            intent.setData(Uri.parse(this.mIntentScheme + "://" + SearchApiConsts.Host.OPEN_SEARCH_PAGE + "?"));
            intent.putExtra("from", 1);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent);
            return null;
        }
        if (getSearchApi() != null) {
            return getSearchApi().searchKeyWord(str, poiSearchListener);
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public String searchNearbyLatLng(String str, LatLng latLng, PoiSearchListener poiSearchListener) {
        if (TextUtils.isEmpty(str) || poiSearchListener == null) {
            Log.e(TAG, "keyword or listener is null");
            return null;
        }
        if (getSearchApi() != null) {
            return getSearchApi().searchNearbyLatLng(str, latLng, poiSearchListener);
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void cancelSearch(String str) {
        if (getSearchApi() != null) {
            getSearchApi().cancelSearch(str);
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiResult(String str) {
        if (getSearchApi() != null) {
            getSearchApi().showPoiResult(str);
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiResult(PoiSearchResult poiSearchResult) {
        if (getSearchApi() != null) {
            getSearchApi().showPoiResult(poiSearchResult);
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiDetail(SearchPoi searchPoi) {
        if (getSearchApi() != null) {
            getSearchApi().showPoiDetail(searchPoi);
        }
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi
    public void searchNearby(int i, String str) {
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(SearchApiConsts.Host.NEARBY_SEARCH);
        sb.append("?");
        sb.append(SearchApiConsts.Key.KEY_SEARCH_TYPE);
        sb.append("=");
        sb.append(i);
        sb.append("&");
        sb.append(SearchApiConsts.Key.SEARCH_POI_KEY_WORD);
        sb.append("=");
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        sb.append(str);
        intent.setData(Uri.parse(sb.toString()));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi
    public void searchNearby(String str, LatLng latLng) {
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(SearchApiConsts.Host.NEARBY_SEARCH);
        sb.append("?");
        sb.append(SearchApiConsts.Key.SEARCH_POI_KEY_WORD);
        sb.append("=");
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        sb.append(str);
        intent.setData(Uri.parse(sb.toString()));
        intent.putExtra(SearchApiConsts.Key.KEY_SEARCH_LAT_LNG, latLng);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi
    public void searchKeyword(String str) {
        Intent intent = new Intent(this.mIntentAction);
        if (TextUtils.isEmpty(str)) {
            intent.setData(Uri.parse(this.mIntentScheme + "://" + SearchApiConsts.Host.OPEN_SEARCH_PAGE + "?"));
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent);
            return;
        }
        intent.setData(Uri.parse(this.mIntentScheme + "://" + SearchApiConsts.Host.OPEN_SEARCH_RESULT_PAGE + "?" + SearchApiConsts.Key.SEARCH_POI_KEY_WORD + "=" + str));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi
    public void goFavoritePage() {
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + SearchApiConsts.Host.OPEN_FAVORITE_PAGE + "?"));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi
    public void goPoiDetailPage(String str, String str2, double d, double d2) {
        Bundle bundle = new Bundle();
        bundle.putString("name", str);
        bundle.putString("address", str2);
        bundle.putDouble("lat", d);
        bundle.putDouble("lon", d2);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + SearchApiConsts.Host.OPEN_POI_DETAIL_PAGE + "?"));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        intent.putExtras(bundle);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.search.IPoiSearchApi, com.tencent.taes.remote.api.search.IPoiSearchApi
    public void searchKeyWordByRoad(String str, PoiSearchByRoadListener poiSearchByRoadListener) {
        if (getSearchApi() != null) {
            getSearchApi().searchKeyWordByRoad(str, poiSearchByRoadListener);
        }
    }
}
