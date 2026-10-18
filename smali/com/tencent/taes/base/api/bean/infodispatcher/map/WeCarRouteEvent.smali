.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarRouteEvent.java"


# instance fields
.field public eventType:I

.field public isRouteSucc:Z

.field public resultCode:I

.field public routeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;

    .line 40
    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->routeType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->routeType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->eventType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->eventType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->resultCode:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->resultCode:I

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->isRouteSucc:Z

    iget-boolean p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->isRouteSucc:Z

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

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->routeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->eventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->resultCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteEvent;->isRouteSucc:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
