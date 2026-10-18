.class public Lcom/tencent/taes/remote/api/account/bean/LoginStatus;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "LoginStatus.java"


# instance fields
.field private expireTime:J

.field private isLinked:I

.field private isLogin:J

.field private isLoginUser:I

.field private isLoginVUser:I

.field private isTokenExpired:I

.field private lastLoginTime:J

.field private nowLoginUserId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->expireTime:J

    return-wide v0
.end method

.method public getIsLinked()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLinked:I

    return p0
.end method

.method public getIsLogin()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLogin:J

    return-wide v0
.end method

.method public getIsLoginUser()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginUser:I

    return p0
.end method

.method public getIsLoginVUser()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginVUser:I

    return p0
.end method

.method public getIsTokenExpired()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isTokenExpired:I

    return p0
.end method

.method public getLastLoginTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->lastLoginTime:J

    return-wide v0
.end method

.method public getNowLoginUserId()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->nowLoginUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public hasLinked()Z
    .locals 1

    .line 108
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLinked:I

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

    .line 112
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLogin:J

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

    .line 100
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginUser:I

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

    .line 104
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginVUser:I

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

    .line 116
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isTokenExpired:I

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

    .line 88
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->expireTime:J

    return-void
.end method

.method public setIsLinked(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLinked:I

    return-void
.end method

.method public setIsLogin(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLogin:J

    return-void
.end method

.method public setIsLoginUser(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginUser:I

    return-void
.end method

.method public setIsLoginVUser(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isLoginVUser:I

    return-void
.end method

.method public setIsTokenExpired(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->isTokenExpired:I

    return-void
.end method

.method public setLastLoginTime(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->lastLoginTime:J

    return-void
.end method

.method public setNowLoginUserId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->nowLoginUserId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LoginStatus;->userId:Ljava/lang/String;

    return-void
.end method
