.class public Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;
.super Ljava/lang/Object;
.source "MultiTurnTmplResult.java"


# instance fields
.field private mIntentName:Ljava/lang/String;

.field private mMtExTimes:I

.field private mMultiTurnExceptionType:I

.field private mMultiTurnTmpl:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

.field private mSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentName()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mIntentName:Ljava/lang/String;

    return-object p0
.end method

.method public getMtExTimes()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMtExTimes:I

    return p0
.end method

.method public getMultiTurnExceptionType()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMultiTurnExceptionType:I

    return p0
.end method

.method public getMultiTurnTmpl()Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMultiTurnTmpl:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

    return-object p0
.end method

.method public getSlots()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Slot;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mSlots:Ljava/util/List;

    return-object p0
.end method

.method public setIntentName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mIntentName:Ljava/lang/String;

    return-void
.end method

.method public setMtExTimes(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMtExTimes:I

    return-void
.end method

.method public setMultiTurnExceptionType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMultiTurnExceptionType:I

    return-void
.end method

.method public setMultiTurnTmpl(Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mMultiTurnTmpl:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

    return-void
.end method

.method public setSlots(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Slot;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmplResult;->mSlots:Ljava/util/List;

    return-void
.end method
