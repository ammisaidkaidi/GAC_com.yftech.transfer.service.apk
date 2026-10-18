package com.tencent.taes.remote.impl.infodispatcher;

import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarAppEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarArriveEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarDrLocationInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarEnlargeMapInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarEtaInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarFavoritePoi;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarGuideInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarHighwayInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarLaneLineInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarLinkInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarMapModeEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarMapMonitorEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarNaviInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarNaviRoadConditionInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarPushPoiInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRoadsideCameraInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRouteEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRouteGuideSpeakModeEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRouteInfoChanged;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRouteParkingPoiInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarRoutePoiNode;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarStartStopEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarSubscribeMessage;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarYawEvent;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarZoneSpeedInfo;
import com.tencent.taes.base.api.bean.infodispatcher.music.WeCarMediaInfo;
import com.tencent.taes.base.api.bean.infodispatcher.teamtrip.WeCarTeamTripEventInfo;
import com.tencent.taes.base.api.bean.infodispatcher.wechat.WeCarWeChatMessage;
import com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi;
import com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService;
import com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener;
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
import com.tencent.taes.remote.impl.BaseRemoteApi;
import com.tencent.taes.util.GsonUtils;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class InfoDispatchRemoteApi extends BaseRemoteApi implements IInfoDispatchApi {
    private static final String TAG = "InfoDispatchRemoteApi";
    private final List<OnAppEventListener> mAppEventListeners;
    private final List<OnArriveEventListener> mArriveEventListeners;
    private final List<OnCameraInfoListener> mCameraInfoListeners;
    private final List<OnDrLocationInfoListener> mDrLocationInfoListeners;
    private final List<OnETAInfoListener> mETAInfoListeners;
    private final List<OnEnlargeMapInfoListener> mEnlargedMapInfoListeners;
    private final List<OnGuideInfoListener> mGuideInfoListeners;
    private final List<OnHighwayInfoListener> mHighwayInfoListeners;
    private IInfoDispatchListener.Stub mInfoDispatchListener;
    private IInfoDispatchService mInfoDispatchService;
    private final List<OnLaneLineInfoListener> mLaneLineInfoListeners;
    private final List<OnLinkInfoListener> mLinkInfoListeners;
    private final List<OnMapModeEventListener> mMapModeEventListeners;
    private final List<OnMapMonitorListener> mMapMonitorListeners;
    private final List<OnMediaInfoListener> mMediaInfoListeners;
    private final List<OnNaviRoadConditionInfoListener> mNaviRoadConditionInfoListeners;
    private final List<OnExitTeamTripEventListener> mOnExitTeamTripEventListeners;
    private final List<OnFavoritePoiChangeListener> mOnFavoritePoiChangeListeners;
    private final List<OnTeamTripChangeEventListener> mOnTeamTripChangeEventListeners;
    private final List<OnOtherInfoListener> mOtherInfoListeners;
    private final List<OnRouteEventListener> mRouteEventListeners;
    private final List<OnRouteGuideSpeakModeEventListener> mRouteGuideSpeakModeEventListener;
    private final List<OnRouteInfoChangedListener> mRouteInfoChangedListeners;
    private final List<OnStartStopEventListener> mStartStopEventListeners;
    private Handler mUIHandler;
    private WeCarNaviInfo mWeCarNaviInfo;
    private final List<OnWeChatMessageListener> mWeChatMessageListeners;
    private final List<OnYawEventListener> mYawEventListeners;
    private final List<OnZoneSpeedInfoListener> mZoneSpeedInfoListeners;
    private final List<OnAddPassPoiListener> onAddPassPoiListeners;
    private final List<OnDestinationParkingUpdateListener> onDestinationParkingUpdateListeners;
    private final List<OnPushPoiListener> onPushPoiListeners;
    private final List<OnSubscribeMessageListener> onSubscribeMessageListeners;

    private InfoDispatchRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mUIHandler = new Handler(Looper.getMainLooper());
        this.mWeCarNaviInfo = new WeCarNaviInfo();
        this.mArriveEventListeners = new CopyOnWriteArrayList();
        this.mEnlargedMapInfoListeners = new CopyOnWriteArrayList();
        this.mETAInfoListeners = new CopyOnWriteArrayList();
        this.mGuideInfoListeners = new CopyOnWriteArrayList();
        this.mHighwayInfoListeners = new CopyOnWriteArrayList();
        this.mLaneLineInfoListeners = new CopyOnWriteArrayList();
        this.mRouteEventListeners = new CopyOnWriteArrayList();
        this.mStartStopEventListeners = new CopyOnWriteArrayList();
        this.mYawEventListeners = new CopyOnWriteArrayList();
        this.mZoneSpeedInfoListeners = new CopyOnWriteArrayList();
        this.mCameraInfoListeners = new CopyOnWriteArrayList();
        this.mNaviRoadConditionInfoListeners = new CopyOnWriteArrayList();
        this.mMediaInfoListeners = new CopyOnWriteArrayList();
        this.mWeChatMessageListeners = new CopyOnWriteArrayList();
        this.mOtherInfoListeners = new CopyOnWriteArrayList();
        this.mMapMonitorListeners = new CopyOnWriteArrayList();
        this.mAppEventListeners = new CopyOnWriteArrayList();
        this.mDrLocationInfoListeners = new CopyOnWriteArrayList();
        this.mLinkInfoListeners = new CopyOnWriteArrayList();
        this.mMapModeEventListeners = new CopyOnWriteArrayList();
        this.mRouteGuideSpeakModeEventListener = new CopyOnWriteArrayList();
        this.mOnExitTeamTripEventListeners = new CopyOnWriteArrayList();
        this.mOnTeamTripChangeEventListeners = new CopyOnWriteArrayList();
        this.mRouteInfoChangedListeners = new CopyOnWriteArrayList();
        this.onAddPassPoiListeners = new CopyOnWriteArrayList();
        this.onDestinationParkingUpdateListeners = new CopyOnWriteArrayList();
        this.onPushPoiListeners = new CopyOnWriteArrayList();
        this.onSubscribeMessageListeners = new CopyOnWriteArrayList();
        this.mOnFavoritePoiChangeListeners = new CopyOnWriteArrayList();
        this.mInfoDispatchListener = new IInfoDispatchListener.Stub() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.1
            @Override // com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener
            public void onNaviInfoDispatch(String str) throws RemoteException {
                InfoDispatchRemoteApi.this.dispatchNaviInfo(str);
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener
            public void onMusicInfoDispatch(String str) throws RemoteException {
                InfoDispatchRemoteApi.this.dispatchMusicInfo(str);
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener
            public void onWeChatInfoDispatch(String str) throws RemoteException {
                InfoDispatchRemoteApi.this.dispatchWeChatInfo(str);
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener
            public void onOtherInfoDispatch(String str, String str2) throws RemoteException {
                InfoDispatchRemoteApi.this.dispatchOtherInfo(str, str2);
            }

            @Override // com.tencent.taes.remote.api.infodispatcher.listener.IInfoDispatchListener
            public void onTeamTripInfoDispatch(String str) throws RemoteException {
                InfoDispatchRemoteApi.this.dispatchTeamTripInfo(str);
            }
        };
        onBind(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("InfoDispatcher", IInfoDispatchService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        onBind(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    private void onBind(IBinder iBinder) {
        this.mInfoDispatchService = IInfoDispatchService.Stub.asInterface(iBinder);
        try {
            this.mInfoDispatchService.registerInfoDispatchListener(this.mInfoDispatchListener);
        } catch (RemoteException e) {
            Log.e(TAG, "registerInfoDispatchListener exception caught", e);
        }
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public boolean sendMessage(String str, String str2) {
        if (this.mInfoDispatchService == null) {
            return false;
        }
        try {
            this.mInfoDispatchService.sendMessage(str, str2);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(TAG, "sendMessage exception caught", e);
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public boolean sendCacheMessage(String str, String str2) {
        if (this.mInfoDispatchService == null) {
            return false;
        }
        try {
            this.mInfoDispatchService.sendCacheMessage(str, str2);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(TAG, "sendCacheMessage exception caught", e);
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerArriveEventListener(OnArriveEventListener onArriveEventListener) {
        if (onArriveEventListener == null || this.mArriveEventListeners.contains(onArriveEventListener)) {
            return;
        }
        this.mArriveEventListeners.add(onArriveEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterArriveEventListener(OnArriveEventListener onArriveEventListener) {
        if (onArriveEventListener == null) {
            return;
        }
        this.mArriveEventListeners.remove(onArriveEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerEnlargeMapInfoListenerr(OnEnlargeMapInfoListener onEnlargeMapInfoListener) {
        if (onEnlargeMapInfoListener == null || this.mEnlargedMapInfoListeners.contains(onEnlargeMapInfoListener)) {
            return;
        }
        this.mEnlargedMapInfoListeners.add(onEnlargeMapInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterEnlargeMapInfoListener(OnEnlargeMapInfoListener onEnlargeMapInfoListener) {
        if (onEnlargeMapInfoListener == null) {
            return;
        }
        this.mEnlargedMapInfoListeners.remove(onEnlargeMapInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerETAInfoListener(OnETAInfoListener onETAInfoListener) {
        if (onETAInfoListener == null || this.mETAInfoListeners.contains(onETAInfoListener)) {
            return;
        }
        this.mETAInfoListeners.add(onETAInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterETAInfoListener(OnETAInfoListener onETAInfoListener) {
        if (onETAInfoListener == null) {
            return;
        }
        this.mETAInfoListeners.remove(onETAInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerGuideInfoListener(OnGuideInfoListener onGuideInfoListener) {
        if (onGuideInfoListener == null || this.mGuideInfoListeners.contains(onGuideInfoListener)) {
            return;
        }
        this.mGuideInfoListeners.add(onGuideInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterGuideInfoListener(OnGuideInfoListener onGuideInfoListener) {
        if (onGuideInfoListener == null) {
            return;
        }
        this.mGuideInfoListeners.remove(onGuideInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener) {
        if (onHighwayInfoListener == null || this.mHighwayInfoListeners.contains(onHighwayInfoListener)) {
            return;
        }
        this.mHighwayInfoListeners.add(onHighwayInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener) {
        if (onHighwayInfoListener == null) {
            return;
        }
        this.mHighwayInfoListeners.remove(onHighwayInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener) {
        if (onLaneLineInfoListener == null || this.mLaneLineInfoListeners.contains(onLaneLineInfoListener)) {
            return;
        }
        this.mLaneLineInfoListeners.add(onLaneLineInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener) {
        if (onLaneLineInfoListener == null) {
            return;
        }
        this.mLaneLineInfoListeners.remove(onLaneLineInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerRouteEventListener(OnRouteEventListener onRouteEventListener) {
        if (onRouteEventListener == null || this.mRouteEventListeners.contains(onRouteEventListener)) {
            return;
        }
        this.mRouteEventListeners.add(onRouteEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterRouteEventListener(OnRouteEventListener onRouteEventListener) {
        if (onRouteEventListener == null) {
            return;
        }
        this.mRouteEventListeners.remove(onRouteEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerStartStopEventListener(OnStartStopEventListener onStartStopEventListener) {
        if (onStartStopEventListener == null || this.mStartStopEventListeners.contains(onStartStopEventListener)) {
            return;
        }
        this.mStartStopEventListeners.add(onStartStopEventListener);
        try {
            if (TextUtils.isEmpty(this.mInfoDispatchService.getStartEventCache())) {
                return;
            }
            onStartStopEventListener.onStartStopEvent((WeCarStartStopEvent) GsonUtils.fromJson(this.mInfoDispatchService.getStartEventCache(), WeCarStartStopEvent.class));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterStartStopEventListener(OnStartStopEventListener onStartStopEventListener) {
        if (onStartStopEventListener == null) {
            return;
        }
        this.mStartStopEventListeners.remove(onStartStopEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerYawEventListener(OnYawEventListener onYawEventListener) {
        if (onYawEventListener == null || this.mYawEventListeners.contains(onYawEventListener)) {
            return;
        }
        this.mYawEventListeners.add(onYawEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterYawEventListener(OnYawEventListener onYawEventListener) {
        if (onYawEventListener == null) {
            return;
        }
        this.mYawEventListeners.remove(onYawEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener) {
        if (onZoneSpeedInfoListener == null || this.mZoneSpeedInfoListeners.contains(onZoneSpeedInfoListener)) {
            return;
        }
        this.mZoneSpeedInfoListeners.add(onZoneSpeedInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener) {
        if (onZoneSpeedInfoListener == null) {
            return;
        }
        this.mZoneSpeedInfoListeners.remove(onZoneSpeedInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerCameraInfoListener(OnCameraInfoListener onCameraInfoListener) {
        if (onCameraInfoListener == null || this.mCameraInfoListeners.contains(onCameraInfoListener)) {
            return;
        }
        this.mCameraInfoListeners.add(onCameraInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterCameraInfoListener(OnCameraInfoListener onCameraInfoListener) {
        if (onCameraInfoListener == null) {
            return;
        }
        this.mCameraInfoListeners.remove(onCameraInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener) {
        if (onNaviRoadConditionInfoListener == null || this.mNaviRoadConditionInfoListeners.contains(onNaviRoadConditionInfoListener)) {
            return;
        }
        this.mNaviRoadConditionInfoListeners.add(onNaviRoadConditionInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener) {
        if (onNaviRoadConditionInfoListener == null) {
            return;
        }
        this.mNaviRoadConditionInfoListeners.remove(onNaviRoadConditionInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerMediaInfoListener(OnMediaInfoListener onMediaInfoListener) {
        if (onMediaInfoListener == null || this.mMediaInfoListeners.contains(onMediaInfoListener)) {
            return;
        }
        this.mMediaInfoListeners.add(onMediaInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterMediaInfoListener(OnMediaInfoListener onMediaInfoListener) {
        if (onMediaInfoListener == null) {
            return;
        }
        this.mMediaInfoListeners.remove(onMediaInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null || this.mWeChatMessageListeners.contains(onWeChatMessageListener)) {
            return;
        }
        this.mWeChatMessageListeners.add(onWeChatMessageListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null) {
            return;
        }
        this.mWeChatMessageListeners.remove(onWeChatMessageListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerOtherInfoListener(OnOtherInfoListener onOtherInfoListener) {
        if (onOtherInfoListener == null || this.mOtherInfoListeners.contains(onOtherInfoListener)) {
            return;
        }
        this.mOtherInfoListeners.add(onOtherInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterOtherInfoListener(OnOtherInfoListener onOtherInfoListener) {
        if (onOtherInfoListener == null) {
            return;
        }
        this.mOtherInfoListeners.remove(onOtherInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerMapMonitorListener(OnMapMonitorListener onMapMonitorListener) {
        if (onMapMonitorListener == null || this.mMapMonitorListeners.contains(onMapMonitorListener)) {
            return;
        }
        this.mMapMonitorListeners.add(onMapMonitorListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterMapMonitorListener(OnMapMonitorListener onMapMonitorListener) {
        if (onMapMonitorListener == null) {
            return;
        }
        this.mMapMonitorListeners.remove(onMapMonitorListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerAppEventListener(OnAppEventListener onAppEventListener) {
        if (onAppEventListener == null || this.mAppEventListeners.contains(onAppEventListener)) {
            return;
        }
        this.mAppEventListeners.add(onAppEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterAppEventListener(OnAppEventListener onAppEventListener) {
        if (onAppEventListener == null) {
            return;
        }
        this.mAppEventListeners.remove(onAppEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener) {
        if (onDrLocationInfoListener == null || this.mDrLocationInfoListeners.contains(onDrLocationInfoListener)) {
            return;
        }
        this.mDrLocationInfoListeners.add(onDrLocationInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener) {
        if (onDrLocationInfoListener == null) {
            return;
        }
        this.mDrLocationInfoListeners.remove(onDrLocationInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerLinkInfoListener(OnLinkInfoListener onLinkInfoListener) {
        if (onLinkInfoListener == null || this.mLinkInfoListeners.contains(onLinkInfoListener)) {
            return;
        }
        this.mLinkInfoListeners.add(onLinkInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterLinkInfoListener(OnLinkInfoListener onLinkInfoListener) {
        if (onLinkInfoListener == null) {
            return;
        }
        this.mLinkInfoListeners.remove(onLinkInfoListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerMapModeEventListener(OnMapModeEventListener onMapModeEventListener) {
        if (onMapModeEventListener == null || this.mMapModeEventListeners.contains(onMapModeEventListener)) {
            return;
        }
        this.mMapModeEventListeners.add(onMapModeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterMapModeEventListener(OnMapModeEventListener onMapModeEventListener) {
        if (onMapModeEventListener == null) {
            return;
        }
        this.mMapModeEventListeners.remove(onMapModeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener) {
        if (onRouteGuideSpeakModeEventListener == null || this.mRouteGuideSpeakModeEventListener.contains(onRouteGuideSpeakModeEventListener)) {
            return;
        }
        this.mRouteGuideSpeakModeEventListener.add(onRouteGuideSpeakModeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener) {
        if (onRouteGuideSpeakModeEventListener == null) {
            return;
        }
        this.mRouteGuideSpeakModeEventListener.remove(onRouteGuideSpeakModeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener) {
        if (onFavoritePoiChangeListener == null || this.mOnFavoritePoiChangeListeners.contains(onFavoritePoiChangeListener)) {
            return;
        }
        this.mOnFavoritePoiChangeListeners.add(onFavoritePoiChangeListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener) {
        if (onFavoritePoiChangeListener == null) {
            return;
        }
        this.mOnFavoritePoiChangeListeners.remove(onFavoritePoiChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchTeamTripInfo(String str) {
        Log.d(TAG, "dispatchTeamTripInfo jsonStr = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final WeCarTeamTripEventInfo weCarTeamTripEventInfo = (WeCarTeamTripEventInfo) GsonUtils.fromJson(str, WeCarTeamTripEventInfo.class);
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.2
            @Override // java.lang.Runnable
            public void run() {
                switch (weCarTeamTripEventInfo.mType) {
                    case 0:
                        for (OnExitTeamTripEventListener onExitTeamTripEventListener : InfoDispatchRemoteApi.this.mOnExitTeamTripEventListeners) {
                            if (onExitTeamTripEventListener != null) {
                                onExitTeamTripEventListener.onExit();
                            }
                        }
                        return;
                    case 1:
                        for (OnTeamTripChangeEventListener onTeamTripChangeEventListener : InfoDispatchRemoteApi.this.mOnTeamTripChangeEventListeners) {
                            if (onTeamTripChangeEventListener != null) {
                                onTeamTripChangeEventListener.onTeamTripChange(weCarTeamTripEventInfo.mWeCarTeamTripMemberInfo);
                            }
                        }
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOtherInfo(final String str, final String str2) {
        Log.d(TAG, "onOtherInfoDispatch jsonStr = " + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.3
            @Override // java.lang.Runnable
            public void run() {
                for (OnOtherInfoListener onOtherInfoListener : InfoDispatchRemoteApi.this.mOtherInfoListeners) {
                    if (onOtherInfoListener != null) {
                        onOtherInfoListener.onOtherInfoChanged(str, str2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchWeChatInfo(String str) {
        Log.d(TAG, "onWeChatInfoDispatch jsonStr = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final WeCarWeChatMessage weCarWeChatMessage = (WeCarWeChatMessage) GsonUtils.fromJson(str, WeCarWeChatMessage.class);
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.4
            @Override // java.lang.Runnable
            public void run() {
                for (OnWeChatMessageListener onWeChatMessageListener : InfoDispatchRemoteApi.this.mWeChatMessageListeners) {
                    if (onWeChatMessageListener != null) {
                        onWeChatMessageListener.onWeChatMessageChanged(weCarWeChatMessage);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchMusicInfo(String str) {
        Log.d(TAG, "onMusicInfoDispatch jsonStr = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final WeCarMediaInfo weCarMediaInfo = (WeCarMediaInfo) GsonUtils.fromJson(str, WeCarMediaInfo.class);
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.5
            @Override // java.lang.Runnable
            public void run() {
                for (OnMediaInfoListener onMediaInfoListener : InfoDispatchRemoteApi.this.mMediaInfoListeners) {
                    if (onMediaInfoListener != null) {
                        onMediaInfoListener.onMediaInfoChanged(weCarMediaInfo);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchNaviInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        WeCarNaviInfo weCarNaviInfo = (WeCarNaviInfo) GsonUtils.fromJson(str, WeCarNaviInfo.class);
        switch (weCarNaviInfo.type) {
            case 1:
                onGuideInfoChanged(weCarNaviInfo.weCarGuideInfo);
                return;
            case 2:
                onETAInfoChanged(weCarNaviInfo.weCarEtaInfo);
                return;
            case 3:
                onRoadsideCameraInfoChanged(weCarNaviInfo.weCarRoadsideCameraInfo, weCarNaviInfo.weCarRoadsideCameraInfos);
                return;
            case 4:
                onHighwayInfoChanged(weCarNaviInfo.weCarHighwayInfo);
                return;
            case 5:
                onZoneSpeedInfoChanged(weCarNaviInfo.weCarZoneSpeedInfo);
                return;
            case 6:
                onLaneLineInfoChanged(weCarNaviInfo.weCarLaneLineInfo);
                return;
            case 7:
                onNaviRoadConditionInfo(weCarNaviInfo.weCarNaviRoadConditionInfo);
                return;
            case 8:
                onStartStopEvent(weCarNaviInfo.weCarStartStopEvent);
                Log.d(TAG, "onNaviInfoDispatch WeCarStartStopEvent jsonStr = " + str);
                return;
            case 9:
                onArriveEvent(weCarNaviInfo.weCarArriveEvent);
                return;
            case 10:
                onYawEvent(weCarNaviInfo.weCarYawEvent);
                return;
            case 11:
                onRouteEvent(weCarNaviInfo.weCarRouteEvent);
                return;
            case 12:
                onEnlargedMapInfoChanged(weCarNaviInfo.weCarEnlargeMapInfo);
                return;
            case 13:
                onMapMonitorEvent(weCarNaviInfo.weCarMapMonitorEvent);
                return;
            case 14:
                onAppEvent(weCarNaviInfo.weCarAppEvent);
                Log.d(TAG, "onNaviInfoDispatch WeCarAppEvent jsonStr = " + str);
                return;
            case 15:
                onDrLocationInfoChanged(weCarNaviInfo.weCarDrLocationInfo);
                return;
            case 16:
                onLinkInfoChanged(weCarNaviInfo.weCarLinkInfo);
                return;
            case 17:
                onMapModeEvent(weCarNaviInfo.weCarMapModeEvent);
                return;
            case 18:
                onRouteGuideSpeakModeEvent(weCarNaviInfo.weCarRouteGuideSpeakModeEvent);
                return;
            case 19:
                onRouteInfoChanged(weCarNaviInfo.weCarRouteInfoChanged);
                return;
            case 20:
                onAddPassPoi(weCarNaviInfo.weCarAddPassPoi);
                return;
            case 21:
                onDestinationParkingUpdate(weCarNaviInfo.weCarDestinationParkings);
                return;
            case 22:
                onFavoritePoiChange(weCarNaviInfo.weCarFavoritePois);
                return;
            case 23:
                onPushPoi(weCarNaviInfo.weCarPushPoiInfo);
                return;
            case 24:
                onSubscribeMessage(weCarNaviInfo.weCarSubscribeMessage);
                return;
            default:
                return;
        }
    }

    private void onFavoritePoiChange(final List<WeCarFavoritePoi> list) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.6
            @Override // java.lang.Runnable
            public void run() {
                for (OnFavoritePoiChangeListener onFavoritePoiChangeListener : InfoDispatchRemoteApi.this.mOnFavoritePoiChangeListeners) {
                    if (onFavoritePoiChangeListener != null) {
                        onFavoritePoiChangeListener.onFavoritePoiChange(list);
                    }
                }
            }
        });
    }

    private void onMapModeEvent(final WeCarMapModeEvent weCarMapModeEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.7
            @Override // java.lang.Runnable
            public void run() {
                for (OnMapModeEventListener onMapModeEventListener : InfoDispatchRemoteApi.this.mMapModeEventListeners) {
                    if (onMapModeEventListener != null) {
                        onMapModeEventListener.onMapModeEvent(weCarMapModeEvent);
                    }
                }
            }
        });
    }

    private void onRouteGuideSpeakModeEvent(final WeCarRouteGuideSpeakModeEvent weCarRouteGuideSpeakModeEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.8
            @Override // java.lang.Runnable
            public void run() {
                for (OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener : InfoDispatchRemoteApi.this.mRouteGuideSpeakModeEventListener) {
                    if (onRouteGuideSpeakModeEventListener != null) {
                        onRouteGuideSpeakModeEventListener.onWeCarRouteGuideSpeakModeEvent(weCarRouteGuideSpeakModeEvent);
                    }
                }
            }
        });
    }

    private void onLinkInfoChanged(final WeCarLinkInfo weCarLinkInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.9
            @Override // java.lang.Runnable
            public void run() {
                for (OnLinkInfoListener onLinkInfoListener : InfoDispatchRemoteApi.this.mLinkInfoListeners) {
                    if (onLinkInfoListener != null) {
                        onLinkInfoListener.onLinkInfoChanged(weCarLinkInfo);
                    }
                }
            }
        });
    }

    private void onDrLocationInfoChanged(final WeCarDrLocationInfo weCarDrLocationInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.10
            @Override // java.lang.Runnable
            public void run() {
                for (OnDrLocationInfoListener onDrLocationInfoListener : InfoDispatchRemoteApi.this.mDrLocationInfoListeners) {
                    if (onDrLocationInfoListener != null) {
                        onDrLocationInfoListener.onDrLocationInfoChanged(weCarDrLocationInfo);
                    }
                }
            }
        });
    }

    private void onAppEvent(final WeCarAppEvent weCarAppEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.11
            @Override // java.lang.Runnable
            public void run() {
                for (OnAppEventListener onAppEventListener : InfoDispatchRemoteApi.this.mAppEventListeners) {
                    if (onAppEventListener != null) {
                        onAppEventListener.onAppEvent(weCarAppEvent);
                    }
                }
            }
        });
    }

    private void onMapMonitorEvent(final WeCarMapMonitorEvent weCarMapMonitorEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.12
            @Override // java.lang.Runnable
            public void run() {
                for (OnMapMonitorListener onMapMonitorListener : InfoDispatchRemoteApi.this.mMapMonitorListeners) {
                    if (onMapMonitorListener != null) {
                        onMapMonitorListener.onFinish(weCarMapMonitorEvent);
                    }
                }
            }
        });
    }

    private void compatibleWithOldVersions(WeCarNaviInfo weCarNaviInfo) {
        if (!this.mWeCarNaviInfo.weCarGuideInfo.equals(weCarNaviInfo.weCarGuideInfo)) {
            this.mWeCarNaviInfo.weCarGuideInfo = weCarNaviInfo.weCarGuideInfo;
            onGuideInfoChanged(this.mWeCarNaviInfo.weCarGuideInfo);
        }
        if (!this.mWeCarNaviInfo.weCarEtaInfo.equals(weCarNaviInfo.weCarEtaInfo)) {
            this.mWeCarNaviInfo.weCarEtaInfo = weCarNaviInfo.weCarEtaInfo;
            onETAInfoChanged(this.mWeCarNaviInfo.weCarEtaInfo);
        }
        if (!this.mWeCarNaviInfo.weCarRoadsideCameraInfo.equals(weCarNaviInfo.weCarRoadsideCameraInfo)) {
            this.mWeCarNaviInfo.weCarRoadsideCameraInfo = weCarNaviInfo.weCarRoadsideCameraInfo;
            this.mWeCarNaviInfo.weCarRoadsideCameraInfos.clear();
            this.mWeCarNaviInfo.weCarRoadsideCameraInfos.addAll(weCarNaviInfo.weCarRoadsideCameraInfos);
            onRoadsideCameraInfoChanged(this.mWeCarNaviInfo.weCarRoadsideCameraInfo, this.mWeCarNaviInfo.weCarRoadsideCameraInfos);
        }
        if (!this.mWeCarNaviInfo.weCarHighwayInfo.equals(weCarNaviInfo.weCarHighwayInfo)) {
            this.mWeCarNaviInfo.weCarHighwayInfo = weCarNaviInfo.weCarHighwayInfo;
            onHighwayInfoChanged(this.mWeCarNaviInfo.weCarHighwayInfo);
        }
        if (!this.mWeCarNaviInfo.weCarZoneSpeedInfo.equals(weCarNaviInfo.weCarZoneSpeedInfo)) {
            this.mWeCarNaviInfo.weCarZoneSpeedInfo = weCarNaviInfo.weCarZoneSpeedInfo;
            onZoneSpeedInfoChanged(this.mWeCarNaviInfo.weCarZoneSpeedInfo);
        }
        if (!this.mWeCarNaviInfo.weCarLaneLineInfo.equals(weCarNaviInfo.weCarLaneLineInfo)) {
            this.mWeCarNaviInfo.weCarLaneLineInfo = weCarNaviInfo.weCarLaneLineInfo;
            onLaneLineInfoChanged(this.mWeCarNaviInfo.weCarLaneLineInfo);
        }
        if (!this.mWeCarNaviInfo.weCarNaviRoadConditionInfo.equals(weCarNaviInfo.weCarNaviRoadConditionInfo)) {
            this.mWeCarNaviInfo.weCarNaviRoadConditionInfo = weCarNaviInfo.weCarNaviRoadConditionInfo;
            onNaviRoadConditionInfo(this.mWeCarNaviInfo.weCarNaviRoadConditionInfo);
        }
        if (!this.mWeCarNaviInfo.weCarStartStopEvent.equals(weCarNaviInfo.weCarStartStopEvent)) {
            this.mWeCarNaviInfo.weCarStartStopEvent = weCarNaviInfo.weCarStartStopEvent;
            onStartStopEvent(this.mWeCarNaviInfo.weCarStartStopEvent);
        }
        if (!this.mWeCarNaviInfo.weCarArriveEvent.equals(weCarNaviInfo.weCarArriveEvent)) {
            this.mWeCarNaviInfo.weCarArriveEvent = weCarNaviInfo.weCarArriveEvent;
            onArriveEvent(this.mWeCarNaviInfo.weCarArriveEvent);
        }
        if (!this.mWeCarNaviInfo.weCarYawEvent.equals(weCarNaviInfo.weCarYawEvent)) {
            this.mWeCarNaviInfo.weCarYawEvent = weCarNaviInfo.weCarYawEvent;
            onYawEvent(this.mWeCarNaviInfo.weCarYawEvent);
        }
        if (!this.mWeCarNaviInfo.weCarRouteEvent.equals(weCarNaviInfo.weCarRouteEvent)) {
            this.mWeCarNaviInfo.weCarRouteEvent = weCarNaviInfo.weCarRouteEvent;
            onRouteEvent(this.mWeCarNaviInfo.weCarRouteEvent);
        }
        if (this.mWeCarNaviInfo.weCarEnlargeMapInfo.equals(weCarNaviInfo.weCarEnlargeMapInfo)) {
            return;
        }
        this.mWeCarNaviInfo.weCarEnlargeMapInfo = weCarNaviInfo.weCarEnlargeMapInfo;
        onEnlargedMapInfoChanged(this.mWeCarNaviInfo.weCarEnlargeMapInfo);
    }

    private void onEnlargedMapInfoChanged(final WeCarEnlargeMapInfo weCarEnlargeMapInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.13
            @Override // java.lang.Runnable
            public void run() {
                for (OnEnlargeMapInfoListener onEnlargeMapInfoListener : InfoDispatchRemoteApi.this.mEnlargedMapInfoListeners) {
                    if (onEnlargeMapInfoListener != null) {
                        onEnlargeMapInfoListener.onEnlargedMapInfoChanged(weCarEnlargeMapInfo);
                    }
                }
            }
        });
    }

    private void onRouteEvent(final WeCarRouteEvent weCarRouteEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.14
            @Override // java.lang.Runnable
            public void run() {
                for (OnRouteEventListener onRouteEventListener : InfoDispatchRemoteApi.this.mRouteEventListeners) {
                    if (onRouteEventListener != null) {
                        onRouteEventListener.onRouteEvent(weCarRouteEvent);
                    }
                }
            }
        });
    }

    private void onYawEvent(final WeCarYawEvent weCarYawEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.15
            @Override // java.lang.Runnable
            public void run() {
                for (OnYawEventListener onYawEventListener : InfoDispatchRemoteApi.this.mYawEventListeners) {
                    if (onYawEventListener != null) {
                        onYawEventListener.onYawEvent(weCarYawEvent);
                    }
                }
            }
        });
    }

    private void onArriveEvent(final WeCarArriveEvent weCarArriveEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.16
            @Override // java.lang.Runnable
            public void run() {
                for (OnArriveEventListener onArriveEventListener : InfoDispatchRemoteApi.this.mArriveEventListeners) {
                    if (onArriveEventListener != null) {
                        onArriveEventListener.onArriveEvent(weCarArriveEvent);
                    }
                }
            }
        });
    }

    private void onStartStopEvent(final WeCarStartStopEvent weCarStartStopEvent) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.17
            @Override // java.lang.Runnable
            public void run() {
                for (OnStartStopEventListener onStartStopEventListener : InfoDispatchRemoteApi.this.mStartStopEventListeners) {
                    if (onStartStopEventListener != null) {
                        onStartStopEventListener.onStartStopEvent(weCarStartStopEvent);
                    }
                }
            }
        });
    }

    private void onNaviRoadConditionInfo(final WeCarNaviRoadConditionInfo weCarNaviRoadConditionInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.18
            @Override // java.lang.Runnable
            public void run() {
                for (OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener : InfoDispatchRemoteApi.this.mNaviRoadConditionInfoListeners) {
                    if (onNaviRoadConditionInfoListener != null) {
                        onNaviRoadConditionInfoListener.onNaviRoadConditionInfo(weCarNaviRoadConditionInfo);
                    }
                }
            }
        });
    }

    private void onLaneLineInfoChanged(final WeCarLaneLineInfo weCarLaneLineInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.19
            @Override // java.lang.Runnable
            public void run() {
                for (OnLaneLineInfoListener onLaneLineInfoListener : InfoDispatchRemoteApi.this.mLaneLineInfoListeners) {
                    if (onLaneLineInfoListener != null) {
                        onLaneLineInfoListener.onLaneLineInfoChanged(weCarLaneLineInfo);
                    }
                }
            }
        });
    }

    private void onZoneSpeedInfoChanged(final WeCarZoneSpeedInfo weCarZoneSpeedInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.20
            @Override // java.lang.Runnable
            public void run() {
                for (OnZoneSpeedInfoListener onZoneSpeedInfoListener : InfoDispatchRemoteApi.this.mZoneSpeedInfoListeners) {
                    if (onZoneSpeedInfoListener != null) {
                        onZoneSpeedInfoListener.onZoneSpeedInfoChanged(weCarZoneSpeedInfo);
                    }
                }
            }
        });
    }

    private void onHighwayInfoChanged(final WeCarHighwayInfo weCarHighwayInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.21
            @Override // java.lang.Runnable
            public void run() {
                for (OnHighwayInfoListener onHighwayInfoListener : InfoDispatchRemoteApi.this.mHighwayInfoListeners) {
                    if (onHighwayInfoListener != null) {
                        onHighwayInfoListener.onHighwayInfoChanged(weCarHighwayInfo);
                    }
                }
            }
        });
    }

    private void onRoadsideCameraInfoChanged(final WeCarRoadsideCameraInfo weCarRoadsideCameraInfo, final List<WeCarRoadsideCameraInfo> list) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.22
            @Override // java.lang.Runnable
            public void run() {
                for (OnCameraInfoListener onCameraInfoListener : InfoDispatchRemoteApi.this.mCameraInfoListeners) {
                    if (onCameraInfoListener != null) {
                        onCameraInfoListener.onRoadsideCameraInfoChanged(weCarRoadsideCameraInfo, list);
                    }
                }
            }
        });
    }

    private void onETAInfoChanged(final WeCarEtaInfo weCarEtaInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.23
            @Override // java.lang.Runnable
            public void run() {
                for (OnETAInfoListener onETAInfoListener : InfoDispatchRemoteApi.this.mETAInfoListeners) {
                    if (onETAInfoListener != null) {
                        onETAInfoListener.onETAInfoChanged(weCarEtaInfo);
                    }
                }
            }
        });
    }

    private void onGuideInfoChanged(final WeCarGuideInfo weCarGuideInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.24
            @Override // java.lang.Runnable
            public void run() {
                for (OnGuideInfoListener onGuideInfoListener : InfoDispatchRemoteApi.this.mGuideInfoListeners) {
                    if (onGuideInfoListener != null) {
                        onGuideInfoListener.onGuideInfoChanged(weCarGuideInfo);
                    }
                }
            }
        });
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener) {
        if (onExitTeamTripEventListener == null || this.mOnExitTeamTripEventListeners.contains(onExitTeamTripEventListener)) {
            return;
        }
        this.mOnExitTeamTripEventListeners.add(onExitTeamTripEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener) {
        if (onExitTeamTripEventListener == null) {
            return;
        }
        this.mOnExitTeamTripEventListeners.remove(onExitTeamTripEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener) {
        if (onTeamTripChangeEventListener == null || this.mOnTeamTripChangeEventListeners.contains(onTeamTripChangeEventListener)) {
            return;
        }
        this.mOnTeamTripChangeEventListeners.add(onTeamTripChangeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener) {
        if (onTeamTripChangeEventListener == null) {
            return;
        }
        this.mOnTeamTripChangeEventListeners.remove(onTeamTripChangeEventListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener) {
        if (onRouteInfoChangedListener == null || this.mRouteInfoChangedListeners.contains(onRouteInfoChangedListener)) {
            return;
        }
        this.mRouteInfoChangedListeners.add(onRouteInfoChangedListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener) {
        if (onRouteInfoChangedListener == null) {
            return;
        }
        this.mRouteInfoChangedListeners.remove(onRouteInfoChangedListener);
    }

    private void onRouteInfoChanged(final WeCarRouteInfoChanged weCarRouteInfoChanged) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.25
            @Override // java.lang.Runnable
            public void run() {
                for (OnRouteInfoChangedListener onRouteInfoChangedListener : InfoDispatchRemoteApi.this.mRouteInfoChangedListeners) {
                    if (onRouteInfoChangedListener != null) {
                        onRouteInfoChangedListener.routeInfoChanged(weCarRouteInfoChanged);
                    }
                }
            }
        });
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener) {
        if (onAddPassPoiListener == null || this.onAddPassPoiListeners.contains(onAddPassPoiListener)) {
            return;
        }
        this.onAddPassPoiListeners.add(onAddPassPoiListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener) {
        if (onAddPassPoiListener == null) {
            return;
        }
        this.onAddPassPoiListeners.remove(onAddPassPoiListener);
    }

    private void onAddPassPoi(final WeCarRoutePoiNode weCarRoutePoiNode) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.26
            @Override // java.lang.Runnable
            public void run() {
                for (OnAddPassPoiListener onAddPassPoiListener : InfoDispatchRemoteApi.this.onAddPassPoiListeners) {
                    if (onAddPassPoiListener != null) {
                        onAddPassPoiListener.onAddPassPoi(weCarRoutePoiNode);
                    }
                }
            }
        });
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener) {
        if (onDestinationParkingUpdateListener == null || this.onDestinationParkingUpdateListeners.contains(onDestinationParkingUpdateListener)) {
            return;
        }
        this.onDestinationParkingUpdateListeners.add(onDestinationParkingUpdateListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener) {
        if (onDestinationParkingUpdateListener == null) {
            return;
        }
        this.onDestinationParkingUpdateListeners.remove(onDestinationParkingUpdateListener);
    }

    private void onDestinationParkingUpdate(final List<WeCarRouteParkingPoiInfo> list) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.27
            @Override // java.lang.Runnable
            public void run() {
                for (OnDestinationParkingUpdateListener onDestinationParkingUpdateListener : InfoDispatchRemoteApi.this.onDestinationParkingUpdateListeners) {
                    if (onDestinationParkingUpdateListener != null) {
                        onDestinationParkingUpdateListener.onParkingUpdate(list);
                    }
                }
            }
        });
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerPushPoiListener(OnPushPoiListener onPushPoiListener) {
        if (onPushPoiListener == null || this.onPushPoiListeners.contains(onPushPoiListener)) {
            return;
        }
        this.onPushPoiListeners.add(onPushPoiListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterPushPoiListener(OnPushPoiListener onPushPoiListener) {
        if (onPushPoiListener == null) {
            return;
        }
        this.onPushPoiListeners.remove(onPushPoiListener);
    }

    public void onPushPoi(final WeCarPushPoiInfo weCarPushPoiInfo) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.28
            @Override // java.lang.Runnable
            public void run() {
                for (OnPushPoiListener onPushPoiListener : InfoDispatchRemoteApi.this.onPushPoiListeners) {
                    if (onPushPoiListener != null) {
                        onPushPoiListener.onPushPoi(weCarPushPoiInfo);
                    }
                }
            }
        });
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void registerSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener) {
        if (onSubscribeMessageListener == null || this.onSubscribeMessageListeners.contains(onSubscribeMessageListener)) {
            return;
        }
        this.onSubscribeMessageListeners.add(onSubscribeMessageListener);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.IInfoDispatchApi
    public void unregisterSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener) {
        if (onSubscribeMessageListener == null) {
            return;
        }
        this.onSubscribeMessageListeners.remove(onSubscribeMessageListener);
    }

    public void onSubscribeMessage(final WeCarSubscribeMessage weCarSubscribeMessage) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.taes.remote.impl.infodispatcher.InfoDispatchRemoteApi.29
            @Override // java.lang.Runnable
            public void run() {
                for (OnSubscribeMessageListener onSubscribeMessageListener : InfoDispatchRemoteApi.this.onSubscribeMessageListeners) {
                    if (onSubscribeMessageListener != null) {
                        onSubscribeMessageListener.onResumeMessage(weCarSubscribeMessage);
                    }
                }
            }
        });
    }
}
