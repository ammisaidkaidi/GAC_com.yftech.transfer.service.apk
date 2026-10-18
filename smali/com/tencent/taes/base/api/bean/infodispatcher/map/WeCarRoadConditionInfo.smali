.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarRoadConditionInfo.java"


# static fields
.field public static final ROAD_COND_STATE_BLOCK:I = 0x2

.field public static final ROAD_COND_STATE_CLEAR:I = 0x0

.field public static final ROAD_COND_STATE_HEAVY_BLOCK:I = 0x4

.field public static final ROAD_COND_STATE_NONE:I = 0x3

.field public static final ROAD_COND_STATE_SLOW:I = 0x1


# instance fields
.field public destPosLat:D

.field public destPosLng:D

.field public mLength:I

.field public mPassTime:I

.field public mRoadCondState:I

.field public mRoadName:Ljava/lang/String;

.field public startPosLat:D

.field public startPosLng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 79
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    .line 80
    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadCondState:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadCondState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mLength:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mLength:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mPassTime:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mPassTime:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLat:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLng:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLng:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLat:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLng:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLng:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadName:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/16 v0, 0x8

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadCondState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mPassTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarRoadConditionInfo{mRoadCondState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadCondState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPassTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mPassTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->mRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startPosLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", startPosLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->startPosLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destPosLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destPosLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;->destPosLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
