.class public Lcom/tencent/taes/remote/api/account/bean/LinkUser;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "LinkUser.java"


# instance fields
.field private linkInfo:Lcom/tencent/taes/remote/api/account/bean/LinkInfo;

.field private linkStatus:Lcom/tencent/taes/remote/api/account/bean/LinkStatus;

.field private vuserInfo:Lcom/tencent/taes/remote/api/account/bean/VUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkInfo()Lcom/tencent/taes/remote/api/account/bean/LinkInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->linkInfo:Lcom/tencent/taes/remote/api/account/bean/LinkInfo;

    return-object p0
.end method

.method public getLinkStatus()Lcom/tencent/taes/remote/api/account/bean/LinkStatus;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->linkStatus:Lcom/tencent/taes/remote/api/account/bean/LinkStatus;

    return-object p0
.end method

.method public getVuserInfo()Lcom/tencent/taes/remote/api/account/bean/VUserInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->vuserInfo:Lcom/tencent/taes/remote/api/account/bean/VUserInfo;

    return-object p0
.end method

.method public setLinkInfo(Lcom/tencent/taes/remote/api/account/bean/LinkInfo;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->linkInfo:Lcom/tencent/taes/remote/api/account/bean/LinkInfo;

    return-void
.end method

.method public setLinkStatus(Lcom/tencent/taes/remote/api/account/bean/LinkStatus;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->linkStatus:Lcom/tencent/taes/remote/api/account/bean/LinkStatus;

    return-void
.end method

.method public setVuserInfo(Lcom/tencent/taes/remote/api/account/bean/VUserInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LinkUser;->vuserInfo:Lcom/tencent/taes/remote/api/account/bean/VUserInfo;

    return-void
.end method
