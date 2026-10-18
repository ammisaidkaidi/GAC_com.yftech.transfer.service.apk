.class abstract Lcom/tencent/wecarbase/client/BasePolicyManager;
.super Lcom/tencent/wecarbase/client/BaseManager;
.source "BasePolicyManager.java"


# static fields
.field private static final DEBUG_PERF:Z = true

.field private static final TAG:Ljava/lang/String; = "BasePolicyManager"


# instance fields
.field private appName:Ljava/lang/String;

.field private mCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/wecarbase/client/IPolicyBaseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyListener:Lcom/tencent/wecarbase/policy/IPolicyListener;

.field private mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    .line 28
    new-instance p1, Lcom/tencent/wecarbase/client/BasePolicyManager$1;

    invoke-direct {p1, p0}, Lcom/tencent/wecarbase/client/BasePolicyManager$1;-><init>(Lcom/tencent/wecarbase/client/BasePolicyManager;)V

    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyListener:Lcom/tencent/wecarbase/policy/IPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/client/BasePolicyManager;)Landroid/util/SparseArray;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method protected dispose()V
    .locals 0

    return-void
.end method

.method public dumpState()Ljava/lang/String;
    .locals 2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/policy/PolicyService;->dumpState()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BasePolicyManager"

    const-string v1, "dumpState failed:"

    .line 189
    invoke-static {v0, v1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, "N/A"

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    return-void
.end method

.method protected onServiceConnectedOk(Landroid/os/IBinder;)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/tencent/wecarbase/policy/PolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/policy/PolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    const-string v0, "BasePolicyManager"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onServiceConnectOk: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    .line 61
    iget-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    const-string p1, "BasePolicyManager"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onServiceDisconnect"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallBack;)Lcom/tencent/wecarbase/policy/Response;
    .locals 6

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "BasePolicyManager"

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestJudge type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    if-nez v3, :cond_0

    return-object v0

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    iget-object v4, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyListener:Lcom/tencent/wecarbase/policy/IPolicyListener;

    invoke-interface {v3, v4, p1, v5}, Lcom/tencent/wecarbase/policy/PolicyService;->requestJudge(Ljava/lang/String;ILcom/tencent/wecarbase/policy/IPolicyListener;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p0, "BasePolicyManager"

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TSPerf] request id:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost ~ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception p0

    const-string p1, "BasePolicyManager"

    const-string p2, "requestJudge failed:"

    .line 94
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback2;)Lcom/tencent/wecarbase/policy/Response;
    .locals 6

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "BasePolicyManager"

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request judge type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    if-nez v3, :cond_0

    return-object v0

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    iget-object v4, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyListener:Lcom/tencent/wecarbase/policy/IPolicyListener;

    invoke-interface {v3, v4, p1, v5}, Lcom/tencent/wecarbase/policy/PolicyService;->requestJudge(Ljava/lang/String;ILcom/tencent/wecarbase/policy/IPolicyListener;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p0, "BasePolicyManager"

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TSPerf] request2 id:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost ~ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception p0

    const-string p1, "BasePolicyManager"

    const-string p2, "Request judge failed:"

    .line 122
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback3;)Lcom/tencent/wecarbase/policy/Response;
    .locals 6

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "BasePolicyManager"

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request judge type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    if-nez v3, :cond_0

    return-object v0

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    iget-object v4, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyListener:Lcom/tencent/wecarbase/policy/IPolicyListener;

    invoke-interface {v3, v4, p1, v5}, Lcom/tencent/wecarbase/policy/PolicyService;->requestJudge(Ljava/lang/String;ILcom/tencent/wecarbase/policy/IPolicyListener;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 142
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p0, "BasePolicyManager"

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TSPerf] request3 id:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/wecarbase/policy/Response;->getTaskId()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost ~ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception p0

    const-string p1, "BasePolicyManager"

    const-string p2, "Request judge failed:"

    .line 150
    invoke-static {p1, p2, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public stopJudge(I)V
    .locals 6

    .line 162
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mPolicyService:Lcom/tencent/wecarbase/policy/PolicyService;

    invoke-interface {v2, p1}, Lcom/tencent/wecarbase/policy/PolicyService;->stopJudge(I)V

    :cond_0
    const-string v2, "BasePolicyManager"

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TSPerf] stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cost ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BasePolicyManager"

    const-string v2, "Stop judge failed: "

    .line 170
    invoke-static {v1, v2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager;->mCallbackList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    throw v0
.end method
