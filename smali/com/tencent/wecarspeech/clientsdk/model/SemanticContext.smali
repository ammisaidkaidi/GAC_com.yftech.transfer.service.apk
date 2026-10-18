.class public Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;
.super Ljava/lang/Object;
.source "SemanticContext.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mCurrentDomain:Ljava/lang/String;

.field private mCurrentIntent:Ljava/lang/String;

.field private mSemanticJsonContext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDomain()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentIntent()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentIntent:Ljava/lang/String;

    return-object p0
.end method

.method public getSemanticJsonContext()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mSemanticJsonContext:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentDomain(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentDomain:Ljava/lang/String;

    return-void
.end method

.method public setCurrentIntent(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentIntent:Ljava/lang/String;

    return-void
.end method

.method public setSemanticJsonContext(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mSemanticJsonContext:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemanticContext{mCurrentDomain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentIntent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mCurrentIntent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSemanticContext=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;->mSemanticJsonContext:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
