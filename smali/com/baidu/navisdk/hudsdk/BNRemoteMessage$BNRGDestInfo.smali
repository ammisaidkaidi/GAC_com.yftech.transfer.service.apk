.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGDestInfo"
.end annotation


# instance fields
.field public mDestIcon:I

.field public mDestLatitude:D

.field public mDestLongitude:D

.field public mDestTotalDist:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestIcon()I
    .locals 0

    .line 562
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestIcon:I

    return p0
.end method

.method public getDestLatitude()D
    .locals 2

    .line 546
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLatitude:D

    return-wide v0
.end method

.method public getDestLongitude()D
    .locals 2

    .line 538
    iget-wide v0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLongitude:D

    return-wide v0
.end method

.method public getDestTotalDist()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestTotalDist:I

    return p0
.end method

.method public setDestIcon(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestIcon:I

    return-void
.end method

.method public setDestLatitude(D)V
    .locals 0

    .line 550
    iput-wide p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLatitude:D

    return-void
.end method

.method public setDestLongitude(D)V
    .locals 0

    .line 542
    iput-wide p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestLongitude:D

    return-void
.end method

.method public setDestTotalDist(I)V
    .locals 0

    .line 558
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGDestInfo;->mDestTotalDist:I

    return-void
.end method
