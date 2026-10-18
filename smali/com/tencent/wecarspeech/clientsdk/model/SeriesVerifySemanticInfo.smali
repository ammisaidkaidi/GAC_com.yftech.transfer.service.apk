.class public Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;
.super Ljava/lang/Object;
.source "SeriesVerifySemanticInfo.java"


# instance fields
.field mClarifySemanticIndex:I

.field mIsClarifySemantic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;->mIsClarifySemantic:Z

    return-void
.end method
