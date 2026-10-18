.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;
.super Ljava/lang/Object;
.source "WeCarRouteInfoChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteSummaryInfo"
.end annotation


# instance fields
.field public isSetData:Z

.field public keyRoadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public length:I

.field public passTime:I

.field public routeDetail:Ljava/lang/String;

.field public routeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;",
            ">;"
        }
    .end annotation
.end field

.field public tollFee:I

.field public trafficLightCount:I

.field public zoomBound:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->isSetData:Z

    return-void
.end method


# virtual methods
.method public getKeyRoadList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->keyRoadList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLabel()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->label:I

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->length:I

    return p0
.end method

.method public getPassTime()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->passTime:I

    return p0
.end method

.method public getRouteDetail()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->routeDetail:Ljava/lang/String;

    return-object p0
.end method

.method public getRouteItemList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->routeItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTollFee()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->tollFee:I

    return p0
.end method

.method public getTrafficLightCount()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->trafficLightCount:I

    return p0
.end method

.method public getZoomBound()Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->zoomBound:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;

    return-object p0
.end method

.method public isSetData()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->isSetData:Z

    return p0
.end method

.method public setKeyRoadList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->keyRoadList:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabel(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->label:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->length:I

    return-void
.end method

.method public setPassTime(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->passTime:I

    return-void
.end method

.method public setRouteDetail(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->routeDetail:Ljava/lang/String;

    return-void
.end method

.method public setRouteItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->routeItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSetData(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->isSetData:Z

    return-void
.end method

.method public setTollFee(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->tollFee:I

    return-void
.end method

.method public setTrafficLightCount(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->trafficLightCount:I

    return-void
.end method

.method public setZoomBound(Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;->zoomBound:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;

    return-void
.end method
