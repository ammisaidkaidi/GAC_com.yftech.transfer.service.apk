.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGManeuver"
.end annotation


# instance fields
.field public distance:I

.field public mIsStraight:Z

.field public mLaneAddTypeArray:[I

.field public mLaneCount:I

.field public mLaneSignArray:[I

.field public mLatitude:D

.field public mLongitude:D

.field public mManeuverId:I

.field public mRGTips:Ljava/lang/String;

.field public mRingFlag:I

.field public mTotalLaneAddType:I

.field public name:Ljava/lang/String;

.field public nextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->distance:I

    return p0
.end method

.method public getIsStragiht()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mIsStraight:Z

    return p0
.end method

.method public getManeuverDistance()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->distance:I

    return p0
.end method

.method public getManeuverId()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mManeuverId:I

    return p0
.end method

.method public getManeuverLaneSignArray()[I
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneSignArray:[I

    return-object p0
.end method

.method public getManeuverLaneTotalType()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mTotalLaneAddType:I

    return p0
.end method

.method public getManeuverLaneTypeArray()[I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneAddTypeArray:[I

    return-object p0
.end method

.method public getManeuverLat()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLatitude:D

    return-wide v0
.end method

.method public getManeuverLon()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLongitude:D

    return-wide v0
.end method

.method public getManeuverName()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getManeuverRingInfo()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRingFlag:I

    return p0
.end method

.method public getManeuverTotalLaneSum()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mLaneCount:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->nextRoadName:Ljava/lang/String;

    return-object p0
.end method

.method public getRGTips()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->mRGTips:Ljava/lang/String;

    return-object p0
.end method

.method public setDistance(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->distance:I

    return-void
.end method

.method public setManeuverDistance(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->distance:I

    return-void
.end method

.method public setManeuverName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->name:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->name:Ljava/lang/String;

    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGManeuver;->nextRoadName:Ljava/lang/String;

    return-void
.end method
