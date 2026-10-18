.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarEtaInfo.java"


# instance fields
.field public remainDisInMetre:I

.field public remainHighwayServiceAreaCount:I

.field public remainTimeInSecond:I

.field public remainTrafficLightCount:I


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

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;

    .line 22
    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTimeInSecond:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTimeInSecond:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainDisInMetre:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainDisInMetre:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainHighwayServiceAreaCount:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainHighwayServiceAreaCount:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTrafficLightCount:I

    iget p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTrafficLightCount:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTimeInSecond:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainDisInMetre:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainHighwayServiceAreaCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEtaInfo;->remainTrafficLightCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
