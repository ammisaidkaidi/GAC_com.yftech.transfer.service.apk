.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarZoneSpeedInfo.java"


# instance fields
.field public avgSpeed:I

.field public isOverspeed:Z

.field public isShow:Z

.field public remainDist:I

.field public speedLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;

    .line 25
    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isShow:Z

    iget-boolean v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isShow:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->speedLimit:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->speedLimit:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->remainDist:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->remainDist:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isOverspeed:Z

    iget-boolean v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isOverspeed:Z

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->avgSpeed:I

    iget p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->avgSpeed:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isShow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->speedLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->remainDist:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->isOverspeed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarZoneSpeedInfo;->avgSpeed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
