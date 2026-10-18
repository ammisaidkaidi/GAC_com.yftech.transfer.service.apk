.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;
.super Ljava/lang/Object;
.source "WeCarNaviInfo.java"

# interfaces
.implements Lcom/tencent/taes/base/api/INoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo$Type;
    }
.end annotation


# instance fields
.field public type:I

.field public weCarAddPassPoi:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;

.field public weCarAppEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;

.field public weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

.field public weCarDestinationParkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public weCarDrLocationInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;

.field public weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

.field public weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

.field public weCarFavoritePois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarFavoritePoi;",
            ">;"
        }
    .end annotation
.end field

.field public weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

.field public weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

.field public weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

.field public weCarLinkInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;

.field public weCarMapModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;

.field public weCarMapMonitorEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;

.field public weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

.field public weCarPushPoiInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;

.field public weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

.field public weCarRoadsideCameraInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

.field public weCarRouteGuideSpeakModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;

.field public weCarRouteInfoChanged:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;

.field public weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

.field public weCarSubscribeMessage:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;

.field public weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

.field public weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method


# virtual methods
.method public setWeCarAddPassPoi(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarAddPassPoi:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;

    const/16 p1, 0x14

    .line 290
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarAppEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarAppEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarAppEvent;

    const/16 p1, 0xe

    .line 254
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarArriveEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarArriveEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarArriveEvent;

    const/16 p1, 0x9

    .line 229
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarDestinationParkingUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteParkingPoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarDestinationParkings:Ljava/util/List;

    const/16 p1, 0x15

    .line 295
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarDrLocationInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarDrLocationInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarDrLocationInfo;

    const/16 p1, 0xf

    .line 259
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarEnlargeMapInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEnlargeMapInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    const/16 p1, 0xc

    .line 244
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarEtaInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarEtaInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    const/4 p1, 0x2

    .line 193
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarFavoritePoi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarFavoritePoi;",
            ">;)V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarFavoritePois:Ljava/util/List;

    const/16 p1, 0x16

    .line 279
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarGuideInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarGuideInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    const/4 p1, 0x1

    .line 188
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarHighwayInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarHighwayInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    const/4 p1, 0x4

    .line 204
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarLaneLineInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLaneLineInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    const/4 p1, 0x6

    .line 214
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarLinkInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarLinkInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLinkInfo;

    const/16 p1, 0x10

    .line 264
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarMapModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarMapModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;

    const/16 p1, 0x11

    .line 269
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarMapMonitorEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarMapMonitorEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;

    const/16 p1, 0xd

    .line 249
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarNaviRoadConditionInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarNaviRoadConditionInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    const/4 p1, 0x7

    .line 219
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarPushPoiInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarPushPoiInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;

    const/16 p1, 0x17

    .line 300
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarRoadsideCameraInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadsideCameraInfo;

    .line 198
    iput-object p2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRoadsideCameraInfos:Ljava/util/List;

    const/4 p1, 0x3

    .line 199
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarRouteEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    const/16 p1, 0xb

    .line 239
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarRouteGuideSpeakModeEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteGuideSpeakModeEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;

    const/16 p1, 0x12

    .line 274
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarRouteInfoChanged(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarRouteInfoChanged:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;

    const/16 p1, 0x13

    .line 285
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarStartStopEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarStartStopEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarStartStopEvent;

    const/16 p1, 0x8

    .line 224
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarSubscribeMessage(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarSubscribeMessage:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;

    const/16 p1, 0x18

    .line 305
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarYawEvent(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarYawEvent:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    const/16 p1, 0xa

    .line 234
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method

.method public setWeCarZoneSpeedInfo(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->weCarZoneSpeedInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    const/4 p1, 0x5

    .line 209
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviInfo;->type:I

    return-void
.end method
