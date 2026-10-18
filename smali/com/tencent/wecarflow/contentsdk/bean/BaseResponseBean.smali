.class public Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;
.super Ljava/lang/Object;
.source "BaseResponseBean.java"


# instance fields
.field protected errcode:I

.field protected id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->id:I

    return p0
.end method

.method public isNewUser()Z
    .locals 1

    .line 60
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    const/16 v0, 0x35c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQQExpired()Z
    .locals 1

    .line 44
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    const/16 v0, 0x320

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 36
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWxExpired()Z
    .locals 1

    .line 52
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    const/16 v0, 0x321

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->id:I

    return-void
.end method

.method public shouldBind()Z
    .locals 1

    .line 68
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    const/16 v0, 0x35d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errcode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;->errcode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
