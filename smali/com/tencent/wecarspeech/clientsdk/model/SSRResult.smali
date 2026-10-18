.class public Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;
.super Ljava/lang/Object;
.source "SSRResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;
    }
.end annotation


# instance fields
.field private interruptReason:I

.field private semantic:Ljava/lang/String;

.field private seriesSession:Z

.field private timeoutMsg:Ljava/lang/String;

.field private type:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    return-void
.end method


# virtual methods
.method public getInterruptReason()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->interruptReason:I

    return p0
.end method

.method public getSemantic()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->semantic:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutMsg()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->timeoutMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    return-object p0
.end method

.method public isSeriesSession()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->seriesSession:Z

    return p0
.end method

.method public setSeriesSession(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->seriesSession:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSRResult{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->semantic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeoutMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->timeoutMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", interruptReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->interruptReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seriesSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->seriesSession:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
