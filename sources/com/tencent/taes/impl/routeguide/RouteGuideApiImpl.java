package com.tencent.taes.impl.routeguide;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.taes.TaesSDK;
import com.tencent.taes.TaesSDKHelper;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarNaviRoadConditionInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarPoi;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarSnapShotInfo;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.bean.IPCEvent;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.impl.base.BaseConnectApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.remote.api.location.bean.LocationBean;
import com.tencent.taes.remote.api.open.OpenApiConsts;
import com.tencent.taes.remote.api.routeguide.IRouteGuideApi;
import com.tencent.taes.remote.api.routeguide.bean.WecarPoi;
import com.tencent.taes.remote.api.routeguide.listener.IRoutePlanResultListener;
import com.tencent.taes.remote.api.routeguide.listener.OnSearchRouteCondInfoListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.util.config.ConfigManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class RouteGuideApiImpl extends BaseConnectApi<IRouteGuideApi> implements com.tencent.taes.api.routeguide.IRouteGuideApi {
    public static final String TAG = "RouteGuideApiImp";
    private IRouteGuideApi mRouteGuideApi = null;
    private String mIntentScheme = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_URI_SCHEME);
    private String mIntentAction = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_API_ACTION);

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public RouteGuideApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("MapService", new TAESCommonListener() { // from class: com.tencent.taes.impl.routeguide.RouteGuideApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                RouteGuideApiImpl.this.getRouteGuideApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(RouteGuideApiImpl.TAG, "MapServiceloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IRouteGuideApi getRouteGuideApi() {
        if (this.mRouteGuideApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("MapService", IRouteGuideApi.class, null);
            if (api.isSuccess()) {
                this.mRouteGuideApi = (IRouteGuideApi) api.data;
                registerInnerConnectListener(this.mRouteGuideApi);
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mRouteGuideApi;
    }

    @Override // com.tencent.taes.impl.base.BaseConnectApi, com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        super.registerConnectListener(iServerConnectListener);
        if (this.mRouteGuideApi == null) {
            Log.e(TAG, "registerInnerConnectListener Exception：mRouteGuideApi = " + this.mRouteGuideApi);
            getRouteGuideApi();
            return;
        }
        registerInnerConnectListener(this.mRouteGuideApi);
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarNaviRoadConditionInfo getWeCarNaviRoadConditionInfo() {
        Log.d(TAG, "getNaviStatus");
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getWeCarNaviRoadConditionInfo();
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarSnapShotInfo getWeCarSnapShotInfo() {
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getWeCarSnapShotInfo();
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getRouteGuideSpeakMute() {
        Log.d(TAG, "getRouteGuideSpeakMute");
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getRouteGuideSpeakMute();
        }
        return -1;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi, com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public void searchRouteCondInfo(int i, OnSearchRouteCondInfoListener onSearchRouteCondInfoListener) {
        Log.d(TAG, "searchRouteCondInfo distance:" + i);
        if (getRouteGuideApi() != null) {
            getRouteGuideApi().searchRouteCondInfo(i, onSearchRouteCondInfoListener);
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getRoutePlanCount() {
        Log.d(TAG, "getRoutePlanCount");
        if (getRouteGuideApi() == null) {
            return -1;
        }
        int routePlanCount = getRouteGuideApi().getRoutePlanCount();
        Log.d(TAG, "getRoutePlanCount: " + routePlanCount);
        return routePlanCount;
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarPoi getRoutePlanDestNode() {
        Log.d(TAG, "getRoutePlanDestNode ");
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getRoutePlanDestNode();
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public void searchRoutePlanResult(WecarPoi wecarPoi, WecarPoi wecarPoi2, int i, List<WecarPoi> list, IRoutePlanResultListener iRoutePlanResultListener) {
        if (getRouteGuideApi() != null) {
            getRouteGuideApi().searchRoutePlanResult(wecarPoi, wecarPoi2, i, list, iRoutePlanResultListener);
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public String getPoiDetailNaviCoordinate() {
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getPoiDetailNaviCoordinate();
        }
        return null;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void chooseNaviOverView() {
        Log.d(TAG, OpenApiConsts.Host.CHOOSE_NAVI_OVERVIEW);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.CHOOSE_NAVI_OVERVIEW + "?"));
        intent.putExtra("from", 1);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void selectRoutePlanIndex(int i, boolean z) {
        Log.d(TAG, "selectRoutePlanIndex  index:" + i + " anim:" + z);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.SELECT_ROUTE_PLAN + "?"));
        intent.putExtra(OpenApiConsts.Key.ROUTE_PLAN_INDEX, i);
        intent.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, z);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void startNavi(boolean z, boolean z2, double d, double d2) {
        Log.d(TAG, "startNavi : isRealNavi ——>> " + z + " , forceStartSpeak ——>> " + z2 + " , destLatitude ——>> " + d + " , destLongitude ——>> " + d2);
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(OpenApiConsts.Host.START_STOP_NAVI);
        sb.append("?");
        intent.setData(Uri.parse(sb.toString()));
        intent.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 1);
        intent.putExtra(OpenApiConsts.Key.IS_REAL_NAVI, z);
        intent.putExtra(OpenApiConsts.Key.FORCE_START_SPEAK, z2);
        intent.putExtra(OpenApiConsts.Key.DEST_LATITUDE, d);
        intent.putExtra(OpenApiConsts.Key.DEST_LONGITUDE, d2);
        intent.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, 1);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void startNavi(boolean z, boolean z2, double d, double d2, double d3, double d4) {
        Log.d(TAG, "startNavi : isRealNavi ——>> " + z + " , forceStartSpeak ——>> " + z2 + " , startLatitude ——>> " + d + " , startLongitude ——>> " + d2 + " , destLatitude ——>> " + d3 + " , destLongitude ——>> " + d4);
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(OpenApiConsts.Host.START_STOP_NAVI);
        sb.append("?");
        intent.setData(Uri.parse(sb.toString()));
        intent.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 1);
        intent.putExtra(OpenApiConsts.Key.IS_REAL_NAVI, z);
        intent.putExtra(OpenApiConsts.Key.FORCE_START_SPEAK, z2);
        intent.putExtra(OpenApiConsts.Key.START_LATITUDE, d);
        intent.putExtra(OpenApiConsts.Key.START_LONGITUDE, d2);
        intent.putExtra(OpenApiConsts.Key.DEST_LATITUDE, d3);
        intent.putExtra(OpenApiConsts.Key.DEST_LONGITUDE, d4);
        intent.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, 2);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean startNavi(boolean z, boolean z2, ArrayList<SearchPoi> arrayList) {
        if (arrayList == null) {
            Log.d(TAG, "startNavi fail,searchPoiList ==null");
            return false;
        }
        if (arrayList.size() == 0 || arrayList.size() > 3) {
            Log.d(TAG, "startNavi fail,searchPoiList size must > 0 and < 4");
            return false;
        }
        Log.d(TAG, "startNavi : isRealNavi ——>> " + z + " , forceStartSpeak ——>> " + z2 + " , searchPoiList size ——>> " + arrayList.size());
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(OpenApiConsts.Host.START_STOP_NAVI);
        sb.append("?");
        intent.setData(Uri.parse(sb.toString()));
        intent.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 1);
        intent.putExtra(OpenApiConsts.Key.IS_REAL_NAVI, z);
        intent.putExtra(OpenApiConsts.Key.FORCE_START_SPEAK, z2);
        intent.putParcelableArrayListExtra(OpenApiConsts.Key.PASSNODE_DEST_POILIST, arrayList);
        intent.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, 3);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean addPassnode(SearchPoi searchPoi) {
        int naviStatus = getNaviStatus();
        Log.d(TAG, "naviStatus :  ——>> " + naviStatus);
        if (naviStatus != 1) {
            Log.d(TAG, "addPassnode fail,not in navi");
            return false;
        }
        if (searchPoi == null) {
            Log.d(TAG, "addPassnode fail,searchPoi==null");
            return false;
        }
        Log.d(TAG, "addPassnode : poi ——>> " + searchPoi.toString());
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.ADD_PASSNODE + "?"));
        intent.putExtra(OpenApiConsts.Key.ADD_PASSNODE, searchPoi);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void goHomeOrCompany(int i, int i2) {
        Log.d(TAG, "goHomeOrCompany actionType: " + i + " ,poiType: " + i2);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.GO_HOME_COMPANY + "?"));
        intent.putExtra("from", 1);
        intent.putExtra(OpenApiConsts.Key.ACTION_TYPE, i);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        if (i2 == 0) {
            intent.putExtra(OpenApiConsts.Key.GO_HOME_COMPANY_TYPE, 1);
        } else if (i2 == 1) {
            intent.putExtra(OpenApiConsts.Key.GO_HOME_COMPANY_TYPE, 2);
        }
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean addPassnode(String str, String str2, double d, double d2) {
        int naviStatus = getNaviStatus();
        Log.d(TAG, "naviStatus :  ——>> " + naviStatus);
        if (naviStatus != 1) {
            Log.d(TAG, "addPassnode fail,not in navi");
            return false;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || d <= 1.0d || d >= 180.0d || d2 <= 1.0d || d2 >= 180.0d) {
            Log.d(TAG, "addPassnode fail,poi param invaild");
            return false;
        }
        Log.d(TAG, "addPassnode : poi ——>> poiName:" + str + " poiAddress: " + str2 + " latitude: " + d + " longitude: " + d2);
        Intent intent = new Intent(this.mIntentAction);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mIntentScheme);
        sb.append("://");
        sb.append(OpenApiConsts.Host.ADD_PASSNODE);
        sb.append("?");
        intent.setData(Uri.parse(sb.toString()));
        intent.putExtra(OpenApiConsts.Key.POI_NAME, str);
        intent.putExtra(OpenApiConsts.Key.POI_ADDRESS, str2);
        intent.putExtra("latitude", d);
        intent.putExtra("longitude", d2);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean deleteAllPassNode() {
        int naviStatus = getNaviStatus();
        Log.d(TAG, "naviStatus :  ——>> " + naviStatus);
        if (naviStatus != 1) {
            Log.d(TAG, "deleteAllPassNode fail,not in navi");
            return false;
        }
        int passNodeNum = getPassNodeNum();
        if (passNodeNum == 0) {
            Log.d(TAG, "deleteAllPassNode fail,passNodeNum: " + passNodeNum);
            return false;
        }
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.DELETE_ALL_PASSNODE + "?"));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi, com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getPassNodeNum() {
        Log.d(TAG, "getPassNodeNum");
        if (getRouteGuideApi() != null) {
            return getRouteGuideApi().getPassNodeNum();
        }
        return 0;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean setRoutePreference(int i) {
        int naviStatus = getNaviStatus();
        Log.d(TAG, "setRoutePreference :  ——>> " + naviStatus);
        if (naviStatus != 1) {
            Bundle bundle = new Bundle();
            bundle.putInt(OpenApiConsts.Key.ROUTE_PREFERENCE_ID, i);
            TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.SET_ROUTEP_REFERENCE, bundle));
        } else {
            Intent intent = new Intent(this.mIntentAction);
            intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.SET_ROUTEP_REFERENCE + "?"));
            intent.putExtra(OpenApiConsts.Key.ROUTE_PREFERENCE_ID, i);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent);
        }
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean requestRoutePlanOrNavi(int i, WecarPoi wecarPoi, WecarPoi wecarPoi2, int i2, ArrayList<WecarPoi> arrayList, IRoutePlanResultListener iRoutePlanResultListener) {
        WecarPoi wecarPoi3;
        if (wecarPoi2 == null) {
            Log.d(TAG, "requestRoutePlanOrNavi fail,destNode == null");
            return false;
        }
        Log.d(TAG, "requestRoutePlanOrNavi actionType : " + i);
        double d = wecarPoi2.latitude;
        double d2 = wecarPoi2.longitude;
        String str = wecarPoi2.name;
        String str2 = wecarPoi2.address;
        Log.d(TAG, "requestRoutePlanOrNavi destNode : " + wecarPoi2.toString());
        if (d <= 1.0d || d >= 180.0d || d2 <= 1.0d || d2 >= 180.0d) {
            Log.d(TAG, "destNode param invaild");
            return false;
        }
        if (arrayList != null && arrayList.size() > 2) {
            Log.d(TAG, "passNodeList size must <3");
            return false;
        }
        if (i == 0) {
            if (getNaviStatus() == 1) {
                Log.d(TAG, "jump routeplan fail,reason: currently in navigation");
                return false;
            }
            Intent intent = new Intent(this.mIntentAction);
            intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.JUMP_ROUTE_PAGE + "?"));
            intent.putExtra(OpenApiConsts.Key.POI_NAME, str);
            intent.putExtra(OpenApiConsts.Key.POI_ADDRESS, str2);
            intent.putExtra("latitude", d);
            intent.putExtra("longitude", d2);
            intent.putExtra(OpenApiConsts.Key.ROUTE_PREFERENCE_ID, i2);
            if (arrayList != null) {
                arrayList.add(wecarPoi2);
            }
            intent.putParcelableArrayListExtra(OpenApiConsts.Key.PASSNODE_DEST_POILIST, arrayList);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent);
        } else if (i == 1) {
            Intent intent2 = new Intent(this.mIntentAction);
            intent2.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.START_STOP_NAVI + "?"));
            intent2.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 1);
            intent2.putExtra(OpenApiConsts.Key.IS_REAL_NAVI, true);
            intent2.putExtra(OpenApiConsts.Key.FORCE_START_SPEAK, true);
            intent2.putExtra(OpenApiConsts.Key.DEST_LATITUDE, d);
            intent2.putExtra(OpenApiConsts.Key.DEST_LONGITUDE, d2);
            intent2.putExtra(OpenApiConsts.Key.ROUTE_PREFERENCE_ID, i2);
            if (arrayList != null) {
                arrayList.add(wecarPoi2);
                intent2.putParcelableArrayListExtra(OpenApiConsts.Key.PASSNODE_DEST_POILIST, arrayList);
                intent2.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, 3);
            } else {
                intent2.putExtra(OpenApiConsts.Key.START_NAVI_TYPE, 1);
            }
            intent2.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent2);
        } else {
            if (wecarPoi == null) {
                wecarPoi3 = new WecarPoi();
                LocationBean curLocation = TaesSDK.getLocationApi().getCurLocation();
                wecarPoi3.latitude = curLocation.latitude;
                wecarPoi3.longitude = curLocation.longitude;
            } else {
                Log.d(TAG, "requestRoutePlanOrNavi startNode : " + wecarPoi.toString());
                if (wecarPoi.latitude <= 1.0d || wecarPoi.latitude >= 180.0d || wecarPoi.longitude <= 1.0d || wecarPoi.longitude >= 180.0d) {
                    Log.d(TAG, "searchRoutePlanResult fail,reason: startNode param invaild");
                    return false;
                }
                wecarPoi3 = wecarPoi;
            }
            if (getNaviStatus() == 1 || getRoutePlanCount() > 0) {
                Log.d(TAG, "searchRoutePlanResult fail,reason: currently in navigation or routeplan");
                return false;
            }
            searchRoutePlanResult(wecarPoi3, wecarPoi2, i2, arrayList, iRoutePlanResultListener);
        }
        return true;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public boolean naviToHere() {
        String poiDetailNaviCoordinate = getPoiDetailNaviCoordinate();
        if (!TextUtils.isEmpty(poiDetailNaviCoordinate)) {
            try {
                JSONObject jSONObject = new JSONObject(poiDetailNaviCoordinate);
                TaesSDK.getRouteGuideApi().startNavi(true, true, jSONObject.getDouble("latitude"), jSONObject.getDouble("longitude"));
                return true;
            } catch (JSONException e) {
                e.printStackTrace();
                return true;
            }
        }
        Log.d(TAG, "naviToHere fail,reason: currently not in POI details page");
        return false;
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void stopNavi(boolean z) {
        Log.d(TAG, "stopNavi : closeSpeak ——>> " + z);
        Bundle bundle = new Bundle();
        bundle.putInt(OpenApiConsts.Key.START_STOP_TYPE, 2);
        bundle.putBoolean(OpenApiConsts.Key.CLOSE_SPEAK, z);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.START_STOP_NAVI, bundle));
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void updateNaviDest(double d, double d2) {
        Log.d(TAG, "updateNaviDest : destLatitude ——>> " + d + " , destLongitude ——>> " + d2);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.UPDATE_NAVI_DEST + "?"));
        intent.putExtra(OpenApiConsts.Key.DEST_LATITUDE, d);
        intent.putExtra(OpenApiConsts.Key.DEST_LONGITUDE, d2);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void startCruise(boolean z) {
        Log.d(TAG, "startCruise : forceStartSpeak ——>> " + z);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.START_STOP_CRUISE + "?"));
        intent.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 1);
        intent.putExtra(OpenApiConsts.Key.CLOSE_SPEAK, z);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void stopCruise(boolean z) {
        Log.d(TAG, "stopCruise : closeSpeak ——>> " + z);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.START_STOP_CRUISE + "?"));
        intent.putExtra(OpenApiConsts.Key.START_STOP_TYPE, 2);
        intent.putExtra(OpenApiConsts.Key.CLOSE_SPEAK, z);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void setCruiseSpeakType(boolean z) {
        Log.d(TAG, "setCruiseSpeakType : open ——>> " + z);
        Bundle bundle = new Bundle();
        bundle.putBoolean(OpenApiConsts.Key.CLOSE_SPEAK, z);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.SET_CRUISE_SPEAK_TYPE, bundle));
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void setRouteGuideSpeakMute(boolean z) {
        Log.d(TAG, "setRouteGuideSpeakMute : bMute ——>> " + z);
        Bundle bundle = new Bundle();
        bundle.putBoolean(OpenApiConsts.Key.CLOSE_SPEAK, z);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.SET_ROUTE_GUIDE_SPEAK_MUTE, bundle));
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void goHome() {
        Log.d(TAG, "goHome");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.GO_HOME_COMPANY + "?"));
        intent.putExtra(OpenApiConsts.Key.GO_HOME_COMPANY_TYPE, 1);
        intent.putExtra("from", 1);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.routeguide.IRouteGuideApi
    public void goCompany() {
        Log.d(TAG, "goCompany");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.GO_HOME_COMPANY + "?"));
        intent.putExtra(OpenApiConsts.Key.GO_HOME_COMPANY_TYPE, 2);
        intent.putExtra("from", 1);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
        unregisterInnerConnectListener(this.mRouteGuideApi);
        unregisterConnectListener();
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getNaviStatus() {
        Log.d(TAG, "getNaviStatus");
        if (getRouteGuideApi() == null) {
            return -1;
        }
        int naviStatus = getRouteGuideApi().getNaviStatus();
        Log.d(TAG, "getNaviStatus: " + naviStatus);
        return naviStatus;
    }
}
