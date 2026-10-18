.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNRGAssistant"
.end annotation


# instance fields
.field public mAssistType:I

.field public mRemainDist:I

.field public mSpeed:I

.field public mUpdateType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssistUpdateType()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mUpdateType:I

    return p0
.end method

.method public getAssistantDistance()I
    .locals 0

    .line 219
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mRemainDist:I

    return p0
.end method

.method public getAssistantLimitedSpeed()I
    .locals 0

    .line 214
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mSpeed:I

    return p0
.end method

.method public getAssistantType()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAssistant;->mAssistType:I

    return p0
.end method
