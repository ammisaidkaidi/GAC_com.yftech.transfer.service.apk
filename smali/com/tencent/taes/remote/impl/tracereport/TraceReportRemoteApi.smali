.class public Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "TraceReportRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/tracereport/ITraceReportApi;


# instance fields
.field private mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 21
    invoke-static {p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    .line 32
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public setCustomDestInfo(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->setCustomDestInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCustomTracePoint(Lcom/tencent/taes/remote/api/location/bean/LocationBean;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->setCustomTracePoint(Lcom/tencent/taes/remote/api/location/bean/LocationBean;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->setExtData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUseCustomTrace(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->setUseCustomTrace(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startTraceReport()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->startTraceReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopTraceReport()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/tracereport/TraceReportRemoteApi;->mTraceReportService:Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService;->stopTraceReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeModuleBinder()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance p0, Landroid/util/Pair;

    const-string v0, "TraceReport"

    const-class v1, Lcom/tencent/taes/remote/api/tracereport/ITraceReportService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
