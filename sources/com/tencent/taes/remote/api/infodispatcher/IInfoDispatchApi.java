package com.tencent.taes.remote.api.infodispatcher;

import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
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

/* loaded from: /home/user/work/dex/classes.dex */
public interface IInfoDispatchApi extends IRegitsterConnectStateApi {
    void registerAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener);

    void registerAppEventListener(OnAppEventListener onAppEventListener);

    void registerArriveEventListener(OnArriveEventListener onArriveEventListener);

    void registerCameraInfoListener(OnCameraInfoListener onCameraInfoListener);

    void registerDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener);

    void registerDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener);

    void registerETAInfoListener(OnETAInfoListener onETAInfoListener);

    void registerEnlargeMapInfoListenerr(OnEnlargeMapInfoListener onEnlargeMapInfoListener);

    void registerExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener);

    void registerFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener);

    void registerGuideInfoListener(OnGuideInfoListener onGuideInfoListener);

    void registerHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener);

    void registerLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener);

    void registerLinkInfoListener(OnLinkInfoListener onLinkInfoListener);

    void registerMapModeEventListener(OnMapModeEventListener onMapModeEventListener);

    void registerMapMonitorListener(OnMapMonitorListener onMapMonitorListener);

    void registerMediaInfoListener(OnMediaInfoListener onMediaInfoListener);

    void registerNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener);

    void registerOtherInfoListener(OnOtherInfoListener onOtherInfoListener);

    void registerPushPoiListener(OnPushPoiListener onPushPoiListener);

    void registerRouteEventListener(OnRouteEventListener onRouteEventListener);

    void registerRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener);

    void registerRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener);

    void registerStartStopEventListener(OnStartStopEventListener onStartStopEventListener);

    void registerSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener);

    void registerTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener);

    void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener);

    void registerYawEventListener(OnYawEventListener onYawEventListener);

    void registerZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener);

    boolean sendCacheMessage(String str, String str2);

    boolean sendMessage(String str, String str2);

    void unregisterAddPassPoiListener(OnAddPassPoiListener onAddPassPoiListener);

    void unregisterAppEventListener(OnAppEventListener onAppEventListener);

    void unregisterArriveEventListener(OnArriveEventListener onArriveEventListener);

    void unregisterCameraInfoListener(OnCameraInfoListener onCameraInfoListener);

    void unregisterDestinationParkingUpdateListener(OnDestinationParkingUpdateListener onDestinationParkingUpdateListener);

    void unregisterDrLocationInfoListener(OnDrLocationInfoListener onDrLocationInfoListener);

    void unregisterETAInfoListener(OnETAInfoListener onETAInfoListener);

    void unregisterEnlargeMapInfoListener(OnEnlargeMapInfoListener onEnlargeMapInfoListener);

    void unregisterExitTeapTripEventListener(OnExitTeamTripEventListener onExitTeamTripEventListener);

    void unregisterFavoritePoiChangeListener(OnFavoritePoiChangeListener onFavoritePoiChangeListener);

    void unregisterGuideInfoListener(OnGuideInfoListener onGuideInfoListener);

    void unregisterHighwayInfoListener(OnHighwayInfoListener onHighwayInfoListener);

    void unregisterLaneLineInfoListener(OnLaneLineInfoListener onLaneLineInfoListener);

    void unregisterLinkInfoListener(OnLinkInfoListener onLinkInfoListener);

    void unregisterMapModeEventListener(OnMapModeEventListener onMapModeEventListener);

    void unregisterMapMonitorListener(OnMapMonitorListener onMapMonitorListener);

    void unregisterMediaInfoListener(OnMediaInfoListener onMediaInfoListener);

    void unregisterNaviRoadConditionInfoListener(OnNaviRoadConditionInfoListener onNaviRoadConditionInfoListener);

    void unregisterOtherInfoListener(OnOtherInfoListener onOtherInfoListener);

    void unregisterPushPoiListener(OnPushPoiListener onPushPoiListener);

    void unregisterRouteEventListener(OnRouteEventListener onRouteEventListener);

    void unregisterRouteGuideSpeakModeEventListener(OnRouteGuideSpeakModeEventListener onRouteGuideSpeakModeEventListener);

    void unregisterRouteInfoChangedListener(OnRouteInfoChangedListener onRouteInfoChangedListener);

    void unregisterStartStopEventListener(OnStartStopEventListener onStartStopEventListener);

    void unregisterSubscribeMessageListener(OnSubscribeMessageListener onSubscribeMessageListener);

    void unregisterTeamTripChangeEventListener(OnTeamTripChangeEventListener onTeamTripChangeEventListener);

    void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener);

    void unregisterYawEventListener(OnYawEventListener onYawEventListener);

    void unregisterZoneSpeedInfoListener(OnZoneSpeedInfoListener onZoneSpeedInfoListener);
}
