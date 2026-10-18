.class public Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;
.super Ljava/lang/Object;
.source "AsrContext.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mAsrContext:Ljava/lang/String;

.field private mAsrType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsrContext()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrContext:Ljava/lang/String;

    return-object p0
.end method

.method public getAsrType()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrType:I

    return p0
.end method

.method public setAsrContext(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrContext:Ljava/lang/String;

    return-void
.end method

.method public setAsrType(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsrContext{, mAsrType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAsrContext=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;->mAsrContext:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
