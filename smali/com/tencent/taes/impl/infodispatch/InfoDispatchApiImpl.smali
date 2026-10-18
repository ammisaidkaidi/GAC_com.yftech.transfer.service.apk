.class public Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;
.super Lcom/tencent/taes/impl/base/BaseConnectApi;
.source "InfoDispatchApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/taes/impl/base/BaseConnectApi<",
        "Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;",
        ">;",
        "Lcom/tencent/taes/api/infodispatch/InfoDispatchApi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoDispatchApiImpl"


# instance fields
.field private final mAppEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mArriveEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrLocationInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mETAInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnlargedMapInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighwayInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

.field private final mLaneLineInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLinkInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapModeEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapMonitorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNaviRoadConditionInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAddPassPoiListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDestinationParkingUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnExitTeamTripEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFavoritePoiChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPushPoiListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRouteGuideSpeakModeEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSubscribeMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTeamTripChangeEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteInfoChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartStopEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mYawEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoneSpeedInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    .line 89
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "InfoDispatcher"

    new-instance v2, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;-><init>(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->printMsg(Ljava/lang/String;)V

    return-void
.end method

.method private clearListener()V
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1569
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1570
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1571
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1572
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1573
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1574
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1575
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1576
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1577
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1578
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1579
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1580
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1581
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1582
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1583
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1584
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1585
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1586
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1587
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1588
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1589
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1590
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1591
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1592
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1593
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1594
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1595
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1596
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1597
    invoke-virtual {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->unregisterConnectListener()V

    return-void
.end method

.method private getInfoDispatchRemoteApi()V
    .locals 4

    .line 114
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "InfoDispatcher"

    const-class v2, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    .line 117
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->initListener()V

    .line 118
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAESFrameworkManager.getInstance().getInfoDispatchRemoteApi \u83b7\u53d6\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->printMsg(Ljava/lang/String;)V

    const-string p0, "InfoDispatchApiImpl"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAPI Fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .line 1325
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_0

    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;

    .line 1330
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V

    goto :goto_0

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;

    .line 1334
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerEnlargeMapInfoListenerr(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V

    goto :goto_1

    .line 1337
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;

    .line 1338
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V

    goto :goto_2

    .line 1341
    :cond_3
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;

    .line 1342
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V

    goto :goto_3

    .line 1345
    :cond_4
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;

    .line 1346
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V

    goto :goto_4

    .line 1349
    :cond_5
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;

    .line 1350
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V

    goto :goto_5

    .line 1353
    :cond_6
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;

    .line 1354
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V

    goto :goto_6

    .line 1357
    :cond_7
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;

    .line 1358
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V

    goto :goto_7

    .line 1361
    :cond_8
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;

    .line 1362
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V

    goto :goto_8

    .line 1365
    :cond_9
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;

    .line 1366
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V

    goto :goto_9

    .line 1369
    :cond_a
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;

    .line 1370
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V

    goto :goto_a

    .line 1373
    :cond_b
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;

    .line 1374
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V

    goto :goto_b

    .line 1377
    :cond_c
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;

    .line 1378
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V

    goto :goto_c

    .line 1381
    :cond_d
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;

    .line 1382
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V

    goto :goto_d

    .line 1385
    :cond_e
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;

    .line 1386
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V

    goto :goto_e

    .line 1389
    :cond_f
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;

    .line 1390
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V

    goto :goto_f

    .line 1393
    :cond_10
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;

    .line 1394
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V

    goto :goto_10

    .line 1397
    :cond_11
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;

    .line 1398
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V

    goto :goto_11

    .line 1401
    :cond_12
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;

    .line 1402
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V

    goto :goto_12

    .line 1405
    :cond_13
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;

    .line 1406
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V

    goto :goto_13

    .line 1409
    :cond_14
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;

    .line 1410
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V

    goto :goto_14

    .line 1413
    :cond_15
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;

    .line 1414
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V

    goto :goto_15

    .line 1417
    :cond_16
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;

    .line 1418
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V

    goto :goto_16

    .line 1421
    :cond_17
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;

    .line 1422
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V

    goto :goto_17

    .line 1425
    :cond_18
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;

    .line 1426
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V

    goto :goto_18

    .line 1429
    :cond_19
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;

    .line 1430
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V

    goto :goto_19

    .line 1433
    :cond_1a
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;

    .line 1434
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V

    goto :goto_1a

    :cond_1b
    return-void
.end method

.method private printMsg(Ljava/lang/String;)V
    .locals 0

    const-string p0, "InfoDispatchApiImpl"

    .line 1318
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unInit()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->unInitListener()V

    .line 109
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->clearListener()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    return-void
.end method

.method private unInitListener()V
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_0

    return-void

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;

    .line 1447
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;

    .line 1451
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterEnlargeMapInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V

    goto :goto_1

    .line 1454
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;

    .line 1455
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V

    goto :goto_2

    .line 1458
    :cond_3
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;

    .line 1459
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V

    goto :goto_3

    .line 1462
    :cond_4
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;

    .line 1463
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V

    goto :goto_4

    .line 1466
    :cond_5
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;

    .line 1467
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V

    goto :goto_5

    .line 1470
    :cond_6
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;

    .line 1471
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V

    goto :goto_6

    .line 1474
    :cond_7
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;

    .line 1475
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V

    goto :goto_7

    .line 1478
    :cond_8
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;

    .line 1479
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V

    goto :goto_8

    .line 1482
    :cond_9
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;

    .line 1483
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V

    goto :goto_9

    .line 1486
    :cond_a
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;

    .line 1487
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V

    goto :goto_a

    .line 1490
    :cond_b
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;

    .line 1491
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V

    goto :goto_b

    .line 1494
    :cond_c
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;

    .line 1495
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V

    goto :goto_c

    .line 1498
    :cond_d
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;

    .line 1499
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V

    goto :goto_d

    .line 1502
    :cond_e
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;

    .line 1503
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V

    goto :goto_e

    .line 1506
    :cond_f
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;

    .line 1507
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V

    goto :goto_f

    .line 1510
    :cond_10
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;

    .line 1511
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V

    goto :goto_10

    .line 1514
    :cond_11
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;

    .line 1515
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V

    goto :goto_11

    .line 1518
    :cond_12
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;

    .line 1519
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V

    goto :goto_12

    .line 1522
    :cond_13
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;

    .line 1523
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V

    goto :goto_13

    .line 1526
    :cond_14
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;

    .line 1527
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V

    goto :goto_14

    .line 1530
    :cond_15
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;

    .line 1531
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V

    goto :goto_15

    .line 1534
    :cond_16
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;

    .line 1535
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V

    goto :goto_16

    .line 1537
    :cond_17
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;

    .line 1538
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V

    goto :goto_17

    .line 1541
    :cond_18
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;

    .line 1542
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V

    goto :goto_18

    .line 1545
    :cond_19
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;

    .line 1546
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V

    goto :goto_19

    .line 1549
    :cond_1a
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;

    .line 1550
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V

    goto :goto_1a

    .line 1553
    :cond_1b
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;

    .line 1554
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V

    goto :goto_1b

    .line 1557
    :cond_1c
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;

    .line 1558
    iget-object v2, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {v2, v1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V

    goto :goto_1c

    .line 1561
    :cond_1d
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->unregisterInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1610
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->unInit()V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public registerAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerAddPassPoiListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1155
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1159
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V

    return-void
.end method

.method public registerAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerAppEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 809
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 813
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V

    return-void
.end method

.method public registerArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerArriveEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V

    return-void
.end method

.method public registerCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerCameraInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 561
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 565
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V

    return-void
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lcom/tencent/taes/impl/base/BaseConnectApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    .line 128
    iget-object p1, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez p1, :cond_0

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerInnerConnectListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 129
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    return-void
.end method

.method public registerDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerDestinationParkingUpdateListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1196
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1200
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V

    return-void
.end method

.method public registerDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 851
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 855
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V

    return-void
.end method

.method public registerETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerETAInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 237
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V

    return-void
.end method

.method public registerEnlargeMapInfoListenerr(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerEnlargeMapInfoListenerr Exception\uff1amInfoDispatchRemoteApi is null"

    .line 192
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 196
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerEnlargeMapInfoListenerr(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V

    return-void
.end method

.method public registerExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 978
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 982
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V

    return-void
.end method

.method public registerFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1085
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1089
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V

    return-void
.end method

.method public registerGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerGuideInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 278
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V

    return-void
.end method

.method public registerHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerHighwayInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 315
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 319
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V

    return-void
.end method

.method public registerLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerLaneLineInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 356
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 360
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V

    return-void
.end method

.method public registerLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 895
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 899
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V

    return-void
.end method

.method public registerMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 939
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 943
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V

    return-void
.end method

.method public registerMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerMapMonitorListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 768
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 772
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V

    return-void
.end method

.method public registerMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerMediaInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 643
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 647
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V

    return-void
.end method

.method public registerNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerNaviRoadConditionInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 602
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 606
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V

    return-void
.end method

.method public registerOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerOtherInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 725
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 729
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V

    return-void
.end method

.method public registerPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerPushPoiListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1237
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1241
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V

    return-void
.end method

.method public registerRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerRouteEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 397
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 401
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V

    return-void
.end method

.method public registerRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1049
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1053
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V

    return-void
.end method

.method public registerRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerRoutePlanResultListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1119
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1123
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V

    return-void
.end method

.method public registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerStartStopEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 438
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 442
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V

    return-void
.end method

.method public registerSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerSubscribeMessageListener Exception\uff1amInfoDispatchRemoteApi is null "

    .line 1277
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1281
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V

    return-void
.end method

.method public registerTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1011
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1015
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V

    return-void
.end method

.method public registerWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerWeChatMessageListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 684
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 688
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V

    return-void
.end method

.method public registerYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerYawEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 479
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 483
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V

    return-void
.end method

.method public registerZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_2

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "registerZoneSpeedInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 520
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 524
    :cond_2
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->registerZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_0

    const-string p1, "sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1311
    invoke-direct {p0, p1}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->printMsg(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1314
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unregisterAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1173
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterAddPassPoiListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1174
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1178
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V

    return-void
.end method

.method public unregisterAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterAppEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 827
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 831
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V

    return-void
.end method

.method public unregisterArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterArriveEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 174
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V

    return-void
.end method

.method public unregisterCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterCameraInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 580
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 584
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V

    return-void
.end method

.method public unregisterDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1214
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterDestinationParkingUpdateListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1215
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1219
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V

    return-void
.end method

.method public unregisterDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 871
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 875
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V

    return-void
.end method

.method public unregisterETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterETAInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 252
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 256
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V

    return-void
.end method

.method public unregisterEnlargeMapInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterEnlargeMapInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 211
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterEnlargeMapInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V

    return-void
.end method

.method public unregisterExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 991
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 992
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 996
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V

    return-void
.end method

.method public unregisterFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1099
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1103
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V

    return-void
.end method

.method public unregisterGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterGuideInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 293
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 297
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V

    return-void
.end method

.method public unregisterHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterHighwayInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 334
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V

    return-void
.end method

.method public unregisterLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterLaneLineInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 375
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 379
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V

    return-void
.end method

.method public unregisterLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 914
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 915
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 919
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V

    return-void
.end method

.method public unregisterMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 959
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 963
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V

    return-void
.end method

.method public unregisterMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 785
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterMapMonitorListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 786
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 790
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V

    return-void
.end method

.method public unregisterMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterMediaInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 662
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 666
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V

    return-void
.end method

.method public unregisterNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterNaviRoadConditionInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 621
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 625
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V

    return-void
.end method

.method public unregisterOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterOtherInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 744
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 748
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V

    return-void
.end method

.method public unregisterPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnPushPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1254
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterPushPoiListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1255
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1259
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V

    return-void
.end method

.method public unregisterRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterRouteEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 416
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V

    return-void
.end method

.method public unregisterRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1068
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1069
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1073
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V

    return-void
.end method

.method public unregisterRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1132
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterRouteInfoChangedListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1133
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1137
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V

    return-void
.end method

.method public unregisterStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterStartStopEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 457
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 461
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V

    return-void
.end method

.method public unregisterSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1294
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterSubscribeMessageListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1295
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1299
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V

    return-void
.end method

.method public unregisterTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1024
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "InfoDispatcher sendMessage Exception\uff1amInfoDispatchRemoteApi is null"

    .line 1025
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 1029
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V

    return-void
.end method

.method public unregisterWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterWeChatMessageListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 703
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 707
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V

    return-void
.end method

.method public unregisterYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterYawEventListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 498
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 502
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V

    return-void
.end method

.method public unregisterZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    if-nez v0, :cond_1

    const-string p1, "InfoDispatchApiImpl"

    const-string v0, "unregisterZoneSpeedInfoListener Exception\uff1amInfoDispatchRemoteApi is null"

    .line 539
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->getInfoDispatchRemoteApi()V

    return-void

    .line 543
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->mInfoDispatchRemoteApi:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;->unregisterZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V

    return-void
.end method
