.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarNaviRoadConditionInfo.java"


# instance fields
.field public destDesc:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public destPosLat:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public destPosLng:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public destType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public etaTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mRoadConds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public routeTotalLen:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startPosLat:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startPosLng:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->mRoadConds:Ljava/util/List;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 75
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;

    .line 76
    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->etaTime:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->etaTime:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->routeTotalLen:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->routeTotalLen:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destType:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLat:D

    iget-wide v5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLat:D

    .line 79
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLng:D

    iget-wide v5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLng:D

    .line 80
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLat:D

    iget-wide v5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLat:D

    .line 81
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLng:D

    iget-wide v5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLng:D

    .line 82
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->mRoadConds:Ljava/util/List;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->mRoadConds:Ljava/util/List;

    .line 83
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destDesc:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destDesc:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->mRoadConds:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->etaTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->routeTotalLen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destDesc:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarNaviRoadConditionInfo{mRoadConds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->mRoadConds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", etaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->etaTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routeTotalLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->routeTotalLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startPosLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", startPosLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->startPosLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destPosLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destPosLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarNaviRoadConditionInfo;->destPosLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
