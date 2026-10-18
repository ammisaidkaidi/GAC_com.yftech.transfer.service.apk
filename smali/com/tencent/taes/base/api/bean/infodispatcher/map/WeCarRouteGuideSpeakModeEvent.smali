.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarRouteGuideSpeakModeEvent.java"


# instance fields
.field public routeGuideSpeakModeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 22
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarRouteGuideSpeakModeEvent;->routeGuideSpeakModeType:I

    return-void
.end method
