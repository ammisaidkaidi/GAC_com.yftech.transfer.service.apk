.class public Lcom/tencent/taes/remote/api/account/bean/RegisterResult;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "RegisterResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;
    }
.end annotation


# instance fields
.field private mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCsrToken()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$200(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$500(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$600(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)I

    move-result p0

    return p0
.end method

.method public getNonce()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$100(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$400(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$700(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$000(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeCarKey()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->mContent:Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;->access$300(Lcom/tencent/taes/remote/api/account/bean/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/tencent/taes/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toWeCarAccount(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;
    .locals 2

    .line 104
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->getWeCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->setWeCarId(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/RegisterResult;->getSessionKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->setSessionKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->setChannel(Ljava/lang/String;)V

    return-object v0
.end method
