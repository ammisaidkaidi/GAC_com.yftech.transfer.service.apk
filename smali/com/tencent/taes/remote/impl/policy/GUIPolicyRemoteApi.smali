.class public Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "GUIPolicyRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "PolicyRemoteApi"


# instance fields
.field private mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 27
    invoke-static {p1}, Lcom/tencent/taes/remote/api/policy/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/policy/IPolicyService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    return-void
.end method

.method private static build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "(Native Method)"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "(Unknown Source)"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    const/16 v1, 0x28

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_2

    const/16 p0, 0x3a

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "):"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "PolicyRemoteApi"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reBindBinder  binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/tencent/taes/remote/api/policy/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/policy/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    .line 40
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public dumpState()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/policy/IPolicyService;->dumpState()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/PolicyCallback;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;
    .locals 2
    .param p3    # Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 81
    invoke-static {p4, v0}, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p4

    .line 82
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    invoke-virtual {p3}, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;->getInnerListener()Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/policy/IPolicyService;->requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/IPolicyListener;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public stopJudge(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/policy/GUIPolicyRemoteApi;->mPolicyService:Lcom/tencent/taes/remote/api/policy/IPolicyService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/policy/IPolicyService;->stopJudge(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
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

    .line 32
    new-instance p0, Landroid/util/Pair;

    const-string v0, "Policy"

    const-string v1, "com.tencent.taes.policy.impl.GuiPolicyService"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
