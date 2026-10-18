.class public Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;
.super Ljava/lang/Object;
.source "SemanticFilterResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final SR_RESULT:I = 0x1

.field public static final UNHOLD_RESULT:I = 0x3

.field public static final WAKE_UP_RESULT:I = 0x2


# instance fields
.field private hitWord:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->result:I

    return-void
.end method


# virtual methods
.method public getHitWord()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->hitWord:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->result:I

    return p0
.end method

.method public setHitWord(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->hitWord:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->result:I

    return-void
.end method
