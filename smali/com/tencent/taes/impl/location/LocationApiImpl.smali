.class public Lcom/tencent/taes/impl/location/LocationApiImpl;
.super Lcom/tencent/taes/impl/base/BaseConnectApi;
.source "LocationApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/location/ILocationApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/taes/impl/base/BaseConnectApi<",
        "Lcom/tencent/taes/remote/api/location/ILocationApi;",
        ">;",
        "Lcom/tencent/taes/api/location/ILocationApi;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationApiImp"


# instance fields
.field private mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;-><init>()V

    .line 26
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Location"

    new-instance v2, Lcom/tencent/taes/impl/location/LocationApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/location/LocationApiImpl$1;-><init>(Lcom/tencent/taes/impl/location/LocationApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/location/LocationApiImpl;)Lcom/tencent/taes/remote/api/location/ILocationApi;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->getLocationApi()Lcom/tencent/taes/remote/api/location/ILocationApi;

    move-result-object p0

    return-object p0
.end method

.method private getLocationApi()Lcom/tencent/taes/remote/api/location/ILocationApi;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Location"

    const-class v2, Lcom/tencent/taes/remote/api/location/ILocationApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/location/ILocationApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    .line 44
    iget-object v0, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    goto :goto_0

    :cond_0
    const-string v1, "LocationApiImp"

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApi Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->unregisterInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    .line 80
    invoke-virtual {p0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->unregisterConnectListener()V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;
    .locals 2

    const-string v0, "LocationApiImp"

    const-string v1, "getCurLocation"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->getLocationApi()Lcom/tencent/taes/remote/api/location/ILocationApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->getLocationApi()Lcom/tencent/taes/remote/api/location/ILocationApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/location/ILocationApi;->getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    new-instance p0, Lcom/tencent/taes/remote/api/location/bean/LocationBean;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/location/bean/LocationBean;-><init>()V

    return-object p0
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/tencent/taes/impl/base/BaseConnectApi;->registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V

    .line 55
    iget-object p1, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    if-nez p1, :cond_0

    const-string p1, "LocationApiImp"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInnerConnectListener Exception\uff1amLocationApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/tencent/taes/impl/location/LocationApiImpl;->getLocationApi()Lcom/tencent/taes/remote/api/location/ILocationApi;

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/tencent/taes/impl/location/LocationApiImpl;->mLocationApi:Lcom/tencent/taes/remote/api/location/ILocationApi;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/impl/location/LocationApiImpl;->registerInnerConnectListener(Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;)V

    return-void
.end method
