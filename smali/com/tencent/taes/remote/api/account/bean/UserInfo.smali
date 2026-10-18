.class public Lcom/tencent/taes/remote/api/account/bean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private headimgurl:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getHeadimgurl()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->headimgurl:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->userid:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setHeadimgurl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->headimgurl:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->userid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "headimgurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->headimgurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/UserInfo;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
