.class Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;
.super Ljava/lang/Object;
.source "BaiduNavigationAdapter.java"

# interfaces
.implements Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssistant(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;)V
    .locals 0

    return-void
.end method

.method public onCarFreeStatus(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarFreeStatus;)V
    .locals 0

    return-void
.end method

.method public onCarInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;)V
    .locals 0

    return-void
.end method

.method public onCarTunelInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarTunelInfo;)V
    .locals 0

    return-void
.end method

.method public onCruiseEnd(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseEnd;)V
    .locals 0

    return-void
.end method

.method public onCruiseStart(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCruiseStart;)V
    .locals 0

    return-void
.end method

.method public onCurShapeIndexUpdate(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurShapeIndexUpdate;)V
    .locals 0

    return-void
.end method

.method public onCurrentRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;)V
    .locals 3

    .line 387
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentRoad, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;->getCurrentRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCurrentRoad;->getCurrentRoadName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$702(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$1000(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$1000(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$700(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setCurrentRoadName(Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    .line 391
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    iget-object p1, p1, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mOnNavigationListenerControl:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$1000(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->onManeuverChanged(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)V

    :cond_0
    return-void
.end method

.method public onDestInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;)V
    .locals 0

    return-void
.end method

.method public onEnlargeRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;)V
    .locals 0

    return-void
.end method

.method public onGPSLost(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSLost;)V
    .locals 0

    return-void
.end method

.method public onGPSNormal(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGGPSNormal;)V
    .locals 0

    return-void
.end method

.method public onManeuver(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;)V
    .locals 6

    .line 344
    invoke-static {}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManeuver, curName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getNextRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalLaneSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverTotalLaneSum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLon()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", laneSignType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLaneSignArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getRGTips()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Lcom/yftech/car/navigation/CarNavigationManeuver;

    invoke-direct {v0}, Lcom/yftech/car/navigation/CarNavigationManeuver;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {v1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$700(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setCurrentRoadName(Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object v1

    .line 351
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getNextRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setNextRoadName(Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object v1

    .line 352
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setDistance(I)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object v1

    .line 353
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverTotalLaneSum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setLaneCount(I)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object v1

    .line 354
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setLatitude(D)Lcom/yftech/car/navigation/CarNavigationManeuver;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLon()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setLongitude(D)Lcom/yftech/car/navigation/CarNavigationManeuver;

    .line 356
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getManeuverLaneSignArray()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    array-length v2, v1

    new-array v2, v2, [Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    const/4 v3, 0x0

    .line 360
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 361
    iget-object v4, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    aget v5, v1, v3

    invoke-static {v4, v5}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$800(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 364
    :cond_1
    invoke-virtual {v0, v2}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setLaneSignArray([Lcom/yftech/car/navigation/CarNavigationManeuver$LaneSign;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    .line 365
    iget-object v1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$900(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Ljava/lang/String;)Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/car/navigation/CarNavigationManeuver;->setTurnInfo(Lcom/yftech/car/navigation/CarNavigationManeuver$TurnInfo;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    .line 366
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p1, v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$1002(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)Lcom/yftech/car/navigation/CarNavigationManeuver;

    .line 367
    iget-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    iget-object p1, p1, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->mOnNavigationListenerControl:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$2;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-virtual {p1, p0, v0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->onManeuverChanged(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)V

    return-void
.end method

.method public onNaviEnd(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviEnd;)V
    .locals 0

    return-void
.end method

.method public onNaviStart(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNaviStart;)V
    .locals 0

    return-void
.end method

.method public onNearByCamera(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNearByCameraInfo;)V
    .locals 0

    return-void
.end method

.method public onNextRoad(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGNextRoad;)V
    .locals 0

    return-void
.end method

.method public onRemainInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteInfo(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRoutePlanYawComplete(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawComplete;)V
    .locals 0

    return-void
.end method

.method public onRoutePlanYawing(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRPYawing;)V
    .locals 0

    return-void
.end method

.method public onServiceArea(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGServiceArea;)V
    .locals 0

    return-void
.end method
