.class public Lcom/tencent/wecarbase/model/LoginResult;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "LoginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/model/LoginResult$Content;
    }
.end annotation


# instance fields
.field private mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/LoginResult$Content;->access$200(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/LoginResult$Content;->access$100(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult;->mContent:Lcom/tencent/wecarbase/model/LoginResult$Content;

    invoke-static {p0}, Lcom/tencent/wecarbase/model/LoginResult$Content;->access$000(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wecarId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/LoginResult;->getWeCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/LoginResult;->getSessionKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
