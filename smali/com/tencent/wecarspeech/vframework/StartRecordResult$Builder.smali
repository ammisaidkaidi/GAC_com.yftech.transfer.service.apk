.class public Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;
.super Ljava/lang/Object;
.source "StartRecordResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/StartRecordResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bMsg:Ljava/lang/String;

.field private bRet:I

.field private bTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 124
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bRet:I

    const-string v0, ""

    .line 125
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bTaskId:Ljava/lang/String;

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/wecarspeech/vframework/StartRecordResult;
    .locals 2

    .line 130
    new-instance v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult;-><init>(Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;)V

    .line 131
    iget v1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bRet:I

    iput v1, v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mRet:I

    .line 132
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bTaskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mTaskId:Ljava/lang/String;

    .line 133
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bMsg:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setRet(I)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;
    .locals 0

    .line 99
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bRet:I

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;->bTaskId:Ljava/lang/String;

    return-object p0
.end method
