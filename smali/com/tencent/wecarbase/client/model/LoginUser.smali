.class public Lcom/tencent/wecarbase/client/model/LoginUser;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "LoginUser.java"


# instance fields
.field private codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

.field private loginStatus:Lcom/tencent/wecarbase/client/model/LoginStatus;

.field private userInfo:Lcom/tencent/wecarbase/client/model/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeInfo()Lcom/tencent/wecarbase/client/model/CodeInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

    return-object p0
.end method

.method public getLoginStatus()Lcom/tencent/wecarbase/client/model/LoginStatus;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->loginStatus:Lcom/tencent/wecarbase/client/model/LoginStatus;

    return-object p0
.end method

.method public getUserInfo()Lcom/tencent/wecarbase/client/model/UserInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->userInfo:Lcom/tencent/wecarbase/client/model/UserInfo;

    return-object p0
.end method

.method public setCodeInfo(Lcom/tencent/wecarbase/client/model/CodeInfo;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

    return-void
.end method

.method public setLoginStatus(Lcom/tencent/wecarbase/client/model/LoginStatus;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->loginStatus:Lcom/tencent/wecarbase/client/model/LoginStatus;

    return-void
.end method

.method public setUserInfo(Lcom/tencent/wecarbase/client/model/UserInfo;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LoginUser;->userInfo:Lcom/tencent/wecarbase/client/model/UserInfo;

    return-void
.end method
