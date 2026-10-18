.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarRouteInfoChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;,
        Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;,
        Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;
    }
.end annotation


# instance fields
.field public currentRouteIndex:I

.field public endPoi:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;

.field public routeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteSummaryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public startPoi:Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;

.field public viaPois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRoutePoiNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method
