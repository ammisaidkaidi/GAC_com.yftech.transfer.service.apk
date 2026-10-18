.class public Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "GUIPolicyApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/gui/IGUIPolicyApi;


# static fields
.field public static final TAG:Ljava/lang/String; = "GUIPolicyApiImpl"


# instance fields
.field private mGUIPolicyApi:Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    .line 27
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Policy"

    new-instance v2, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl$1;-><init>(Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;)Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object p0

    return-object p0
.end method

.method private getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->mGUIPolicyApi:Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Policy"

    const-class v2, Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GUIPolicyApiImpl"

    const-string v2, "getApi success"

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->mGUIPolicyApi:Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    goto :goto_0

    :cond_0
    const-string v1, "GUIPolicyApiImpl"

    .line 47
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

    .line 50
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->mGUIPolicyApi:Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public dumpState()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;->dumpState()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/PolicyCallback;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;
    .locals 1
    .param p3    # Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "GUIPolicyApiImpl"

    const-string p1, "mGUIPolicyRemoteApi is null, grant it"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p0, Lcom/tencent/taes/remote/api/policy/bean/Response;

    invoke-direct {p0}, Lcom/tencent/taes/remote/api/policy/bean/Response;-><init>()V

    const/16 p1, 0x65

    .line 63
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/policy/bean/Response;->setRet(I)V

    return-object p0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;->requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/PolicyCallback;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;

    move-result-object p0

    return-object p0
.end method

.method public stopJudge(I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/tencent/taes/impl/gui/GUIPolicyApiImpl;->getGUIPolicyApi()Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;->stopJudge(I)V

    goto :goto_0

    :cond_0
    const-string p0, "GUIPolicyApiImpl"

    const-string p1, "mGUIPolicyRemoteApi is null"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
