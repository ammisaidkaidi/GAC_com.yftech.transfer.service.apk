.class public Lcom/tencent/taes/remote/api/account/bean/LoginUser;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "LoginUser.java"


# instance fields
.field private codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

.field private loginStatus:Lcom/tencent/taes/remote/api/account/bean/LoginStatus;

.field private userInfo:Lcom/tencent/taes/remote/api/account/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeInfo()Lcom/tencent/taes/remote/api/account/bean/CodeInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

    return-object p0
.end method

.method public getLoginStatus()Lcom/tencent/taes/remote/api/account/bean/LoginStatus;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->loginStatus:Lcom/tencent/taes/remote/api/account/bean/LoginStatus;

    return-object p0
.end method

.method public getUserInfo()Lcom/tencent/taes/remote/api/account/bean/UserInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->userInfo:Lcom/tencent/taes/remote/api/account/bean/UserInfo;

    return-object p0
.end method

.method public setCodeInfo(Lcom/tencent/taes/remote/api/account/bean/CodeInfo;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

    return-void
.end method

.method public setLoginStatus(Lcom/tencent/taes/remote/api/account/bean/LoginStatus;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->loginStatus:Lcom/tencent/taes/remote/api/account/bean/LoginStatus;

    return-void
.end method

.method public setUserInfo(Lcom/tencent/taes/remote/api/account/bean/UserInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->userInfo:Lcom/tencent/taes/remote/api/account/bean/UserInfo;

    return-void
.end method

.method public toTxAccount(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/TxAccount;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->getLoginStatus()Lcom/tencent/taes/remote/api/account/bean/LoginStatus;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/LoginUser;->getUserInfo()Lcom/tencent/taes/remote/api/account/bean/UserInfo;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->hasLoginUser()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-direct {v1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getHeadimgurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setAvatarUrl(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setUserId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setNickName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->getPhone()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setPhone(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 69
    invoke-virtual {v1, p0}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setLoginType(I)V

    .line 70
    invoke-virtual {v1, p1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setPkgName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isTokenExpired()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->setisTokenExpired(I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
