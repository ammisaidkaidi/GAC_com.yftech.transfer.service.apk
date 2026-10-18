.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGCarInfo"
.end annotation


# instance fields
.field public mCarAngle:D

.field public mCurSpeed:I

.field public mLatitude:D

.field public mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarAngle()D
    .locals 2

    .line 496
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCarAngle:D

    return-wide v0
.end method

.method public getCurSpeed()I
    .locals 0

    .line 488
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCurSpeed:I

    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 480
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 472
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLongitude:D

    return-wide v0
.end method

.method public setCarAngle(D)V
    .locals 0

    .line 500
    iput-wide p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCarAngle:D

    return-void
.end method

.method public setCurSpeed(I)V
    .locals 0

    .line 492
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mCurSpeed:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 484
    iput-wide p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 476
    iput-wide p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGCarInfo;->mLongitude:D

    return-void
.end method
