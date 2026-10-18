.class public Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "QQBindInfo.java"


# instance fields
.field private codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

.field private isBind:I

.field private isExpire:I

.field private qqUserInfo:Lcom/tencent/taes/remote/api/account/bean/QQUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeInfo()Lcom/tencent/taes/remote/api/account/bean/CodeInfo;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

    return-object p0
.end method

.method public getQQUserInfo()Lcom/tencent/taes/remote/api/account/bean/QQUserInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->qqUserInfo:Lcom/tencent/taes/remote/api/account/bean/QQUserInfo;

    return-object p0
.end method

.method public isQQBind()Z
    .locals 1

    .line 27
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->isBind:I

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

    .line 35
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->isExpire:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCodeInfo(Lcom/tencent/taes/remote/api/account/bean/CodeInfo;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->codeInfo:Lcom/tencent/taes/remote/api/account/bean/CodeInfo;

    return-void
.end method

.method public setQQBind(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->isBind:I

    return-void
.end method

.method public setQQExpire(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->isExpire:I

    return-void
.end method

.method public setQQUserInfo(Lcom/tencent/taes/remote/api/account/bean/QQUserInfo;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/QQBindInfo;->qqUserInfo:Lcom/tencent/taes/remote/api/account/bean/QQUserInfo;

    return-void
.end method
