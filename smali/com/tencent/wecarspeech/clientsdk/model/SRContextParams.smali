.class public Lcom/tencent/wecarspeech/clientsdk/model/SRContextParams;
.super Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;
.source "SRContextParams.java"


# instance fields
.field public mClearSlotsInStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMultiTurnTmpl:Lcom/tencent/wecarspeech/clientsdk/model/MultiTurnTmpl;

.field public mMutiTurnExtendIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSeriesVerifySemanticInfo:Lcom/tencent/wecarspeech/clientsdk/model/SeriesVerifySemanticInfo;

.field public mSsrContextCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/model/VoiceParams;-><init>()V

    return-void
.end method
