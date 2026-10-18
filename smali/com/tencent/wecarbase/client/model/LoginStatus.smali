.class public Lcom/tencent/wecarbase/client/model/LoginStatus;
.super Ljava/lang/Object;
.source "LoginStatus.java"


# instance fields
.field private expireTime:J

.field private isLinked:I

.field private isLogin:J

.field private isLoginUser:I

.field private isLoginVUser:I

.field private isTokenExpired:I

.field private lastLoginTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->expireTime:J

    return-wide v0
.end method

.method public getIsLinked()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLinked:I

    return p0
.end method

.method public getIsLogin()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLogin:J

    return-wide v0
.end method

.method public getIsLoginUser()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginUser:I

    return p0
.end method

.method public getIsLoginVUser()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginVUser:I

    return p0
.end method

.method public getLastLoginTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->lastLoginTime:J

    return-wide v0
.end method

.method public hasLinked()Z
    .locals 1

    .line 74
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLinked:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoginQQ()Z
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLogin:J

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLoginUser()Z
    .locals 1

    .line 66
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginUser:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoginVUser()Z
    .locals 1

    .line 70
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginVUser:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTokenExpired()Z
    .locals 1

    .line 82
    iget p0, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isTokenExpired:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->expireTime:J

    return-void
.end method

.method public setIsLinked(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLinked:I

    return-void
.end method

.method public setIsLogin(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLogin:J

    return-void
.end method

.method public setIsLoginUser(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginUser:I

    return-void
.end method

.method public setIsLoginVUser(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isLoginVUser:I

    return-void
.end method

.method public setIsTokenExpired(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->isTokenExpired:I

    return-void
.end method

.method public setLastLoginTime(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/LoginStatus;->lastLoginTime:J

    return-void
.end method
