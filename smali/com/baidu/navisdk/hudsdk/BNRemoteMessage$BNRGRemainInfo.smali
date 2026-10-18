.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGRemainInfo"
.end annotation


# instance fields
.field private remainDistance:I

.field private remainTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemainDistance()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->remainDistance:I

    return p0
.end method

.method public getRemainTime()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->remainTime:I

    return p0
.end method

.method public setRemainDistance(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->remainDistance:I

    return-void
.end method

.method public setRemainTime(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGRemainInfo;->remainTime:I

    return-void
.end method
