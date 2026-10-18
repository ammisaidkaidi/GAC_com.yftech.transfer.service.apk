.class public Lcom/tencent/wecarbase/model/RegisterResult;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "RegisterResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/model/RegisterResult$Content;
    }
.end annotation


# instance fields
.field private mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$400(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$500(Lcom/tencent/wecarbase/model/RegisterResult$Content;)I

    move-result p0

    return p0
.end method

.method public getNonce()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$100(Lcom/tencent/wecarbase/model/RegisterResult$Content;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$300(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$600(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$000(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeCarKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult;->mContent:Lcom/tencent/wecarbase/model/RegisterResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/RegisterResult$Content;->access$200(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wecarId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getWeCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wecarkey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getWeCarKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/RegisterResult;->getUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
