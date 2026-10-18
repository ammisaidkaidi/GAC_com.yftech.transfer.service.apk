.class public Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;
.super Ljava/lang/Object;
.source "MultiTurnTmpl.java"


# instance fields
.field private mBindedObject:Ljava/lang/String;

.field private mExtraInfo:Ljava/lang/String;

.field private mMultiTurnTmplId:Ljava/lang/String;

.field private mMultiTurnType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindedObject()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mBindedObject:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mExtraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiTurnTmplId()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mMultiTurnTmplId:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiTurnType()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mMultiTurnType:I

    return p0
.end method

.method public setBindedObject(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mBindedObject:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public setMultiTurnTmplId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mMultiTurnTmplId:Ljava/lang/String;

    return-void
.end method

.method public setMultiTurnType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;->mMultiTurnType:I

    return-void
.end method
