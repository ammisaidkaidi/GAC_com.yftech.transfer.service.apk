.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarHighwayInfo.java"


# instance fields
.field public isShow:Z

.field public nextDist:I

.field public nextName:Ljava/lang/String;

.field public nextNextDist:I

.field public nextNextName:Ljava/lang/String;

.field public nextNextType:I

.field public nextType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;

    .line 30
    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->isShow:Z

    iget-boolean v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->isShow:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextDist:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextDist:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextDist:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextDist:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextName:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextName:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/4 v0, 0x7

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->isShow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextDist:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextDist:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarHighwayInfo;->nextNextType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
