.class public Lcom/tencent/wecarbase/client/model/QQBindInfo;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "QQBindInfo.java"


# instance fields
.field private codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

.field private isBind:I

.field private isExpire:I

.field private qqUserInfo:Lcom/tencent/wecarbase/client/model/QQUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeInfo()Lcom/tencent/wecarbase/client/model/CodeInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

    return-object p0
.end method

.method public getQQUserInfo()Lcom/tencent/wecarbase/client/model/QQUserInfo;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->qqUserInfo:Lcom/tencent/wecarbase/client/model/QQUserInfo;

    return-object p0
.end method

.method public isQQBind()Z
    .locals 1

    .line 28
    iget p0, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->isBind:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQQExpire()Z
    .locals 1

    .line 36
    iget p0, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->isExpire:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCodeInfo(Lcom/tencent/wecarbase/client/model/CodeInfo;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->codeInfo:Lcom/tencent/wecarbase/client/model/CodeInfo;

    return-void
.end method

.method public setQQBind(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->isBind:I

    return-void
.end method

.method public setQQExpire(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->isExpire:I

    return-void
.end method

.method public setQQUserInfo(Lcom/tencent/wecarbase/client/model/QQUserInfo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/QQBindInfo;->qqUserInfo:Lcom/tencent/wecarbase/client/model/QQUserInfo;

    return-void
.end method
