.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;
.super Ljava/lang/Object;
.source "WeCarRouteInfoChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomBound"
.end annotation


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->left:D

    .line 30
    iput-wide p3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->top:D

    .line 31
    iput-wide p5, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->right:D

    .line 32
    iput-wide p7, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->bottom:D

    return-void
.end method


# virtual methods
.method public getBottom()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->bottom:D

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->left:D

    return-wide v0
.end method

.method public getRight()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->right:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->top:D

    return-wide v0
.end method

.method public setBottom(D)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->bottom:D

    return-void
.end method

.method public setLeft(D)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->left:D

    return-void
.end method

.method public setRight(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->right:D

    return-void
.end method

.method public setTop(D)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteInfoChanged$ZoomBound;->top:D

    return-void
.end method
