.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarSnapShotInfo.java"


# instance fields
.field public nextRoadName:Ljava/lang/String;

.field public remainDisInMetre:I

.field public remainTimeInSecond:I

.field public turnDis:I

.field public turnIconNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;

    .line 23
    iget v2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnDis:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnDis:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnIconNum:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnIconNum:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainTimeInSecond:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainTimeInSecond:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainDisInMetre:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainDisInMetre:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->nextRoadName:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->nextRoadName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnDis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnIconNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->nextRoadName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainTimeInSecond:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainDisInMetre:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarSnapShotInfo{turnDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", turnIconNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->turnIconNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", remainTimeInSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainTimeInSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainDisInMetre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSnapShotInfo;->remainDisInMetre:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
