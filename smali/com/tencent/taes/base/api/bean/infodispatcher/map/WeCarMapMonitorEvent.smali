.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarMapMonitorEvent.java"


# instance fields
.field public taskType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 15
    iput p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarMapMonitorEvent;->taskType:I

    return-void
.end method
