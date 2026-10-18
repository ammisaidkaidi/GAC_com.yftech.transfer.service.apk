.class public interface abstract Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;
.super Ljava/lang/Object;
.source "InfoDispatchApi.java"

# interfaces
.implements Lcom/tencent/taes/api/base/BaseApi;
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# virtual methods
.method public abstract registerAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
.end method

.method public abstract registerAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
.end method

.method public abstract registerArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
.end method

.method public abstract registerCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
.end method

.method public abstract registerDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
.end method

.method public abstract registerDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
.end method

.method public abstract registerETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
.end method

.method public abstract registerEnlargeMapInfoListenerr(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
.end method

.method public abstract registerExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
.end method

.method public abstract registerFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
.end method

.method public abstract registerGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
.end method

.method public abstract registerHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
.end method

.method public abstract registerLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
.end method

.method public abstract registerLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
.end method

.method public abstract registerMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
.end method

.method public abstract registerMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
.end method

.method public abstract registerMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
.end method

.method public abstract registerNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
.end method

.method public abstract registerOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
.end method

.method public abstract registerPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
.end method

.method public abstract registerRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
.end method

.method public abstract registerRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
.end method

.method public abstract registerRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
.end method

.method public abstract registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
.end method

.method public abstract registerSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
.end method

.method public abstract registerTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
.end method

.method public abstract registerWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
.end method

.method public abstract registerYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
.end method

.method public abstract registerZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract unregisterAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
.end method

.method public abstract unregisterAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
.end method

.method public abstract unregisterArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
.end method

.method public abstract unregisterCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
.end method

.method public abstract unregisterDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
.end method

.method public abstract unregisterDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
.end method

.method public abstract unregisterETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
.end method

.method public abstract unregisterEnlargeMapInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
.end method

.method public abstract unregisterExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
.end method

.method public abstract unregisterFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
.end method

.method public abstract unregisterGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
.end method

.method public abstract unregisterHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
.end method

.method public abstract unregisterLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
.end method

.method public abstract unregisterLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
.end method

.method public abstract unregisterMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
.end method

.method public abstract unregisterMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
.end method

.method public abstract unregisterMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
.end method

.method public abstract unregisterNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
.end method

.method public abstract unregisterOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
.end method

.method public abstract unregisterPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
.end method

.method public abstract unregisterRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
.end method

.method public abstract unregisterRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
.end method

.method public abstract unregisterRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
.end method

.method public abstract unregisterStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
.end method

.method public abstract unregisterSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
.end method

.method public abstract unregisterTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
.end method

.method public abstract unregisterWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
.end method

.method public abstract unregisterYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
.end method

.method public abstract unregisterZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
.end method
