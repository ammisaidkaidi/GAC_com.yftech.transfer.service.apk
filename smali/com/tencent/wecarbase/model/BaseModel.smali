.class public Lcom/tencent/wecarbase/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field public errorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "err"
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private nonce:J

.field private sKey:Ljava/lang/String;

.field private xtraceid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tencent/wecarbase/model/BaseModel;->errorCode:I

    return-void
.end method


# virtual methods
.method public getBNonce()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/BaseModel;->nonce:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/tencent/wecarbase/model/BaseModel;->errorCode:I

    return p0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/wecarbase/model/BaseModel;->info:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tencent/wecarbase/model/BaseModel;->sKey:Ljava/lang/String;

    return-object p0
.end method

.method public getXtraceid()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/wecarbase/model/BaseModel;->xtraceid:Ljava/lang/String;

    return-object p0
.end method

.method public isOk()Z
    .locals 0

    .line 59
    iget p0, p0, Lcom/tencent/wecarbase/model/BaseModel;->errorCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBNonce(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/tencent/wecarbase/model/BaseModel;->nonce:J

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/tencent/wecarbase/model/BaseModel;->errorCode:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/model/BaseModel;->info:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/wecarbase/model/BaseModel;->sKey:Ljava/lang/String;

    return-void
.end method

.method public setXtraceid(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/wecarbase/model/BaseModel;->xtraceid:Ljava/lang/String;

    return-void
.end method
