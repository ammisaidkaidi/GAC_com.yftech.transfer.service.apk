.class public Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarTeamTripEventInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo$Type;
    }
.end annotation


# instance fields
.field public mType:I

.field public mWeCarTeamTripMemberInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;->mType:I

    .line 20
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;->mType:I

    return-void
.end method
