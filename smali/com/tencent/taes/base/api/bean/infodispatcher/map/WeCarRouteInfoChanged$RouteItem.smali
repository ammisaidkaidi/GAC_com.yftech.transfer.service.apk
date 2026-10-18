.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;
.super Ljava/lang/Object;
.source "WeCarRouteInfoChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteItem"
.end annotation


# instance fields
.field public guideText:Ljava/lang/String;

.field public length:I

.field public roadName:Ljava/lang/String;

.field public turnKind:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->turnKind:I

    .line 88
    iput-object p2, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->roadName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->guideText:Ljava/lang/String;

    .line 90
    iput p4, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->length:I

    return-void
.end method


# virtual methods
.method public getGuideText()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->guideText:Ljava/lang/String;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->length:I

    return p0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->roadName:Ljava/lang/String;

    return-object p0
.end method

.method public getTurnKind()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->turnKind:I

    return p0
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->guideText:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->length:I

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->roadName:Ljava/lang/String;

    return-void
.end method

.method public setTurnKind(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$RouteItem;->turnKind:I

    return-void
.end method
