package com.tencent.taes.api.routeguide;

import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.remote.api.routeguide.bean.WecarPoi;
import com.tencent.taes.remote.api.routeguide.listener.IRoutePlanResultListener;
import com.tencent.taes.remote.api.routeguide.listener.OnSearchRouteCondInfoListener;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRouteGuideApi extends com.tencent.taes.remote.api.routeguide.IRouteGuideApi, BaseApi {
    boolean addPassnode(SearchPoi searchPoi);

    boolean addPassnode(String str, String str2, double d, double d2);

    void chooseNaviOverView();

    boolean deleteAllPassNode();

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    int getPassNodeNum();

    void goCompany();

    void goHome();

    void goHomeOrCompany(int i, int i2);

    boolean naviToHere();

    boolean requestRoutePlanOrNavi(int i, WecarPoi wecarPoi, WecarPoi wecarPoi2, int i2, ArrayList<WecarPoi> arrayList, IRoutePlanResultListener iRoutePlanResultListener);

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    void searchRouteCondInfo(int i, OnSearchRouteCondInfoListener onSearchRouteCondInfoListener);

    void selectRoutePlanIndex(int i, boolean z);

    void setCruiseSpeakType(boolean z);

    void setRouteGuideSpeakMute(boolean z);

    boolean setRoutePreference(int i);

    void startCruise(boolean z);

    void startNavi(boolean z, boolean z2, double d, double d2);

    void startNavi(boolean z, boolean z2, double d, double d2, double d3, double d4);

    boolean startNavi(boolean z, boolean z2, ArrayList<SearchPoi> arrayList);

    void stopCruise(boolean z);

    void stopNavi(boolean z);

    void updateNaviDest(double d, double d2);
}
