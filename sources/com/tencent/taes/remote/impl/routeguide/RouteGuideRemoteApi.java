package com.tencent.taes.remote.impl.routeguide;

import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarNaviRoadConditionInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarPoi;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarSnapShotInfo;
import com.tencent.taes.remote.api.routeguide.IRouteGuideApi;
import com.tencent.taes.remote.api.routeguide.IRouteGuideService;
import com.tencent.taes.remote.api.routeguide.IRoutePlanResultListener;
import com.tencent.taes.remote.api.routeguide.bean.WecarPoi;
import com.tencent.taes.remote.api.routeguide.listener.IRoutePlanResultListener;
import com.tencent.taes.remote.api.routeguide.listener.OnSearchRouteCondInfoListener;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import com.tencent.taes.util.GsonUtils;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class RouteGuideRemoteApi extends BaseRemoteApi implements IRouteGuideApi {
    private static final String TAG = "RouteGuideRemoteApi";
    private IRouteGuideService mRouteGuideService;

    private RouteGuideRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mRouteGuideService = IRouteGuideService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("MapService", IRouteGuideService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mRouteGuideService = IRouteGuideService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getNaviStatus() {
        Log.d(TAG, "getNaviStatus");
        if (this.mRouteGuideService == null) {
            return -1;
        }
        try {
            return this.mRouteGuideService.getNaviStatus();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarNaviRoadConditionInfo getWeCarNaviRoadConditionInfo() {
        Log.d(TAG, "getWeCarNaviRoadConditionInfo");
        if (this.mRouteGuideService == null) {
            return null;
        }
        try {
            String weCarNaviRoadConditionInfo = this.mRouteGuideService.getWeCarNaviRoadConditionInfo();
            if (TextUtils.isEmpty(weCarNaviRoadConditionInfo)) {
                return null;
            }
            return (WeCarNaviRoadConditionInfo) GsonUtils.fromJson(weCarNaviRoadConditionInfo, WeCarNaviRoadConditionInfo.class);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarSnapShotInfo getWeCarSnapShotInfo() {
        Log.d(TAG, "getWeCarSnapShotInfo");
        if (this.mRouteGuideService == null) {
            return null;
        }
        try {
            String weCarSnapShotInfo = this.mRouteGuideService.getWeCarSnapShotInfo();
            if (TextUtils.isEmpty(weCarSnapShotInfo)) {
                return null;
            }
            return (WeCarSnapShotInfo) GsonUtils.fromJson(weCarSnapShotInfo, WeCarSnapShotInfo.class);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getRouteGuideSpeakMute() {
        Log.d(TAG, "getRouteGuideSpeakMute");
        if (this.mRouteGuideService == null) {
            return -1;
        }
        try {
            return this.mRouteGuideService.getRouteGuideSpeakMute();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public void searchRouteCondInfo(int i, OnSearchRouteCondInfoListener onSearchRouteCondInfoListener) {
        Log.d(TAG, "searchRouteCondInfo  distance:" + i);
        if (this.mRouteGuideService != null) {
            try {
                this.mRouteGuideService.searchRouteCondInfo(i, onSearchRouteCondInfoListener.getInnerListener());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getRoutePlanCount() {
        Log.d(TAG, "getRoutePlanCount  ");
        if (this.mRouteGuideService == null) {
            return -1;
        }
        try {
            return this.mRouteGuideService.getRoutePlanCount();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public WeCarPoi getRoutePlanDestNode() {
        Log.d(TAG, "getRoutePlanDestNode  ");
        if (this.mRouteGuideService != null) {
            try {
                String routePlanDestNode = this.mRouteGuideService.getRoutePlanDestNode();
                if (TextUtils.isEmpty(routePlanDestNode)) {
                    return null;
                }
                return (WeCarPoi) GsonUtils.fromJson(routePlanDestNode, WeCarPoi.class);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public void searchRoutePlanResult(WecarPoi wecarPoi, WecarPoi wecarPoi2, int i, List<WecarPoi> list, final IRoutePlanResultListener iRoutePlanResultListener) {
        Log.d(TAG, "searchRoutePlanResult");
        if (this.mRouteGuideService != null) {
            try {
                this.mRouteGuideService.searchRoutePlanResult(wecarPoi, wecarPoi2, i, list, new IRoutePlanResultListener.Stub() { // from class: com.tencent.taes.remote.impl.routeguide.RouteGuideRemoteApi.1
                    @Override // com.tencent.taes.remote.api.routeguide.IRoutePlanResultListener
                    public void onRoutePlanResult(String str) throws RemoteException {
                        if (iRoutePlanResultListener != null) {
                            iRoutePlanResultListener.onResult(str);
                        }
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public String getPoiDetailNaviCoordinate() {
        Log.d(TAG, "getPoiDetailNaviCoordinate");
        if (this.mRouteGuideService == null) {
            return null;
        }
        try {
            return this.mRouteGuideService.getPoiDetailNaviCoordinate();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.routeguide.IRouteGuideApi
    public int getPassNodeNum() {
        Log.d(TAG, "getPassNodeNum");
        if (this.mRouteGuideService == null) {
            return 0;
        }
        try {
            return this.mRouteGuideService.getPassNodeNum();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
