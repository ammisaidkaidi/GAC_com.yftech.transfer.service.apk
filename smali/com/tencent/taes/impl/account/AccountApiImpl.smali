.class public Lcom/tencent/taes/impl/account/AccountApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "AccountApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/account/IAccountApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountApiImpl"


# instance fields
.field private mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    .line 34
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Account"

    new-instance v2, Lcom/tencent/taes/impl/account/AccountApiImpl$1;

    invoke-direct {v2, p0}, Lcom/tencent/taes/impl/account/AccountApiImpl$1;-><init>(Lcom/tencent/taes/impl/account/AccountApiImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->registerCompLoadListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/TAESCommonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/impl/account/AccountApiImpl;)Lcom/tencent/taes/remote/api/account/IAccountApi;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/taes/impl/account/AccountApiImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getInstance()Lcom/tencent/taes/framework/TAESFrameworkManager;

    move-result-object v0

    const-string v1, "Account"

    const-class v2, Lcom/tencent/taes/remote/api/account/IAccountApi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/taes/remote/api/account/IAccountApi;

    iput-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lcom/tencent/taes/impl/account/AccountApiImpl;->TAG:Ljava/lang/String;

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

    .line 56
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    return-object p0
.end method


# virtual methods
.method public appletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->appletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getAccountDebugInfo()Ljava/lang/String;
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getAccountDebugInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getAppletAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getAppletAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public getAppletBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getAppletBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public getContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;
    .locals 1

    .line 248
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContractAsync(ILcom/tencent/taes/remote/api/account/listener/IContractCallback;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getContractAsync(ILcom/tencent/taes/remote/api/account/listener/IContractCallback;)V

    :cond_0
    return-void
.end method

.method public getNonce()J
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getNonce()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    :cond_0
    return-void
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getSessionKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaiAccountInfo(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 1
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

    .line 230
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getTaiAccountInfo(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getWeCarAccount()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/AccountListener;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/AccountListener;)V

    :cond_0
    return-void
.end method

.method public isTAIAuthOk()Z
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->isTAIAuthOk()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logoutTaiAccount(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 1
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

    .line 269
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/account/IAccountApi;->logoutTaiAccount(ILjava/util/Map;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V
    .locals 8
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

    .line 239
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/taes/remote/api/account/IAccountApi;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V
    .locals 1

    .line 287
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IRefreshAccessCodeCallback;)V

    :cond_0
    return-void
.end method

.method public refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->registerAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V

    :cond_0
    return-void
.end method

.method public removeBindAccount(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountApi;->removeBindAccount(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeWeCarAccount()Z
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/account/IAccountApi;->removeWeCarAccount()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountApi;->unregisterAccountEventReceiverListener(Lcom/tencent/taes/remote/api/account/listener/IAccountClientEventListener;)V

    :cond_0
    return-void
.end method

.method public updateSessionKey(Ljava/lang/String;J)V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->getAccountApi()Lcom/tencent/taes/remote/api/account/IAccountApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl;->mAccountApi:Lcom/tencent/taes/remote/api/account/IAccountApi;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/account/IAccountApi;->updateSessionKey(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
