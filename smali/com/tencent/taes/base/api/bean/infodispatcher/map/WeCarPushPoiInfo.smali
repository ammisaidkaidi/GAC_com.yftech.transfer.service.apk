.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarPushPoiInfo.java"


# instance fields
.field public address:Ljava/lang/String;

.field public lat:D

.field public lng:D

.field public name:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 30
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;

    .line 31
    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->address:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lat:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lng:D

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lng:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->time:J

    iget-wide p0, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->time:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->address:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->lng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarPushPoiInfo;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
