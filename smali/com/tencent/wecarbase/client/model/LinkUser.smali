.class public Lcom/tencent/wecarbase/client/model/LinkUser;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "LinkUser.java"


# instance fields
.field private linkInfo:Lcom/tencent/wecarbase/client/model/LinkInfo;

.field private linkStatus:Lcom/tencent/wecarbase/client/model/LinkStatus;

.field private vuserInfo:Lcom/tencent/wecarbase/client/model/VUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkInfo()Lcom/tencent/wecarbase/client/model/LinkInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->linkInfo:Lcom/tencent/wecarbase/client/model/LinkInfo;

    return-object p0
.end method

.method public getLinkStatus()Lcom/tencent/wecarbase/client/model/LinkStatus;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->linkStatus:Lcom/tencent/wecarbase/client/model/LinkStatus;

    return-object p0
.end method

.method public getVuserInfo()Lcom/tencent/wecarbase/client/model/VUserInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->vuserInfo:Lcom/tencent/wecarbase/client/model/VUserInfo;

    return-object p0
.end method

.method public setLinkInfo(Lcom/tencent/wecarbase/client/model/LinkInfo;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->linkInfo:Lcom/tencent/wecarbase/client/model/LinkInfo;

    return-void
.end method

.method public setLinkStatus(Lcom/tencent/wecarbase/client/model/LinkStatus;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->linkStatus:Lcom/tencent/wecarbase/client/model/LinkStatus;

    return-void
.end method

.method public setVuserInfo(Lcom/tencent/wecarbase/client/model/VUserInfo;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkUser;->vuserInfo:Lcom/tencent/wecarbase/client/model/VUserInfo;

    return-void
.end method
