.class public Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "InfoDispatchRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoDispatchRemoteApi"


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

.field private mInfoDispatchListener:Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;

.field private mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

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

.field private final mRouteGuideSpeakModeEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;",
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

.field private mUIHandler:Landroid/os/Handler;

.field private mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

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

.field private final onAddPassPoiListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestinationParkingUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPushPoiListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onSubscribeMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 109
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    .line 111
    new-instance p2, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    invoke-direct {p2}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    .line 114
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mArriveEventListeners:Ljava/util/List;

    .line 115
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mEnlargedMapInfoListeners:Ljava/util/List;

    .line 116
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mETAInfoListeners:Ljava/util/List;

    .line 117
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mGuideInfoListeners:Ljava/util/List;

    .line 118
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mHighwayInfoListeners:Ljava/util/List;

    .line 119
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLaneLineInfoListeners:Ljava/util/List;

    .line 120
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteEventListeners:Ljava/util/List;

    .line 121
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mStartStopEventListeners:Ljava/util/List;

    .line 122
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mYawEventListeners:Ljava/util/List;

    .line 123
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mZoneSpeedInfoListeners:Ljava/util/List;

    .line 124
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mCameraInfoListeners:Ljava/util/List;

    .line 125
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    .line 126
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMediaInfoListeners:Ljava/util/List;

    .line 127
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeChatMessageListeners:Ljava/util/List;

    .line 128
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOtherInfoListeners:Ljava/util/List;

    .line 129
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapMonitorListeners:Ljava/util/List;

    .line 130
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mAppEventListeners:Ljava/util/List;

    .line 131
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mDrLocationInfoListeners:Ljava/util/List;

    .line 132
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLinkInfoListeners:Ljava/util/List;

    .line 133
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapModeEventListeners:Ljava/util/List;

    .line 134
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteGuideSpeakModeEventListener:Ljava/util/List;

    .line 136
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnExitTeamTripEventListeners:Ljava/util/List;

    .line 137
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    .line 138
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteInfoChangedListeners:Ljava/util/List;

    .line 139
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoiListeners:Ljava/util/List;

    .line 140
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdateListeners:Ljava/util/List;

    .line 141
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoiListeners:Ljava/util/List;

    .line 142
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessageListeners:Ljava/util/List;

    .line 144
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    .line 599
    new-instance p2, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchListener:Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;

    .line 148
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onBind(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchNaviInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchMusicInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapModeEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteGuideSpeakModeEventListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLinkInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mDrLocationInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mAppEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapMonitorListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mEnlargedMapInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mYawEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchWeChatInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mArriveEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mStartStopEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLaneLineInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mZoneSpeedInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mHighwayInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mCameraInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mETAInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mGuideInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteInfoChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchOtherInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoiListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdateListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoiListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessageListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchTeamTripInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnExitTeamTripEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOtherInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeChatMessageListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMediaInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method private compatibleWithOldVersions(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;)V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    .line 986
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onGuideInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    .line 994
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onETAInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    .line 1002
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1003
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1004
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, v1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRoadsideCameraInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;Ljava/util/List;)V

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    .line 1013
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onHighwayInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;)V

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1020
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    .line 1021
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onZoneSpeedInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;)V

    .line 1027
    :cond_4
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    .line 1029
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onLaneLineInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;)V

    .line 1035
    :cond_5
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1036
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    .line 1037
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onNaviRoadConditionInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;)V

    .line 1043
    :cond_6
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1044
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    .line 1045
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V

    .line 1051
    :cond_7
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1052
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    .line 1053
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onArriveEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;)V

    .line 1059
    :cond_8
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1060
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    .line 1061
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onYawEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;)V

    .line 1067
    :cond_9
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1068
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    iput-object v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    .line 1069
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRouteEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;)V

    .line 1075
    :cond_a
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    iget-object v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1076
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    iput-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    .line 1077
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeCarNaviInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onEnlargedMapInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;)V

    :cond_b
    return-void
.end method

.method private dispatchMusicInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "InfoDispatchRemoteApi"

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicInfoDispatch jsonStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/music/WeCarMediaInfo;

    invoke-static {p1, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/music/WeCarMediaInfo;

    .line 695
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$5;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/music/WeCarMediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private dispatchNaviInfo(Ljava/lang/String;)V
    .locals 2

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    invoke-static {p1, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;

    .line 711
    iget v1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 878
    :pswitch_0
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarSubscribeMessage:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessage(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;)V

    goto/16 :goto_0

    .line 872
    :pswitch_1
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarPushPoiInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoi(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;)V

    goto/16 :goto_0

    .line 845
    :pswitch_2
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarFavoritePois:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onFavoritePoiChange(Ljava/util/List;)V

    goto/16 :goto_0

    .line 866
    :pswitch_3
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarDestinationParkings:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdate(Ljava/util/List;)V

    goto/16 :goto_0

    .line 860
    :pswitch_4
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarAddPassPoi:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoi(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;)V

    goto/16 :goto_0

    .line 854
    :pswitch_5
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteInfoChanged:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRouteInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;)V

    goto/16 :goto_0

    .line 838
    :pswitch_6
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteGuideSpeakModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRouteGuideSpeakModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;)V

    goto/16 :goto_0

    .line 831
    :pswitch_7
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarMapModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onMapModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;)V

    goto/16 :goto_0

    .line 824
    :pswitch_8
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLinkInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onLinkInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;)V

    goto/16 :goto_0

    .line 817
    :pswitch_9
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarDrLocationInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDrLocationInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;)V

    goto/16 :goto_0

    .line 809
    :pswitch_a
    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarAppEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAppEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;)V

    const-string p0, "InfoDispatchRemoteApi"

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNaviInfoDispatch WeCarAppEvent jsonStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 802
    :pswitch_b
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarMapMonitorEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onMapMonitorEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;)V

    goto :goto_0

    .line 795
    :pswitch_c
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onEnlargedMapInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;)V

    goto :goto_0

    .line 788
    :pswitch_d
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRouteEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;)V

    goto :goto_0

    .line 781
    :pswitch_e
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onYawEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;)V

    goto :goto_0

    .line 774
    :pswitch_f
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onArriveEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;)V

    goto :goto_0

    .line 766
    :pswitch_10
    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V

    const-string p0, "InfoDispatchRemoteApi"

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNaviInfoDispatch WeCarStartStopEvent jsonStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :pswitch_11
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onNaviRoadConditionInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;)V

    goto :goto_0

    .line 752
    :pswitch_12
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onLaneLineInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;)V

    goto :goto_0

    .line 745
    :pswitch_13
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onZoneSpeedInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;)V

    goto :goto_0

    .line 738
    :pswitch_14
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onHighwayInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;)V

    goto :goto_0

    .line 731
    :pswitch_15
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    iget-object v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onRoadsideCameraInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;Ljava/util/List;)V

    goto :goto_0

    .line 724
    :pswitch_16
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onETAInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V

    goto :goto_0

    .line 717
    :pswitch_17
    iget-object p1, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onGuideInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchOtherInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "InfoDispatchRemoteApi"

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtherInfoDispatch jsonStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$3;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private dispatchTeamTripInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "InfoDispatchRemoteApi"

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTeamTripInfo jsonStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;

    .line 632
    invoke-static {p1, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;

    .line 633
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private dispatchWeChatInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "InfoDispatchRemoteApi"

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWeChatInfoDispatch jsonStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage;

    invoke-static {p1, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage;

    .line 678
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$4;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/wechat/WeCarWeChatMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private onAddPassPoi(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$26;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$26;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onAppEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;)V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$11;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$11;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onArriveEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;)V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$16;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$16;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onBind(Landroid/os/IBinder;)V
    .locals 1

    .line 168
    invoke-static {p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchListener:Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;->registerInfoDispatchListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InfoDispatchRemoteApi"

    const-string v0, "registerInfoDispatchListener exception caught"

    .line 172
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onDestinationParkingUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$27;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$27;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onDrLocationInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;)V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$10;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onETAInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$23;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$23;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onEnlargedMapInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;)V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$13;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$13;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onFavoritePoiChange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarFavoritePoi;",
            ">;)V"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onGuideInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$24;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$24;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onHighwayInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;)V
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$21;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$21;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onLaneLineInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;)V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$19;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$19;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onLinkInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;)V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$9;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$9;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMapModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;)V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$7;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMapMonitorEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;)V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$12;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$12;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onNaviRoadConditionInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;)V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$18;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$18;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onRoadsideCameraInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;",
            ">;)V"
        }
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$22;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onRouteEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;)V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$14;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$14;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onRouteGuideSpeakModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$8;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$8;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onRouteInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;)V
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$25;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$25;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$17;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$17;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onYawEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;)V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$15;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$15;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onZoneSpeedInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;)V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$20;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$20;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onBind(Landroid/os/IBinder;)V

    .line 159
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public onPushPoi(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;)V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$28;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$28;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSubscribeMessage(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;)V
    .locals 2

    .line 1432
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$29;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$29;-><init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoiListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mAppEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mAppEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerEnlargeMapInfoListenerr(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1387
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoiListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    invoke-interface {v0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;->getStartEventCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    .line 341
    invoke-interface {p0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;->getStartEventCache()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    invoke-static {p0, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    .line 342
    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;->onStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mYawEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mYawEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sendCacheMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;->sendCacheMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "InfoDispatchRemoteApi"

    const-string p2, "sendCacheMessage exception caught"

    .line 205
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mInfoDispatchService:Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "InfoDispatchRemoteApi"

    const-string p2, "sendMessage exception caught"

    .line 191
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public subscribeModuleBinder()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance p0, Landroid/util/Pair;

    const-string v0, "InfoDispatcher"

    const-class v1, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public unregisterAddPassPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAddPassPoiListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1328
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onAddPassPoiListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAppEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnAppEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mAppEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterArriveEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnArriveEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mArriveEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCameraInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnCameraInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mCameraInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDestinationParkingUpdateListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDestinationParkingUpdateListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onDestinationParkingUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDrLocationInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnDrLocationInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mDrLocationInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterETAInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnETAInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mETAInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterEnlargeMapInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnEnlargeMapInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mEnlargedMapInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterExitTeapTripEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1254
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnExitTeamTripEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterFavoritePoiChangeListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnFavoritePoiChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterGuideInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnGuideInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mGuideInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterHighwayInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnHighwayInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mHighwayInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLaneLineInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLaneLineInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLaneLineInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLinkInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnLinkInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mLinkInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMapModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapModeEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapModeEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMapMonitorListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMapMonitorListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMapMonitorListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMediaInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnMediaInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mMediaInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterNaviRoadConditionInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnNaviRoadConditionInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mNaviRoadConditionInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOtherInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnOtherInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOtherInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterPushPoiListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnPushPoiListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1397
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onPushPoiListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRouteEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRouteGuideSpeakModeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteGuideSpeakModeEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteGuideSpeakModeEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRouteInfoChangedListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnRouteInfoChangedListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mRouteInfoChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterStartStopEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnStartStopEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mStartStopEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSubscribeMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnSubscribeMessageListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1427
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onSubscribeMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterTeamTripChangeEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1272
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mOnTeamTripChangeEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWeChatMessageListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnWeChatMessageListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterYawEventListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnYawEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mYawEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterZoneSpeedInfoListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/OnZoneSpeedInfoListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->mZoneSpeedInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
