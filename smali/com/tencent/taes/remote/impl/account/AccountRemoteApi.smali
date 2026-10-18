.class public Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "AccountRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/account/IAccountApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;
    }
.end annotation


# static fields
.field public static final LOGIN_TYPE_QQ:I = 0x1

.field public static final LOGIN_TYPE_WX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AccountRemoteApi"


# instance fields
.field private mAccountEventListener:Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;

.field private final mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

.field private mClientId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 93
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    new-instance p2, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventListener:Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;

    .line 152
    invoke-static {p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/IAccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/taes/util/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/util/PackageUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    const-string p1, "AccountRemoteApi"

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AccountRemoteApi  string is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->registerClient()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/IAccountListener;)V
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeCarAccount IListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService;->getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/IAccountListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string v0, "mAccountService is null"

    .line 258
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 260
    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/account/listener/IAccountListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "getWeCarAccount exception. "

    .line 264
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private registerClient()V
    .locals 3

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    const-string v0, "AccountRemoteApi"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAccountClient begin! mClientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventListener:Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;

    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->registerClient(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;)V

    const-string p0, "AccountRemoteApi"

    const-string v0, "registerAccountClient success!"

    .line 213
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string v0, "mAccountService is null"

    .line 215
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "registerClient sync, e = "

    .line 218
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeBindAccount(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z
    .locals 4

    const-string v0, "AccountRemoteApi"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBindAccount account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v1, :cond_1

    const-string v1, "AccountRemoteApi"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeBindAccount : uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService;->removeTXAccount(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "AccountRemoteApi"

    const-string p1, "mAccountService is null"

    .line 280
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v1, "removeBindAccount manager is not initialed."

    .line 283
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public appletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 500
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->AppletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "AppletAuth, account manager is not initialed."

    .line 502
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "AppletAuth, account manager is error:"

    .line 506
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "AppletAuth, account manager is error:"

    .line 511
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 396
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "loginWX, account manager is not initialed."

    .line 398
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "loginWX, account manager is error:"

    .line 402
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "loginWX, account manager is error:"

    .line 406
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public binderConnect(Landroid/os/IBinder;)V
    .locals 3

    .line 165
    invoke-static {p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/taes/util/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/taes/util/PackageUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    const-string v0, "AccountRemoteApi"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountRemoteApi  string is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAccountService is null? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->registerClient()V

    .line 169
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 422
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "checkAppletSession, account manager is not initialed."

    .line 424
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "checkAppletSession, account manager is error:"

    .line 428
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "checkAppletSession, account manager is error:"

    .line 432
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccountDebugInfo()Ljava/lang/String;
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 677
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->getAccountDebugInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "getAccountDebugInfo failed: "

    .line 679
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string v0, "account manager is not initialed."

    .line 682
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppletAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 527
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->getAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getAppletAuthStatus, account manager is not initialed."

    .line 529
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletAuthStatus, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getAppletAuthStatus, account manager is error:"

    .line 537
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppletBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 553
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->getBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getAppletBaseCarInfo, account manager is not initialed."

    .line 555
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "getAppletBaseCarInfo, account manager is error:"

    .line 559
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getAppletBaseCarInfo, account manager is error:"

    .line 563
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getAppletUserInfo, account manager is not initialed."

    .line 476
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "getAppletUserInfo, account manager is error:"

    .line 480
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getAppletUserInfo, account manager is error:"

    .line 484
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContract serviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService;->checkContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "Get contract failed: "

    .line 664
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "account manager is not initialed."

    .line 667
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContractAsync(ILcom/tencent/taes/remote/api/account/listener/IContractCallback;)V
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContractAsync serviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", itaiContractCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    new-instance v1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;

    invoke-direct {v1, p0, p2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$2;-><init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;Lcom/tencent/taes/remote/api/account/listener/IContractCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/tencent/taes/remote/api/account/IAccountService;->checkContractAsync(ILcom/tencent/taes/remote/api/account/listener/ITAIContractCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getTaiAccountInfo, account manager is not initialed."

    .line 704
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 706
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    sget-object p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget-object p1, p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IContractCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "checkContractAsync failed: "

    .line 710
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    .line 712
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    sget-object p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget-object p1, p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IContractCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getNonce()J
    .locals 2

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->getNonce()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "account manager is not initialed."

    .line 345
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService;->getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getPhoneNumber, account manager is not initialed."

    .line 450
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "getPhoneNumber, account manager is error:"

    .line 454
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getPhoneNumber, account manager is error:"

    .line 458
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 327
    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->getSessionKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaiAccountInfo(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "AccountRemoteApi"

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaiAccountInfo requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iTAIUserInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 592
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2, p4, p3}, Lcom/tencent/taes/remote/api/account/IAccountService;->getTaiAccountInfo(ILjava/util/Map;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "getTaiAccountInfo, account manager is not initialed."

    .line 594
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getTaiAccountInfo, account manager is error:"

    .line 598
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    :try_start_1
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "getTaiAccountInfo, account manager is error:"

    .line 602
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;
    .locals 2

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 231
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->getWeCarAccountSync()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string v0, "mAccountService is null"

    .line 233
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "getWeCarAccount sync, e = "

    .line 236
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/AccountListener;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/account/listener/AccountListener;->getInnerListener()Lcom/tencent/taes/remote/api/account/listener/IAccountListener;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/IAccountListener;)V

    return-void
.end method

.method public isTAIAuthOk()Z
    .locals 2

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->isTAIAuthOk()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string v0, "isTAIAuthOk, account manager is not initialed, default return true."

    .line 376
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "isTAIAuthOk,error is :"

    .line 379
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public logoutTaiAccount(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "AccountRemoteApi"

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutTaiAccount requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iTAIUserInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    .line 617
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V

    return-void
.end method

.method public logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "AccountRemoteApi"

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutTaiAccount requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wecarid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iTAIUserInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 635
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    move v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/account/IAccountService;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "logoutTaiAccount, account manager is not initialed."

    .line 637
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "logoutTaiAccount, account manager is error:"

    .line 641
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    :try_start_1
    sget-object p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->buildJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "AccountRemoteApi"

    const-string p2, "logoutTaiAccount, account manager is error:"

    .line 645
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAccessCode packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    new-instance v1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;

    invoke-direct {v1, p0, p2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$3;-><init>(Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/tencent/taes/remote/api/account/IAccountService;->refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "refreshAccessCode, account manager is not initialed."

    .line 733
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 735
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    sget-object p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_SERVICE_NOT_START:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget-object p1, p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "refreshAccessCode failed: "

    .line 739
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    .line 741
    sget-object p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->err:I

    sget-object p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->ERROR_CODE_LOCAL_SERVER_ERROR:Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;

    iget-object p1, p1, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi$ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAccessCodeSync packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 751
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService;->refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "mAccountService is null"

    .line 753
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string v0, "refreshAccessCodeSync failed: "

    .line 756
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAccountEventReceiverListener, mAccountEventReceiverListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeBindAccount(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBindAccount Remove account from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetAccount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->removeBindAccount(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeWeCarAccount()Z
    .locals 2

    const-string v0, "AccountRemoteApi"

    const-string v1, "removeWeCarAccount"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    const-string v0, "AccountRemoteApi"

    const-string v1, "removeWeCarAccount : "

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountService;->removeWeCarAccount()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AccountRemoteApi"

    const-string v1, "account manager is not initialed."

    .line 359
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
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

    .line 160
    new-instance p0, Landroid/util/Pair;

    const-string v0, "Account"

    const-class v1, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public unregisterAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
    .locals 3

    const-string v0, "AccountRemoteApi"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAccountEventReceiverListener,mAccountEventReceiverListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountEventReceiverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateSessionKey(Ljava/lang/String;J)V
    .locals 1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v0, :cond_0

    .line 312
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/account/AccountRemoteApi;->mAccountService:Lcom/tencent/taes/remote/api/account/IAccountService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/account/IAccountService;->updateSessionKey(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p0, "AccountRemoteApi"

    const-string p1, "mAccountService is null"

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRemoteApi"

    const-string p2, "account manager is not initialed."

    .line 317
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
