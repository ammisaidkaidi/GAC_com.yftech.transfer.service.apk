.class public Lcom/tencent/wecarbase/client/model/CodeInfo;
.super Ljava/lang/Object;
.source "CodeInfo.java"


# instance fields
.field private codeType:I

.field private expireTime:J

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeType()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->codeType:I

    return p0
.end method

.method public getExpireTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->expireTime:J

    return-wide v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->ticket:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->codeType:I

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->expireTime:J

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->ticket:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeInfo{ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "codeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarbase/client/model/CodeInfo;->codeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
