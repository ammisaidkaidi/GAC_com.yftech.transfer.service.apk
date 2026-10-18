.class public Lcom/tencent/wecarbase/client/model/AppTicket;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "AppTicket.java"


# instance fields
.field private appAuthInfo:Lcom/tencent/wecarbase/client/model/AppAuthInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppAuthInfo()Lcom/tencent/wecarbase/client/model/AppAuthInfo;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/AppTicket;->appAuthInfo:Lcom/tencent/wecarbase/client/model/AppAuthInfo;

    return-object p0
.end method

.method public setAppAuthInfo(Lcom/tencent/wecarbase/client/model/AppAuthInfo;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/AppTicket;->appAuthInfo:Lcom/tencent/wecarbase/client/model/AppAuthInfo;

    return-void
.end method
