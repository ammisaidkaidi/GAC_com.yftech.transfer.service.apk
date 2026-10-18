.class public Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;
.super Ljava/lang/Object;
.source "STrvResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;
    }
.end annotation


# instance fields
.field private interruptReason:I

.field private semantic:Ljava/lang/String;

.field private timeoutMsg:Ljava/lang/String;

.field private type:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    return-void
.end method


# virtual methods
.method public getInterruptReason()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->interruptReason:I

    return p0
.end method

.method public getSemantic()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->semantic:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutMsg()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->timeoutMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    return-object p0
.end method

.method public getWord()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->word:Ljava/lang/String;

    return-object p0
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->word:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STrvResult{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->type:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", semantic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->semantic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", word=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->word:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeoutMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->timeoutMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", interruptReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->interruptReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
