.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarGuideInfo.java"


# instance fields
.field public currentGpsAngle:F

.field public currentRoadName:Ljava/lang/String;

.field public currentRoadSpeedLimit:I

.field public currentRoadType:I

.field public currentSpeed:I

.field public isOverSpeed:Z

.field public nextRoadName:Ljava/lang/String;

.field public roadCondInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

.field public thenDis:I

.field public thenTurnIconNum:I

.field public turnDis:I

.field public turnIconNum:I

.field public turnTotalDis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 26
    new-instance v0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    invoke-direct {v0}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->roadCondInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 33
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;

    .line 34
    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnDis:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnDis:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnIconNum:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnIconNum:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnTotalDis:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnTotalDis:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenTurnIconNum:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenTurnIconNum:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenDis:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenDis:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->isOverSpeed:Z

    iget-boolean v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->isOverSpeed:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentSpeed:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentSpeed:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadSpeedLimit:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadSpeedLimit:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentGpsAngle:F

    iget v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentGpsAngle:F

    .line 43
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->nextRoadName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->nextRoadName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->roadCondInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->roadCondInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/16 v0, 0xd

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnDis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnIconNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->turnTotalDis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->nextRoadName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenTurnIconNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->thenDis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->isOverSpeed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentSpeed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadName:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentRoadSpeedLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->roadCondInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoadConditionInfo;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarGuideInfo;->currentGpsAngle:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
