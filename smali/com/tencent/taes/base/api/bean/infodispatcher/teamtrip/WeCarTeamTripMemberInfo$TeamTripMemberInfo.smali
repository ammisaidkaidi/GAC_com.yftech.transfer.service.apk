.class public Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;
.super Ljava/lang/Object;
.source "WeCarTeamTripMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeamTripMemberInfo"
.end annotation


# instance fields
.field private mDistance:D

.field private mHeadUrl:Ljava/lang/String;

.field private mIsMyself:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mDistance:D

    return-wide v0
.end method

.method public getHeadUrl()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mHeadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isMyself()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mIsMyself:Z

    return p0
.end method

.method public setDistance(D)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mDistance:D

    return-void
.end method

.method public setHeadUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mHeadUrl:Ljava/lang/String;

    return-void
.end method

.method public setMyself(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;->mIsMyself:Z

    return-void
.end method
