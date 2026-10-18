.class public Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarTeamTripMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;
    }
.end annotation


# instance fields
.field public mIsSetTarget:Z

.field public mMaxDistance:D

.field public mTeamTripMemberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo$TeamTripMemberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method
