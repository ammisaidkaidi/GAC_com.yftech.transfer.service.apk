package com.tencent.taes.impl.infodispatch;

import android.util.Log;
import com.tencent.taes.api.infodispatch.InfoDispatchApi;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.impl.base.BaseConnectApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi;
import com.tencent.taes.remote.api.infodispatcher.listener.OnAddPassPoiListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnAppEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnArriveEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnCameraInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnDestinationParkingUpdateListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnDrLocationInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnETAInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnEnlargeMapInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnFavoritePoiChangeListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnGuideInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnHighwayInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnLaneLineInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnLinkInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnMapModeEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnMapMonitorListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnMediaInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnNaviRoadConditionInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnOtherInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnPushPoiListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnRouteEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnRouteGuideSpeakModeEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnRouteInfoChangedListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnStartStopEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnSubscribeMessageListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnWeChatMessageListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnYawEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnZoneSpeedInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.teamtrip.OnExitTeamTripEventListener;
import com.tencent.taes.remote.api.infodispatcher.listener.teamtrip.OnTeamTripChangeEventListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class InfoDispatchApiImpl extends BaseConnectApi<IInfoDispatchApi> implements InfoDispatchApi {
    private static final String TAG = "InfoDispatchApiImpl";
    private IInfoDispatchApi mInfoDispatchRemoteApi;
    private final List<OnArriveEventListener> mArriveEventListeners = new CopyOnWriteArrayList();
    private final List<OnEnlargeMapInfoListener> mEnlargedMapInfoListeners = new CopyOnWriteArrayList();
    private final List<OnETAInfoListener> mETAInfoListeners = new CopyOnWriteArrayList();
    private final List<OnGuideInfoListener> mGuideInfoListeners = new CopyOnWriteArrayList();
    private final List<OnHighwayInfoListener> mHighwayInfoListeners = new CopyOnWriteArrayList();
    private final List<OnLaneLineInfoListener> mLaneLineInfoListeners = new CopyOnWriteArrayList();
    private final List<OnRouteEventListener> mRouteEventListeners = new CopyOnWriteArrayList();
    private final List<OnStartStopEventListener> mStartStopEventListeners = new CopyOnWriteArrayList();
    private final List<OnYawEventListener> mYawEventListeners = new CopyOnWriteArrayList();
    private final List<OnZoneSpeedInfoListener> mZoneSpeedInfoListeners = new CopyOnWriteArrayList();
    private final List<OnCameraInfoListener> mCameraInfoListeners = new CopyOnWriteArrayList();
    private final List<OnNaviRoadConditionInfoListener> mNaviRoadConditionInfoListeners = new CopyOnWriteArrayList();
    private final List<OnMediaInfoListener> mMediaInfoListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatMessageListener> mWeChatMessageListeners = new CopyOnWriteArrayList();
    private final List<OnOtherInfoListener> mOtherInfoListeners = new CopyOnWriteArrayList();
    private final List<OnMapMonitorListener> mMapMonitorListeners = new CopyOnWriteArrayList();
    private final List<OnAppEventListener> mAppEventListeners = new CopyOnWriteArrayList();
    private final List<OnDrLocationInfoListener> mDrLocationInfoListeners = new CopyOnWriteArrayList();
    private final List<OnLinkInfoListener> mLinkInfoListeners = new CopyOnWriteArrayList();
    private final List<OnMapModeEventListener> mMapModeEventListeners = new CopyOnWriteArrayList();
    private final List<OnExitTeamTripEventListener> mOnExitTeamTripEventListeners = new CopyOnWriteArrayList();
    private final List<OnTeamTripChangeEventListener> mOnTeamTripChangeEventListeners = new CopyOnWriteArrayList();
    private final List<OnRouteGuideSpeakModeEventListener> mOnRouteGuideSpeakModeEventListener = new CopyOnWriteArrayList();
    private final List<OnFavoritePoiChangeListener> mOnFavoritePoiChangeListeners = new CopyOnWriteArrayList();
    private final List<OnRouteInfoChangedListener> mRouteInfoChangedListeners = new CopyOnWriteArrayList();
    private final List<OnAddPassPoiListener> mOnAddPassPoiListeners = new CopyOnWriteArrayList();
    private final List<OnDestinationParkingUpdateListener> mOnDestinationParkingUpdateListeners = new CopyOnWriteArrayList();
    private final List<OnPushPoiListener> mOnPushPoiListeners = new CopyOnWriteArrayList();
    private final List<OnSubscribeMessageListener> mOnSubscribeMessageListeners = new CopyOnWriteArrayList();

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public InfoDispatchApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("InfoDispatcher", new TAESCommonListener() { // from class: com.tencent.taes.impl.infodispatch.InfoDispatchApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                InfoDispatchApiImpl.this.getInfoDispatchRemoteApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                InfoDispatchApiImpl.this.printMsg("TAESFrameworkManager.getInstance().getInfoDispatchRemoteApi 获取失败 onFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    private void unInit() {
        unInitListener();
        clearListener();
        this.mInfoDispatchRemoteApi = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getInfoDispatchRemoteApi() {
        APIResult api = TAESFrameworkManager.getInstance().getApi("InfoDispatcher", IInfoDispatchApi.class, null);
        if (api.isSuccess()) {
            this.mInfoDispatchRemoteApi = (IInfoDispatchApi) api.data;
            initListener();
            registerInnerConnectListener(this.mInfoDispatchRemoteApi);
            return;
        }
        printMsg("TAESFrameworkManager.getInstance().getInfoDispatchRemoteApi 获取失败 " + api.codeDescription());
        Log.e(TAG, "getAPI Fail:" + api.codeDescription());
    }

    @Override // com.tencent.taes.impl.base.BaseConnectApi, com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        super.registerConnectListener(iServerConnectListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerInnerConnectListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            registerInnerConnectListener(this.mInfoDispatchRemoteApi);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerArriveEventListener(OnArriveEventListener onArriveEventListener) {
        if (onArriveEventListener == null) {
            return;
        }
        if (!this.mArriveEventListeners.contains(onArriveEventListener)) {
            this.mArriveEventListeners.add(onArriveEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerArriveEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerArriveEventListener(onArriveEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterArriveEventListener(OnArriveEventListener onArriveEventListener) {
        if (onArriveEventListener == null) {
            return;
        }
        this.mArriveEventListeners.remove(onArriveEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterArriveEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterArriveEventListener(onArriveEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerEnlargeMapInfoListenerr(OnEnlargeMapInfoListener onEnlargeMapInfoListener) {
        if (onEnlargeMapInfoListener == null) {
            return;
        }
        if (!this.mEnlargedMapInfoListeners.contains(onEnlargeMapInfoListener)) {
            this.mEnlargedMapInfoListeners.add(onEnlargeMapInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerEnlargeMapInfoListenerr Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerEnlargeMapInfoListenerr(onEnlargeMapInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterEnlargeMapInfoListener(OnEnlargeMapInfoListener onEnlargeMapInfoListener) {
        if (onEnlargeMapInfoListener == null) {
            return;
        }
        this.mEnlargedMapInfoListeners.remove(onEnlargeMapInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterEnlargeMapInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterEnlargeMapInfoListener(onEnlargeMapInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerETAInfoListener(OnETAInfoListener onETAInfoListener) {
        if (onETAInfoListener == null) {
            return;
        }
        if (!this.mETAInfoListeners.contains(onETAInfoListener)) {
            this.mETAInfoListeners.add(onETAInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerETAInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerETAInfoListener(onETAInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterETAInfoListener(OnETAInfoListener onETAInfoListener) {
        if (onETAInfoListener == null) {
            return;
        }
        this.mETAInfoListeners.remove(onETAInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterETAInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterETAInfoListener(onETAInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerGuideInfoListener(OnGuideInfoListener onGuideInfoListener) {
        if (onGuideInfoListener == null) {
            return;
        }
        if (!this.mGuideInfoListeners.contains(onGuideInfoListener)) {
            this.mGuideInfoListeners.add(onGuideInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerGuideInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerGuideInfoListener(onGuideInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterGuideInfoListener(OnGuideInfoListener onGuideInfoListener) {
        if (onGuideInfoListener == null) {
            return;
        }
        this.mGuideInfoListeners.remove(onGuideInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterGuideInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterGuideInfoListener(onGuideInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener) {
        if (onHighwayInfoListener == null) {
            return;
        }
        if (!this.mHighwayInfoListeners.contains(onHighwayInfoListener)) {
            this.mHighwayInfoListeners.add(onHighwayInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerHighwayInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerHighwayInfoListener(onHighwayInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener) {
        if (onHighwayInfoListener == null) {
            return;
        }
        this.mHighwayInfoListeners.remove(onHighwayInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterHighwayInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterHighwayInfoListener(onHighwayInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener) {
        if (onLaneLineInfoListener == null) {
            return;
        }
        if (!this.mLaneLineInfoListeners.contains(onLaneLineInfoListener)) {
            this.mLaneLineInfoListeners.add(onLaneLineInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerLaneLineInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerLaneLineInfoListener(onLaneLineInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener) {
        if (onLaneLineInfoListener == null) {
            return;
        }
        this.mLaneLineInfoListeners.remove(onLaneLineInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterLaneLineInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterLaneLineInfoListener(onLaneLineInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerRouteEventListener(OnRouteEventListener onRouteEventListener) {
        if (onRouteEventListener == null) {
            return;
        }
        if (!this.mRouteEventListeners.contains(onRouteEventListener)) {
            this.mRouteEventListeners.add(onRouteEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerRouteEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerRouteEventListener(onRouteEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterRouteEventListener(OnRouteEventListener onRouteEventListener) {
        if (onRouteEventListener == null) {
            return;
        }
        this.mRouteEventListeners.remove(onRouteEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterRouteEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterRouteEventListener(onRouteEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerStartStopEventListener(OnStartStopEventListener onStartStopEventListener) {
        if (onStartStopEventListener == null) {
            return;
        }
        if (!this.mStartStopEventListeners.contains(onStartStopEventListener)) {
            this.mStartStopEventListeners.add(onStartStopEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerStartStopEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerStartStopEventListener(onStartStopEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterStartStopEventListener(OnStartStopEventListener onStartStopEventListener) {
        if (onStartStopEventListener == null) {
            return;
        }
        this.mStartStopEventListeners.remove(onStartStopEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterStartStopEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterStartStopEventListener(onStartStopEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerYawEventListener(OnYawEventListener onYawEventListener) {
        if (onYawEventListener == null) {
            return;
        }
        if (!this.mYawEventListeners.contains(onYawEventListener)) {
            this.mYawEventListeners.add(onYawEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerYawEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerYawEventListener(onYawEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterYawEventListener(OnYawEventListener onYawEventListener) {
        if (onYawEventListener == null) {
            return;
        }
        this.mYawEventListeners.remove(onYawEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterYawEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterYawEventListener(onYawEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener) {
        if (onZoneSpeedInfoListener == null) {
            return;
        }
        if (!this.mZoneSpeedInfoListeners.contains(onZoneSpeedInfoListener)) {
            this.mZoneSpeedInfoListeners.add(onZoneSpeedInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerZoneSpeedInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerZoneSpeedInfoListener(onZoneSpeedInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener) {
        if (onZoneSpeedInfoListener == null) {
            return;
        }
        this.mZoneSpeedInfoListeners.remove(onZoneSpeedInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterZoneSpeedInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterZoneSpeedInfoListener(onZoneSpeedInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerCameraInfoListener(OnCameraInfoListener onCameraInfoListener) {
        if (onCameraInfoListener == null) {
            return;
        }
        if (!this.mCameraInfoListeners.contains(onCameraInfoListener)) {
            this.mCameraInfoListeners.add(onCameraInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerCameraInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerCameraInfoListener(onCameraInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterCameraInfoListener(OnCameraInfoListener onCameraInfoListener) {
        if (onCameraInfoListener == null) {
            return;
        }
        this.mCameraInfoListeners.remove(onCameraInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterCameraInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterCameraInfoListener(onCameraInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener) {
        if (onNaviRoadConditionInfoListener == null) {
            return;
        }
        if (!this.mNaviRoadConditionInfoListeners.contains(onNaviRoadConditionInfoListener)) {
            this.mNaviRoadConditionInfoListeners.add(onNaviRoadConditionInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerNaviRoadConditionInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerNaviRoadConditionInfoListener(onNaviRoadConditionInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener) {
        if (onNaviRoadConditionInfoListener == null) {
            return;
        }
        this.mNaviRoadConditionInfoListeners.remove(onNaviRoadConditionInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterNaviRoadConditionInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterNaviRoadConditionInfoListener(onNaviRoadConditionInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerMediaInfoListener(OnMediaInfoListener onMediaInfoListener) {
        if (onMediaInfoListener == null) {
            return;
        }
        if (!this.mMediaInfoListeners.contains(onMediaInfoListener)) {
            this.mMediaInfoListeners.add(onMediaInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerMediaInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerMediaInfoListener(onMediaInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterMediaInfoListener(OnMediaInfoListener onMediaInfoListener) {
        if (onMediaInfoListener == null) {
            return;
        }
        this.mMediaInfoListeners.remove(onMediaInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterMediaInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterMediaInfoListener(onMediaInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null) {
            return;
        }
        if (!this.mWeChatMessageListeners.contains(onWeChatMessageListener)) {
            this.mWeChatMessageListeners.add(onWeChatMessageListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerWeChatMessageListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerWeChatMessageListener(onWeChatMessageListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null) {
            return;
        }
        this.mWeChatMessageListeners.remove(onWeChatMessageListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterWeChatMessageListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterWeChatMessageListener(onWeChatMessageListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerOtherInfoListener(OnOtherInfoListener onOtherInfoListener) {
        if (onOtherInfoListener == null) {
            return;
        }
        if (!this.mOtherInfoListeners.contains(onOtherInfoListener)) {
            this.mOtherInfoListeners.add(onOtherInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerOtherInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerOtherInfoListener(onOtherInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterOtherInfoListener(OnOtherInfoListener onOtherInfoListener) {
        if (onOtherInfoListener == null) {
            return;
        }
        this.mOtherInfoListeners.remove(onOtherInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterOtherInfoListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterOtherInfoListener(onOtherInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerMapMonitorListener(OnMapMonitorListener onMapMonitorListener) {
        if (onMapMonitorListener == null) {
            return;
        }
        if (!this.mMapMonitorListeners.contains(onMapMonitorListener)) {
            this.mMapMonitorListeners.add(onMapMonitorListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerMapMonitorListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerMapMonitorListener(onMapMonitorListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterMapMonitorListener(OnMapMonitorListener onMapMonitorListener) {
        if (onMapMonitorListener == null) {
            return;
        }
        this.mMapMonitorListeners.remove(onMapMonitorListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterMapMonitorListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterMapMonitorListener(onMapMonitorListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerAppEventListener(OnAppEventListener onAppEventListener) {
        if (onAppEventListener == null) {
            return;
        }
        if (!this.mAppEventListeners.contains(onAppEventListener)) {
            this.mAppEventListeners.add(onAppEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerAppEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerAppEventListener(onAppEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterAppEventListener(OnAppEventListener onAppEventListener) {
        if (onAppEventListener == null) {
            return;
        }
        this.mAppEventListeners.remove(onAppEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterAppEventListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterAppEventListener(onAppEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener) {
        if (onDrLocationInfoListener == null) {
            return;
        }
        if (!this.mDrLocationInfoListeners.contains(onDrLocationInfoListener)) {
            this.mDrLocationInfoListeners.add(onDrLocationInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerDrLocationInfoListener(onDrLocationInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener) {
        if (onDrLocationInfoListener == null) {
            return;
        }
        this.mDrLocationInfoListeners.remove(onDrLocationInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterDrLocationInfoListener(onDrLocationInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerLinkInfoListener(OnLinkInfoListener onLinkInfoListener) {
        if (onLinkInfoListener == null) {
            return;
        }
        if (!this.mLinkInfoListeners.contains(onLinkInfoListener)) {
            this.mLinkInfoListeners.add(onLinkInfoListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerLinkInfoListener(onLinkInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterLinkInfoListener(OnLinkInfoListener onLinkInfoListener) {
        if (onLinkInfoListener == null) {
            return;
        }
        this.mLinkInfoListeners.remove(onLinkInfoListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterLinkInfoListener(onLinkInfoListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerMapModeEventListener(OnMapModeEventListener onMapModeEventListener) {
        if (onMapModeEventListener == null) {
            return;
        }
        if (!this.mMapModeEventListeners.contains(onMapModeEventListener)) {
            this.mMapModeEventListeners.add(onMapModeEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerMapModeEventListener(onMapModeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterMapModeEventListener(OnMapModeEventListener onMapModeEventListener) {
        if (onMapModeEventListener == null) {
            return;
        }
        this.mMapModeEventListeners.remove(onMapModeEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterMapModeEventListener(onMapModeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener) {
        if (onExitTeamTripEventListener == null) {
            return;
        }
        if (!this.mOnExitTeamTripEventListeners.contains(onExitTeamTripEventListener)) {
            this.mOnExitTeamTripEventListeners.add(onExitTeamTripEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerExitTeapTripEventListener(onExitTeamTripEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener) {
        if (onExitTeamTripEventListener == null) {
            return;
        }
        this.mOnExitTeamTripEventListeners.remove(onExitTeamTripEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterExitTeapTripEventListener(onExitTeamTripEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener) {
        if (onTeamTripChangeEventListener == null) {
            return;
        }
        if (!this.mOnTeamTripChangeEventListeners.contains(onTeamTripChangeEventListener)) {
            this.mOnTeamTripChangeEventListeners.add(onTeamTripChangeEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerTeamTripChangeEventListener(onTeamTripChangeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener) {
        if (onTeamTripChangeEventListener == null) {
            return;
        }
        this.mOnTeamTripChangeEventListeners.remove(onTeamTripChangeEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterTeamTripChangeEventListener(onTeamTripChangeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener) {
        if (onRouteGuideSpeakModeEventListener == null) {
            return;
        }
        if (!this.mOnRouteGuideSpeakModeEventListener.contains(onRouteGuideSpeakModeEventListener)) {
            this.mOnRouteGuideSpeakModeEventListener.add(onRouteGuideSpeakModeEventListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerRouteGuideSpeakModeEventListener(onRouteGuideSpeakModeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener) {
        if (onRouteGuideSpeakModeEventListener == null) {
            return;
        }
        this.mOnRouteGuideSpeakModeEventListener.remove(onRouteGuideSpeakModeEventListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterRouteGuideSpeakModeEventListener(onRouteGuideSpeakModeEventListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener) {
        if (onFavoritePoiChangeListener == null) {
            return;
        }
        if (!this.mOnFavoritePoiChangeListeners.contains(onFavoritePoiChangeListener)) {
            this.mOnFavoritePoiChangeListeners.add(onFavoritePoiChangeListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerFavoritePoiChangeListener(onFavoritePoiChangeListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener) {
        if (onFavoritePoiChangeListener == null) {
            return;
        }
        this.mOnFavoritePoiChangeListeners.remove(onFavoritePoiChangeListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "InfoDispatcher sendMessage Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterFavoritePoiChangeListener(onFavoritePoiChangeListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener) {
        if (onRouteInfoChangedListener == null) {
            return;
        }
        if (!this.mRouteInfoChangedListeners.contains(onRouteInfoChangedListener)) {
            this.mRouteInfoChangedListeners.add(onRouteInfoChangedListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerRoutePlanResultListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerRouteInfoChangedListener(onRouteInfoChangedListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener) {
        if (onRouteInfoChangedListener == null) {
            return;
        }
        this.mRouteInfoChangedListeners.remove(onRouteInfoChangedListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterRouteInfoChangedListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterRouteInfoChangedListener(onRouteInfoChangedListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener) {
        if (onAddPassPoiListener == null) {
            return;
        }
        if (!this.mOnAddPassPoiListeners.contains(onAddPassPoiListener)) {
            this.mOnAddPassPoiListeners.add(onAddPassPoiListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerAddPassPoiListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerAddPassPoiListener(onAddPassPoiListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener) {
        if (onAddPassPoiListener == null) {
            return;
        }
        this.mOnAddPassPoiListeners.remove(onAddPassPoiListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterAddPassPoiListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterAddPassPoiListener(onAddPassPoiListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener) {
        if (onDestinationParkingUpdateListener == null) {
            return;
        }
        if (!this.mOnDestinationParkingUpdateListeners.contains(onDestinationParkingUpdateListener)) {
            this.mOnDestinationParkingUpdateListeners.add(onDestinationParkingUpdateListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerDestinationParkingUpdateListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerDestinationParkingUpdateListener(onDestinationParkingUpdateListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener) {
        if (onDestinationParkingUpdateListener == null) {
            return;
        }
        this.mOnDestinationParkingUpdateListeners.remove(onDestinationParkingUpdateListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterDestinationParkingUpdateListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterDestinationParkingUpdateListener(onDestinationParkingUpdateListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerPushPoiListener(OnPushPoiListener onPushPoiListener) {
        if (onPushPoiListener == null) {
            return;
        }
        if (!this.mOnPushPoiListeners.contains(onPushPoiListener)) {
            this.mOnPushPoiListeners.add(onPushPoiListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerPushPoiListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerPushPoiListener(onPushPoiListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterPushPoiListener(OnPushPoiListener onPushPoiListener) {
        if (onPushPoiListener == null) {
            return;
        }
        this.mOnPushPoiListeners.remove(onPushPoiListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterPushPoiListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterPushPoiListener(onPushPoiListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void registerSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener) {
        if (onSubscribeMessageListener == null) {
            return;
        }
        if (!this.mOnSubscribeMessageListeners.contains(onSubscribeMessageListener)) {
            this.mOnSubscribeMessageListeners.add(onSubscribeMessageListener);
        }
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "registerSubscribeMessageListener Exception：mInfoDispatchRemoteApi is null ");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.registerSubscribeMessageListener(onSubscribeMessageListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public void unregisterSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener) {
        if (onSubscribeMessageListener == null) {
            return;
        }
        this.mOnSubscribeMessageListeners.remove(onSubscribeMessageListener);
        if (this.mInfoDispatchRemoteApi == null) {
            Log.e(TAG, "unregisterSubscribeMessageListener Exception：mInfoDispatchRemoteApi is null");
            getInfoDispatchRemoteApi();
        } else {
            this.mInfoDispatchRemoteApi.unregisterSubscribeMessageListener(onSubscribeMessageListener);
        }
    }

    @Override // com.tencent.taes.api.infodispatch.InfoDispatchApi
    public boolean sendMessage(String str, String str2) {
        if (this.mInfoDispatchRemoteApi == null) {
            printMsg("sendMessage Exception：mInfoDispatchRemoteApi is null");
            return false;
        }
        return this.mInfoDispatchRemoteApi.sendMessage(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printMsg(String str) {
        Log.e(TAG, str);
    }

    private void initListener() {
        if (this.mInfoDispatchRemoteApi == null) {
            return;
        }
        Iterator<OnArriveEventListener> it = this.mArriveEventListeners.iterator();
        while (it.hasNext()) {
            this.mInfoDispatchRemoteApi.registerArriveEventListener(it.next());
        }
        Iterator<OnEnlargeMapInfoListener> it2 = this.mEnlargedMapInfoListeners.iterator();
        while (it2.hasNext()) {
            this.mInfoDispatchRemoteApi.registerEnlargeMapInfoListenerr(it2.next());
        }
        Iterator<OnETAInfoListener> it3 = this.mETAInfoListeners.iterator();
        while (it3.hasNext()) {
            this.mInfoDispatchRemoteApi.registerETAInfoListener(it3.next());
        }
        Iterator<OnGuideInfoListener> it4 = this.mGuideInfoListeners.iterator();
        while (it4.hasNext()) {
            this.mInfoDispatchRemoteApi.registerGuideInfoListener(it4.next());
        }
        Iterator<OnHighwayInfoListener> it5 = this.mHighwayInfoListeners.iterator();
        while (it5.hasNext()) {
            this.mInfoDispatchRemoteApi.registerHighwayInfoListener(it5.next());
        }
        Iterator<OnLaneLineInfoListener> it6 = this.mLaneLineInfoListeners.iterator();
        while (it6.hasNext()) {
            this.mInfoDispatchRemoteApi.registerLaneLineInfoListener(it6.next());
        }
        Iterator<OnRouteEventListener> it7 = this.mRouteEventListeners.iterator();
        while (it7.hasNext()) {
            this.mInfoDispatchRemoteApi.registerRouteEventListener(it7.next());
        }
        Iterator<OnStartStopEventListener> it8 = this.mStartStopEventListeners.iterator();
        while (it8.hasNext()) {
            this.mInfoDispatchRemoteApi.registerStartStopEventListener(it8.next());
        }
        Iterator<OnYawEventListener> it9 = this.mYawEventListeners.iterator();
        while (it9.hasNext()) {
            this.mInfoDispatchRemoteApi.registerYawEventListener(it9.next());
        }
        Iterator<OnZoneSpeedInfoListener> it10 = this.mZoneSpeedInfoListeners.iterator();
        while (it10.hasNext()) {
            this.mInfoDispatchRemoteApi.registerZoneSpeedInfoListener(it10.next());
        }
        Iterator<OnCameraInfoListener> it11 = this.mCameraInfoListeners.iterator();
        while (it11.hasNext()) {
            this.mInfoDispatchRemoteApi.registerCameraInfoListener(it11.next());
        }
        Iterator<OnNaviRoadConditionInfoListener> it12 = this.mNaviRoadConditionInfoListeners.iterator();
        while (it12.hasNext()) {
            this.mInfoDispatchRemoteApi.registerNaviRoadConditionInfoListener(it12.next());
        }
        Iterator<OnMediaInfoListener> it13 = this.mMediaInfoListeners.iterator();
        while (it13.hasNext()) {
            this.mInfoDispatchRemoteApi.registerMediaInfoListener(it13.next());
        }
        Iterator<OnWeChatMessageListener> it14 = this.mWeChatMessageListeners.iterator();
        while (it14.hasNext()) {
            this.mInfoDispatchRemoteApi.registerWeChatMessageListener(it14.next());
        }
        Iterator<OnOtherInfoListener> it15 = this.mOtherInfoListeners.iterator();
        while (it15.hasNext()) {
            this.mInfoDispatchRemoteApi.registerOtherInfoListener(it15.next());
        }
        Iterator<OnMapMonitorListener> it16 = this.mMapMonitorListeners.iterator();
        while (it16.hasNext()) {
            this.mInfoDispatchRemoteApi.registerMapMonitorListener(it16.next());
        }
        Iterator<OnAppEventListener> it17 = this.mAppEventListeners.iterator();
        while (it17.hasNext()) {
            this.mInfoDispatchRemoteApi.registerAppEventListener(it17.next());
        }
        Iterator<OnDrLocationInfoListener> it18 = this.mDrLocationInfoListeners.iterator();
        while (it18.hasNext()) {
            this.mInfoDispatchRemoteApi.registerDrLocationInfoListener(it18.next());
        }
        Iterator<OnLinkInfoListener> it19 = this.mLinkInfoListeners.iterator();
        while (it19.hasNext()) {
            this.mInfoDispatchRemoteApi.registerLinkInfoListener(it19.next());
        }
        Iterator<OnMapModeEventListener> it20 = this.mMapModeEventListeners.iterator();
        while (it20.hasNext()) {
            this.mInfoDispatchRemoteApi.registerMapModeEventListener(it20.next());
        }
        Iterator<OnRouteGuideSpeakModeEventListener> it21 = this.mOnRouteGuideSpeakModeEventListener.iterator();
        while (it21.hasNext()) {
            this.mInfoDispatchRemoteApi.registerRouteGuideSpeakModeEventListener(it21.next());
        }
        Iterator<OnFavoritePoiChangeListener> it22 = this.mOnFavoritePoiChangeListeners.iterator();
        while (it22.hasNext()) {
            this.mInfoDispatchRemoteApi.registerFavoritePoiChangeListener(it22.next());
        }
        Iterator<OnRouteInfoChangedListener> it23 = this.mRouteInfoChangedListeners.iterator();
        while (it23.hasNext()) {
            this.mInfoDispatchRemoteApi.registerRouteInfoChangedListener(it23.next());
        }
        Iterator<OnAddPassPoiListener> it24 = this.mOnAddPassPoiListeners.iterator();
        while (it24.hasNext()) {
            this.mInfoDispatchRemoteApi.registerAddPassPoiListener(it24.next());
        }
        Iterator<OnDestinationParkingUpdateListener> it25 = this.mOnDestinationParkingUpdateListeners.iterator();
        while (it25.hasNext()) {
            this.mInfoDispatchRemoteApi.registerDestinationParkingUpdateListener(it25.next());
        }
        Iterator<OnPushPoiListener> it26 = this.mOnPushPoiListeners.iterator();
        while (it26.hasNext()) {
            this.mInfoDispatchRemoteApi.registerPushPoiListener(it26.next());
        }
        Iterator<OnSubscribeMessageListener> it27 = this.mOnSubscribeMessageListeners.iterator();
        while (it27.hasNext()) {
            this.mInfoDispatchRemoteApi.registerSubscribeMessageListener(it27.next());
        }
    }

    private void unInitListener() {
        if (this.mInfoDispatchRemoteApi == null) {
            return;
        }
        Iterator<OnArriveEventListener> it = this.mArriveEventListeners.iterator();
        while (it.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterArriveEventListener(it.next());
        }
        Iterator<OnEnlargeMapInfoListener> it2 = this.mEnlargedMapInfoListeners.iterator();
        while (it2.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterEnlargeMapInfoListener(it2.next());
        }
        Iterator<OnETAInfoListener> it3 = this.mETAInfoListeners.iterator();
        while (it3.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterETAInfoListener(it3.next());
        }
        Iterator<OnGuideInfoListener> it4 = this.mGuideInfoListeners.iterator();
        while (it4.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterGuideInfoListener(it4.next());
        }
        Iterator<OnHighwayInfoListener> it5 = this.mHighwayInfoListeners.iterator();
        while (it5.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterHighwayInfoListener(it5.next());
        }
        Iterator<OnLaneLineInfoListener> it6 = this.mLaneLineInfoListeners.iterator();
        while (it6.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterLaneLineInfoListener(it6.next());
        }
        Iterator<OnRouteEventListener> it7 = this.mRouteEventListeners.iterator();
        while (it7.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterRouteEventListener(it7.next());
        }
        Iterator<OnStartStopEventListener> it8 = this.mStartStopEventListeners.iterator();
        while (it8.hasNext()) {
            this.mInfoDispatchRemoteApi.registerStartStopEventListener(it8.next());
        }
        Iterator<OnYawEventListener> it9 = this.mYawEventListeners.iterator();
        while (it9.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterYawEventListener(it9.next());
        }
        Iterator<OnZoneSpeedInfoListener> it10 = this.mZoneSpeedInfoListeners.iterator();
        while (it10.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterZoneSpeedInfoListener(it10.next());
        }
        Iterator<OnCameraInfoListener> it11 = this.mCameraInfoListeners.iterator();
        while (it11.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterCameraInfoListener(it11.next());
        }
        Iterator<OnNaviRoadConditionInfoListener> it12 = this.mNaviRoadConditionInfoListeners.iterator();
        while (it12.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterNaviRoadConditionInfoListener(it12.next());
        }
        Iterator<OnMediaInfoListener> it13 = this.mMediaInfoListeners.iterator();
        while (it13.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterMediaInfoListener(it13.next());
        }
        Iterator<OnWeChatMessageListener> it14 = this.mWeChatMessageListeners.iterator();
        while (it14.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterWeChatMessageListener(it14.next());
        }
        Iterator<OnOtherInfoListener> it15 = this.mOtherInfoListeners.iterator();
        while (it15.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterOtherInfoListener(it15.next());
        }
        Iterator<OnMapMonitorListener> it16 = this.mMapMonitorListeners.iterator();
        while (it16.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterMapMonitorListener(it16.next());
        }
        Iterator<OnAppEventListener> it17 = this.mAppEventListeners.iterator();
        while (it17.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterAppEventListener(it17.next());
        }
        Iterator<OnDrLocationInfoListener> it18 = this.mDrLocationInfoListeners.iterator();
        while (it18.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterDrLocationInfoListener(it18.next());
        }
        Iterator<OnLinkInfoListener> it19 = this.mLinkInfoListeners.iterator();
        while (it19.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterLinkInfoListener(it19.next());
        }
        Iterator<OnMapModeEventListener> it20 = this.mMapModeEventListeners.iterator();
        while (it20.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterMapModeEventListener(it20.next());
        }
        Iterator<OnExitTeamTripEventListener> it21 = this.mOnExitTeamTripEventListeners.iterator();
        while (it21.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterExitTeapTripEventListener(it21.next());
        }
        Iterator<OnTeamTripChangeEventListener> it22 = this.mOnTeamTripChangeEventListeners.iterator();
        while (it22.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterTeamTripChangeEventListener(it22.next());
        }
        Iterator<OnRouteGuideSpeakModeEventListener> it23 = this.mOnRouteGuideSpeakModeEventListener.iterator();
        while (it23.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterRouteGuideSpeakModeEventListener(it23.next());
        }
        Iterator<OnFavoritePoiChangeListener> it24 = this.mOnFavoritePoiChangeListeners.iterator();
        while (it24.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterFavoritePoiChangeListener(it24.next());
        }
        Iterator<OnRouteInfoChangedListener> it25 = this.mRouteInfoChangedListeners.iterator();
        while (it25.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterRouteInfoChangedListener(it25.next());
        }
        Iterator<OnAddPassPoiListener> it26 = this.mOnAddPassPoiListeners.iterator();
        while (it26.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterAddPassPoiListener(it26.next());
        }
        Iterator<OnDestinationParkingUpdateListener> it27 = this.mOnDestinationParkingUpdateListeners.iterator();
        while (it27.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterDestinationParkingUpdateListener(it27.next());
        }
        Iterator<OnPushPoiListener> it28 = this.mOnPushPoiListeners.iterator();
        while (it28.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterPushPoiListener(it28.next());
        }
        Iterator<OnSubscribeMessageListener> it29 = this.mOnSubscribeMessageListeners.iterator();
        while (it29.hasNext()) {
            this.mInfoDispatchRemoteApi.unregisterSubscribeMessageListener(it29.next());
        }
        unregisterInnerConnectListener(this.mInfoDispatchRemoteApi);
    }

    private void clearListener() {
        this.mArriveEventListeners.clear();
        this.mEnlargedMapInfoListeners.clear();
        this.mETAInfoListeners.clear();
        this.mGuideInfoListeners.clear();
        this.mHighwayInfoListeners.clear();
        this.mLaneLineInfoListeners.clear();
        this.mRouteEventListeners.clear();
        this.mStartStopEventListeners.clear();
        this.mYawEventListeners.clear();
        this.mZoneSpeedInfoListeners.clear();
        this.mCameraInfoListeners.clear();
        this.mNaviRoadConditionInfoListeners.clear();
        this.mMediaInfoListeners.clear();
        this.mWeChatMessageListeners.clear();
        this.mOtherInfoListeners.clear();
        this.mMapMonitorListeners.clear();
        this.mAppEventListeners.clear();
        this.mDrLocationInfoListeners.clear();
        this.mLinkInfoListeners.clear();
        this.mMapModeEventListeners.clear();
        this.mOnExitTeamTripEventListeners.clear();
        this.mOnTeamTripChangeEventListeners.clear();
        this.mOnRouteGuideSpeakModeEventListener.clear();
        this.mOnFavoritePoiChangeListeners.clear();
        this.mRouteInfoChangedListeners.clear();
        this.mOnAddPassPoiListeners.clear();
        this.mOnDestinationParkingUpdateListeners.clear();
        this.mOnPushPoiListeners.clear();
        this.mOnSubscribeMessageListeners.clear();
        unregisterConnectListener();
    }

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
        unInit();
    }
}
