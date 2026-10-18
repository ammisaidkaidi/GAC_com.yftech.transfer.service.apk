.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarMapModeEvent.java"


# instance fields
.field public mapModeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 20
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapModeEvent;->mapModeType:I

    return-void
.end method
