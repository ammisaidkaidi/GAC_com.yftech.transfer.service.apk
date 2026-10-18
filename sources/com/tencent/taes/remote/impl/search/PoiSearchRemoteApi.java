package com.tencent.taes.remote.impl.search;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.search.IPoiSearchApi;
import com.tencent.taes.remote.api.search.IPoiSearchService;
import com.tencent.taes.remote.api.search.bean.PoiSearchResult;
import com.tencent.taes.remote.api.search.bean.SearchPoi;
import com.tencent.taes.remote.api.search.listener.IPoiSearchByRoadListener;
import com.tencent.taes.remote.api.search.listener.PoiSearchByRoadListener;
import com.tencent.taes.remote.api.search.listener.PoiSearchListener;
import com.tencent.taes.remote.impl.BaseRemoteApi;

/* loaded from: /home/user/work/dex/classes.dex */
public class PoiSearchRemoteApi extends BaseRemoteApi implements IPoiSearchApi {
    private static final String TAG = "PoiSearchRemoteApi";
    private IPoiSearchService mPoiSearchService;

    private PoiSearchRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mPoiSearchService = IPoiSearchService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("MapService", IPoiSearchService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mPoiSearchService = IPoiSearchService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public String searchKeyWord(String str, PoiSearchListener poiSearchListener) {
        Log.d(TAG, "searchKeyWord : " + str + ", PoiSearchListener : " + poiSearchListener);
        if (this.mPoiSearchService == null) {
            return null;
        }
        try {
            return this.mPoiSearchService.searchKeyWord(str, poiSearchListener.getInnerListener());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public String searchNearbyLatLng(String str, LatLng latLng, PoiSearchListener poiSearchListener) {
        Log.d(TAG, "searchNearbyLatLng : " + str + ", latLng: " + latLng + ", PoiSearchListener : " + poiSearchListener);
        if (this.mPoiSearchService == null) {
            return null;
        }
        try {
            return this.mPoiSearchService.searchNearbyLatLng(str, latLng, poiSearchListener.getInnerListener());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void cancelSearch(String str) {
        Log.d(TAG, "cancelSearch, taskId = " + str);
        if (this.mPoiSearchService != null) {
            try {
                this.mPoiSearchService.cancelSearch(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiResult(String str) {
        Log.d(TAG, "showPoiResult, taskId = " + str);
        if (this.mPoiSearchService != null) {
            try {
                this.mPoiSearchService.showPoiResult(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiResult(PoiSearchResult poiSearchResult) {
        Log.d(TAG, "showPoiResult, result = " + poiSearchResult);
        if (this.mPoiSearchService != null) {
            try {
                this.mPoiSearchService.showSearchResult(poiSearchResult);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void showPoiDetail(SearchPoi searchPoi) {
        Log.d(TAG, "showPoiDetail, searchPoi = " + searchPoi.toString());
        if (this.mPoiSearchService != null) {
            try {
                this.mPoiSearchService.showPoiDetail(searchPoi);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.search.IPoiSearchApi
    public void searchKeyWordByRoad(String str, final PoiSearchByRoadListener poiSearchByRoadListener) {
        Log.d(TAG, "searchKeyWordByRoad, keyword = " + str);
        if (this.mPoiSearchService != null) {
            try {
                this.mPoiSearchService.searchKeyWordByRoad(str, new IPoiSearchByRoadListener.Stub() { // from class: com.tencent.taes.remote.impl.search.PoiSearchRemoteApi.1
                    @Override // com.tencent.taes.remote.api.search.listener.IPoiSearchByRoadListener
                    public void onResult(String str2, String str3) throws RemoteException {
                        if (poiSearchByRoadListener != null) {
                            poiSearchByRoadListener.onResult(str2, str3);
                        }
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
